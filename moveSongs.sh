#!/bin/bash 

for file in *.mp3;
do  
    echo $file
    echo
    folderName=`echo $file | awk -F - '{print $1}'`
    folderName=`echo "$folderName" | awk '{$1=$1};1'`
    lowerFolderName=`echo "$folderName" | awk '{print tolower($0)}'`

    if [ -d "$folderName" ]
    then
    mv "$file" "$folderName"
    echo file $file moved to $folderName
    echo
    elif [ -d "$lowerFolderName" ]
    then
    mv "$file" "$lowerFolderName"
    echo file $file moved to $lowerFolderName
    echo
    else
    echo nok
    fi
done
