#!/bin/bash

maxlen=41

if [ ! -x /usr/bin/cmus-remote ];
then
  echo "cmus is not installed."
  exit
fi

result=$( cmus-remote -Q 2> /dev/null )
artist=$( echo "$result" | grep "tag artist " | cut -d " " -f 3- )
# the following line uses album artist tag instead of artist i bet you didn't
# know that
# artist=$( echo $result | grep "tag albumartist " | cut -d " " -f 3- )
title=$( echo "$result" | grep "tag title " | cut -d " " -f 3- )
filename=$( echo "$result" | grep "file " | cut -d " " -f 2- )
vol=$( echo "$result" | grep "set vol_left " | cut -d " " -f 3- )

# Generate output string
if [ -n "$title" ];
then
  output="$title by $artist"
elif [ -n "$filename" ];
then
  output="${filename##*/}"
else
  output=""
fi

# Splice output if it is too long
if [ ${#output} -ge ${maxlen} ]
then
  output="$( echo $output | colrm ${maxlen} )…"
fi

# Echo the crap of out it
if [ -n "$output" ]; then
  echo " ${output} [${vol}%]"
fi

