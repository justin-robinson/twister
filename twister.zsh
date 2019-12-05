#!/bin/bash

sides=('left' 'right')
bodyParts=('hand' 'foot')
colors=('red' 'blue' 'green' 'yellow')

# get length of all arrays
sidesLength=${#sides[@]}
bodyPartsLength=${#bodyParts[@]}
colorsLength=${#colors[@]}

# say a command every 30 seconds
while true; do

    # get a random index into each array
    sideIndex=`expr $RANDOM % $sidesLength`
    bodyPartIndex=`expr $RANDOM % $bodyPartsLength`
    colorIndex=`expr $RANDOM % $colorsLength`

    # use random indexes to get a random element
    side=${sides[sideIndex]}
    bodyPart=${bodyParts[bodyPartIndex]}
    color=${colors[colorIndex]}

    # say the command
    say $side $bodyPart $color

    # wait 30 seconds
    sleep 30s
done