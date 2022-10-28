#!/bin/bash

# SET PATHS HERE
BLENDER_PATH=/root/blenderpath

# BUNLED PYTHON
BUNDLED_PYTHON=${BLENDER_PATH}/2.90/python
# export PYTHONPATH=${BUNDLED_PYTHON}/lib/python3.4:${BUNDLED_PYTHON}/lib/python3.4/site-packages
# export PYTHONPATH=${BUNDLED_PYTHON}:${PYTHONPATH}

for ((idx = 0; idx < 10863; idx++ )) # 10863
do 
    for ((step = 0; step < 659; step++)) # 659
    do
        # Main part 1
        $BLENDER_PATH/blender -b -t 1 -P main_part1-image.py -- --idx $idx --use_split train --step $step
    done
done
