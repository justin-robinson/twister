#!/usr/bin/env zsh

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
    sideIndex=`jot -r 1 1 ${sidesLength}`
    bodyPartIndex=`jot -r 1 1 ${bodyPartsLength}`
    colorIndex=`jot -r 1 1 ${colorsLength}`

    # use random indexes to get a random element
    side=${sides[sideIndex]}
    bodyPart=${bodyParts[bodyPartIndex]}
    color=${colors[colorIndex]}

    # say the command
    command="$side $bodyPart $color"
    echo $command
    say $command

    # wait 30 seconds
    sleep 1s
done