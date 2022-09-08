# SDP
Software Development Project: People Detection.

This project is built off of: https://github.com/angusleigh/leg_tracker, which is in turn based on http://wiki.ros.org/leg_detector.

See the parent repositories for additional details on how the leg detection works and parameters that can be tuned.

# Prerequisites
Pykalman and Scipy are required to run this package.
- python3 -m pip install scipy
- python3 -m pip install pykalman

# Steps for use

1. Clone the git repo to your computer
2. Open a terminal window and navigation to where you cloned the repo
3. Navigate to the catkin workspace with: cd catkin_ws
4. Once inside the catkin workspace, clean it with: catkin clean
5. Catkin clean will prompt you with yN. You need to clean the entire workspace, including the devel and log folders, so type: y
6. Once the workspace is cleaned you need to build it. You can use: catkin build. If this fails to build, catkin clean the workspace, then try: catkin_make
7. After the workspace is built, you need to source the setup file with. You have to be within the catkin_ws folder for this to work. Type: source devel/setup.bash
8. To launch the leg tracker package (which allows for people detection), navigate to the demos folder with: cd src/leg_tracker/launch/demos
9. You can launch one of the demos to view how the package works with a rosbag, such as: roslaunch positive_training_static.launch
10. To just launch the leg tracker so that it works on live LiDAR data, type: roslaunch

Using RVIZ
1. RVIZ will automatically launch when one of the launch files is running, shown by the line: node pkg="rviz" type="rviz" name="rviz"
    args="-d $(find leg_tracker)/rosbags/demos/rviz/positive_static.rviz"
2. The RVIZ settings used are shown in positive_static.rviz. They can be changed by changing the .rviz file, or by manually configuring RVIZ when it launches.
3. To manually configure RVIZ, first run a launch file and wait for RVIZ to open. If the LiDAR points and visualization markers are not appearing, but the laser scan and markers appear on the left-side pane in RVIZ, then the laser scan and visualization markers will need to be readded.
4. Select the laser scan and markers topics in the left-side pane and delete them.
5. Click "Add topic" at the bottom left. Go to "by topic", and select the laser scan topic.
6. Click "Add topic" at the bottom left. Go to "by topic", and select the visualization marker topic.
7. The LiDAR points and visualization markers should then be visible in RVIZ. If an error is thrown regarding the frames, or if the LiDAR and visualization markers still do not appear, check the following section.

If the LiDAR points and visualization markers are not appearing, then you may have to make some changes to the launch file.
1. Open the launch file with the editor of your choice.
2. Enter the topic name for your laser scan data in param name='scan_topic" value='/scan_filtered" . Replace /scan_filtered with the name of your laser scan topic.
3. Enter the base frame being used by your LiDAR in param name="fixed_frame" value="base_laser". Replace base_laser with the base frame you are using.
4. Enter the desired frequency in param name="scan_frequency" value="15", replacing 15 with your desired value. This value is in Hertz, and has the possible options of 7.5Hz, 10Hz, and 15Hz. Other options may require retraining the leg detector.
5. If you do not have your laser scan topic name or base frame data, you can check it via the terminal. Open the terminal and type: rostopic list. Find the name of your laser scan topic within the list, often /scan or /scan_filtered on the Robile. 
6. To find the base frame of the topic, enter: rostopic echo topic_name -n 1. Replace topic_name with the name of your scan topic. This will echo the first message from the topic. Scroll to the top of the message, where the header is. The frame_id paramter will show the name of the base frame for the scan topic. The minimum and maximum angles of the LiDAR view are also given here in radians (as well as the angle increment), and the minimum and maximum range of the LiDAR is given in meters. 

# Output of the package
The package publishes multiple topics.

/visualization_marker : This publishes the visualization markers, which represent people detected from pairs of legs. The markers are mainly used by RVIZ. The markers share a base frame, given by frame_id, and each has a position given in meters with (x,y,z) coordinates. The orientation is always zero because the package cannot detect which way the person is facing from leg positions.

/people_tracked : This publishes the velocities and positions of the tracked people. Each person has a pose and orientation, as well as an ID number. The ID numbers can be used to track individual people. 

/detected_leg_clusters : This publishes all of the detected leg clusters. Each has an (x,y,z) position and a confidence. 

