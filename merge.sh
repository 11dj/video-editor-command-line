#!/bin/bash

###### for multiple folder 
# run() {
#   # echo $1
#   target_path=$1
#   echo $target_path
#   ls -d ./"$target_path"/*/ | sed 's/.$//' > "$target_path"/folder_list.txt
#   # ls -d */ | sed 's/.$//' ./video
#   # ls -d */ | sed 's/.$//' > folder_list.txt
#   mkdir "$target_path"/output
#   hours_list=$(cat ""$target_path"/folder_list.txt")
#   for hour in $hours_list
#   do
#       # find "$hour" -type f -name '*.mp4' | sort
#       # find "$hour" -type f -name '*.mp4' | sort > ./output/"$hour"x.txt

#       currentdir=$(pwd)
#       find "$hour" -type f -name '*.mp4' | sort | sed -e "s#^#file '$target_path/$currentdir/#" -e "s/$/'/"
#       # find "$hour" -type f -name '*.mp4' | sort | sed -e "s#^#file '$target_path/$currentdir/#" -e "s/$/'/" ./output/"$hour".txt 

      
#       # sed -e "s#^#file '$currentdir/#" -e "s/$/'/" ./output/"$hour"x.txt > ./output/$hour.txt
#       # rm ./output/"$hour"x.txt

#       ffmpeg -f concat -safe 0 -i ."$target_path/output/$hour.txt -c copy ."$target_path"/output/$hour.mov
#       # rm ./output/"$hour".txt
#   done
#   rm "$target_path"/folder_list.txt
# }

# run $1

target_path=$1
find ./$target_path -type f -name '*.mp4' | sort | sed -e "s#^#file '$(pwd)/#" -e "s/$/'/" > list.txt
ffmpeg -f concat -safe 0 -i list.txt -c copy output.mov