# Jekyll-Header
A simple script to create a header for Jekyll. 

### Installation
```
$ cabal sandbox init
$ cabal install 
$ cabal build
$ cp dist/build/Jekyll-Header/Jekyll-Header /usr/bin
$ Jekyll-Header "My Awesome Article"
---
comments: true
layout: post
title: My Awesome Article
date: 2015-6-7
---

Jekyll-Header "My Awesome Article" > <article_title>
```


### What the hell is this?  

I got tired of having to copy Jekyll files to make new posts, so I wrote a basic script to generate it for me. 


