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
sideEmojis=(⬅️ ➡️)
bodyParts=('hand' 'foot')
bodyPartsEmojis=(🤚 🦶)
colors=('red' 'blue' 'green' 'yellow')
colorEmojis=(🔴 🔵 🟢 🟡)

# get length of all arrays
sidesLength=${#sides[@]}
bodyPartsLength=${#bodyParts[@]}
colorsLength=${#colors[@]}

# say a command every 30 seconds
commandCount=0
while true; do

    # get a random index into each array
    sideIndex=`jot -r 1 1 ${sidesLength}`
    bodyPartIndex=`jot -r 1 1 ${bodyPartsLength}`
    colorIndex=`jot -r 1 1 ${colorsLength}`

    # use random indexes to get a random element
    side=${sides[sideIndex]}
    sideEmoji=${sideEmojis[sideIndex]}
    bodyPart=${bodyParts[bodyPartIndex]}
    bodyPartEmoji=${bodyPartsEmojis[bodyPartIndex]}
    color=${colors[colorIndex]}
    colorEmoji=${colorEmojis[colorIndex]}

    # print and say the command
    (( commandCount+=1 ))
    echo $commandCount"." $sideEmoji $bodyPartEmoji$colorEmoji
    say $side $bodyPart $color

    # wait 30 seconds
    sleep 1s
done