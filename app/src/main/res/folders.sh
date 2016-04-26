#! /usr/bin/env bash

for dpi in ldpi mdpi hdpi xhdpi xxhdpi xxxhdpi; do
  for land in port land; do
    for size in small medium large; do
      folder="drawable-$dpi-$land-$size"
      echo "-----" $folder "-----"

      rm -rf $folder
      mkdir $folder

      cp "drawable-$dpi/solo_dpi.png" $folder/dpi.png
      cp "drawable-$land/solo_orient.png" $folder/orient.png
      cp "drawable-$size/solo_size.png" $folder/size.png
    done
  done
done
