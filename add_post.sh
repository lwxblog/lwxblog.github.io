#!/bin/bash

d=`date '+%Y-%m-%d'`

read -p "Post title: " title

newTitle=`echo ${title,,} | tr ' ' '-'`


cat << EOF > ./_posts/$d-${newTitle}.md
---
layout: post
cover: 'assets/images/cover2.jpg'
navigation: True
title: Jekyll For Blogging
date: 2020-03-09 00:00:00
tags: general
subclass: 'post general'
logo: 'assets/images/ghost.png'
author: lwx
categories: lwx
---
Start Typing here.
EOF
