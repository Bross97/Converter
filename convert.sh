#!/bin/bash

for directory in *;
 do for file in $(ls $directory);
  do  
   if [[ $file == *".HEIC"* ]]; then
   
    newname="${file/.HEIC/.jpg}"

    echo $newname
    heif-convert $directory/$file $directory/$newname

    rm $directory/$file

   fi;
 done;
done;
