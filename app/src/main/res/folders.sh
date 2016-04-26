#! /usr/bin/env bash

for dpi in ldpi mdpi hdpi xhdpi xxhdpi xxxhdpi; do
  for orient in port land; do
    for size in small normal large xlarge; do
      folder="drawable-$size-$orient-$dpi"
      echo "-----" $folder "-----"

      rm -rf $folder
      mkdir $folder

      cp "drawable-$dpi/solo_dpi.png" $folder/dpi.png
      cp "drawable-$orient/solo_orient.png" $folder/orient.png
      cp "drawable-$size/solo_size.png" $folder/size.png
    done
  done
done