More details for each topic can be found by running one of the demo files, such as catkin_ws/src/leg_tracker/launch/demos/demo_stationary_simple_environment.launch. Once the demo is running, open a terminal, navigate to the catkin_ws folder, and type: source devel/setup.bash. To see all the ros topics, run: rostopic list. You can view 1 message from a topic by running: rostopic echo topic_name -n 1. If you want to see all messages, omit the -n 1. The header and contents of the message should be self explanatory, but details can be found in the parent repositories. 

# Tunable parameters
To add a parameter to the launch file, use the following format: 

<param name="parameter_name" value="parameter_value" />

Replace parameter_name and parameter_value with the appropriate names and values. Useful parameters are described below.

Markup : * max_detected_clusters
              * The maximum number of clusters that will be tracked. It does closest to farthest, not cluster size. The default value is -1, for unlimited clusters.
          * forest_file
              * 


# How to retrain the leg detector
To retrain the leg detector, a new dataset must be made for the environment that the robot will be working in (see section below). Once the dataset is made, you will need to edit extract_positive_training_clusters_PositiveStatic.launch. It can be found in /catkin_ws/src/leg_tracker/launch/training. Two parameters need to be set, the minimum number of points per cluster in line 9 and the euclidian distance between points in a cluster in line 10. These can often be left at the default values, or changed if tighter restrictions on the cluster definition are desired. 

The load_bag_file and save_bag_file parameters should be changed to the names and locations of all the positive rosbags from the new dataset. The scan_topic and base_laser parameters may also need to be changed if the scan topic used during the recording of the rosbags is not /scan_filtered, or if the base frame of the LiDAR is not base_laser. 

The next set of parameters to change is the area in which ONLY legs are present within the rosbags. This can be defined using a set of X and Y coordinates, which is the fault, or by setting a minimum angle, a maximum angle, and a maximum distance. These values should be the same as the area used when the new dataset was recorded. 

Once a node is made for every positive rosbag, the extract_positive_training_clusters_PositiveStatic.launch file can be run. This will generate a new set of annotated rosbags in the locations specified within the save_bag_file parameters in the launch file. Open each output rosbag and step through it to ensure that the legs and people are properly detected.

To generate a new yaml file containing the retrained parameters of the detector, the train_leg_detector.launch within /catkin_ws/src/leg_tracker/launch/training/ will have to be edited. First, change the save_file parameter to the desired path and file name. Then, change all the pos_bag arguments to the paths and file named of the annotated rosbags generated by extract_positive_training_clusters_PositiveStatic.launch. The pos_scan_topic must REMAIN as /training_scan. The neg_bag arguments must be changed to the locations and file names of the negative rosbags from the dataset. The neg_scan_topic_1 must be set to the scan topic used in the negative rosbags. 

After these changes are made, run train_leg_detector.launch. This will generate a new yaml file containing the new parameters for the detector. These new parameters can be used by changing the yaml file name and path in any of the other launch files, such as the forest_file parameter in /catkin_ws/src/leg_tracker/launch/demos/positive_training_static.launch. 
  
# How to make a new rosbag dataset 

To make a new rosbag dataset, positive and negative rosbags will need to be recorded.

To record positive rosbags, setup the robot in a position where there is a large open area in front of the LiDAR. Mark out an arc or rectangle in which only legs, and no other objects, will appear. Make sure to record the dimensions of this box (minimum X, maximum X, minimum Y, maximum Y) or arc (minimum angle, maximum angle, maximum distance) for retraining the leg detector. 

Record approximately 10 rosbags of 1 minute length each. During each recording, walk around inside the marked area in front of the LiDAR. When viewing the rosbags in RVIZ, all data points within the bounding box/arc should belong to legs. 

After recording the positive rosbags, record a set of 10 negative rosbags, 1 minute each. This is done by moving the robot around rooms with no legs present. Furniture and objects are ideal, but ensure that no legs appear in any of the negative rosbags. These rosbags serve as negative examples for the leg detector, allowing it to distinguish between human legs and legs belonging to furniture such as chairs and tables. 

Once the positive and negative rosbags are recorded, the detector can be retrained by following the steps in the section above.
