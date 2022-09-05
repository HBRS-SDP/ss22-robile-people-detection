# SDP
Software Development Project: People Detection
This project is built off of: https://github.com/angusleigh/leg_tracker, which is in turn based on http://wiki.ros.org/leg_detector. 
See the parent repositories for additional details on how the leg detection works and parameters that can be tuned.

# Prerequisites
Pykalman and Scipy are required to run this package.
python3 -m pip install scipy
python3 -m pip install pykalman

# Steps for use

1. Clone the git repo to your computer: 
2. Open a terminal window and navigation to where you cloned the repo.
3. Navigate to the catkin workspace with: cd catkin_ws
4. Once inside the catkin workspace, clean it with: catkin clean
5. Catkin clean will prompt you with yN. You need to clean the entire workspace, including the devel and log folders, so type: y
6. Once the workspace is cleaned you need to build it. You can use: catkin build. If this tfails to build, catkin clean the workspace, then try: catkin_make.
7. After the workspace is built, you need to source the setup file with. You have to be within the catkin_ws folder for this to work. Type: source devel/setup.bash
8. To launch the leg tracker package (which allows for people detection), navigate to the demos folder with: cd src/leg_tracker/launch/demos
9. You can launch one of the demos to view how the package works with a rosbag, such as: roslaunch positive_training_static.launch
10. To just launch the leg tracker so that it works on live LiDAR data, type: roslaunch

Using RVIZ
1. RVIZ will automatically launch when one of the launch files is run, shown by the line: node pkg="rviz" type="rviz" name="rviz"
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

# How to retrain the leg detector
  
# How to make a new rosbag dataset 
