#!/usr/bin/env sh
# generated from catkin/cmake/template/local_setup.sh.in

# since this file is sourced either use the provided _CATKIN_SETUP_DIR
# or fall back to the destination set at configure time
<<<<<<< HEAD
: ${_CATKIN_SETUP_DIR:=/home/kunal/MAS/Sem_2/SDP/repo/official/ss22-robile-people-detection/catkin_ws/install}
=======
: ${_CATKIN_SETUP_DIR:=/home/sam/Documents/HS-BRS/SDP/ss22-robile-people-detection/catkin_ws/install}
>>>>>>> d990f7bc638fef2102570700d7c941d5fd9e4f7c
CATKIN_SETUP_UTIL_ARGS="--extend --local"
. "$_CATKIN_SETUP_DIR/setup.sh"
unset CATKIN_SETUP_UTIL_ARGS
