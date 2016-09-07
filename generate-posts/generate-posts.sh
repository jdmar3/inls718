#!/bin/bash
INPUT=sessions.tsv
OLDIFS=$IFS
IFS=$'\t'
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read SESSION  DATE  CATEGORY  TITLE TAGS
do
echo "--- 
layout: post 
session: '$SESSION' 
date: '$DATE' 
category: '$CATEGORY' 
title: '$TITLE' 
tags: [$TAGS] 
--- 

<excerpt/>" > $DATE-`echo "$TITLE" | iconv -t ascii//TRANSLIT | sed -r s/[^a-zA-Z0-9]+/-/g | sed -r s/^-+\|-+$//g | tr A-Z a-z`.md
done < $INPUT
IFS=$OLDIFS