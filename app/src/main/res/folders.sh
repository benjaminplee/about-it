#! /usr/bin/env bash

dpis="ldpi mdpi hdpi xhdpi xxhdpi xxxhdpi"
orients="port land"
sizes="small normal large xlarge"

echo Setting up defaults
mkdir -p drawable
curl -s -o "drawable/dpi.png" 'http://placeholdit.imgix.net/~text?txtsize=32&txt=%3f+dpi&w=200&h=200'
curl -s -o "drawable/solo_dpi.png" 'http://placeholdit.imgix.net/~text?txtsize=32&txt=%3f+dpi&w=200&h=200'
curl -s -o "drawable/orient.png" 'http://placeholdit.imgix.net/~text?txtsize=32&txt=%3f+orient&w=200&h=200'
curl -s -o "drawable/solo_orient.png" 'http://placeholdit.imgix.net/~text?txtsize=32&txt=%3f+orient&w=200&h=200'
curl -s -o "drawable/size.png" 'http://placeholdit.imgix.net/~text?txtsize=32&txt=%3f+size&w=200&h=200'
curl -s -o "drawable/solo_size.png" 'http://placeholdit.imgix.net/~text?txtsize=32&txt=%3f+size&w=200&h=200'

echo Setting up simple qualifier folders and resources
for dpi in $dpis; do
  url="http://placeholdit.imgix.net/~text?txtsize=32&txt=$dpi&w=200&h=200"
  folder="drawable-$dpi"
  mkdir -p $folder
  curl -s -o "$folder/solo_dpi.png" "$url"
done
for orient in $orients; do
  url="http://placeholdit.imgix.net/~text?txtsize=32&txt=$orient&w=200&h=200"
  folder="drawable-$orient"
  mkdir -p $folder
  curl -s -o "$folder/solo_orient.png" "$url"
done
for size in $sizes; do
  url="http://placeholdit.imgix.net/~text?txtsize=32&txt=$size&w=200&h=200"
  folder="drawable-$size"
  mkdir -p $folder
  curl -s -o "$folder/solo_size.png" "$url"
done

echo Setting up specific resource qualifier folders
for dpi in $dpis; do
  for orient in $orients; do
    for size in $sizes; do
      folder="drawable-$size-$orient-$dpi"

      mkdir -p $folder

      cp "drawable-$dpi/solo_dpi.png" $folder/dpi.png
      cp "drawable-$orient/solo_orient.png" $folder/orient.png
      cp "drawable-$size/solo_size.png" $folder/size.png
    done
  done
done
