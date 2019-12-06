#!/usr/bin/env zsh

# check that the say command exists
if ! type -p "say" > /dev/null; then
  echo "say command not found. exiting"
  exit 1
fi

# check that the jot command exists
if ! type -p "jot" > /dev/null; then
  echo "jot command not found. exiting"
  exit 2
fi

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