#! /usr/bin/env bash

for dpi in ldpi mdpi hdpi xhdpi xxhdpi xxxhdpi; do
  for land in port land; do
    for size in small medium large; do
      folder="drawable-$dpi-$land-$size"
      echo $folder
    done
  done
done
