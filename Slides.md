# Productive Go

Three reasons why Go feels (and is) productive.

* Martin Czygan, <martin.czygan@gmail.com>

----

# About Me

* software developer at [Leipzig University Library](https://ub.uni-leipzig.de) (BDJ2017) and data engineer at the
  [Internet Archive](https://archive.org) - check out [Archive Scholar](https://scholar.archive.org)
* open source [contributor](https://github.com/miku), [computer scientist](https://dblp.org/search?q=martin+czygan) and [author](https://g.co/kgs/Dka5z8)
* co-host of [Leipzig Golang User Group](https://golangleipzig.space/)

![](static/moon_phase.gif)

I started to use Go in 2013, that must have been [Go 1.1
release](https://golang.org/doc/devel/release.html). The first program was a
replacement for a Java command line tool.

----

# Random

In my spare time, I sometimes take part in hackathons ([join
me](mailto:martin.czygan@gmail.com)); last time I
[created](https://github.com/miku/dvmweb) slot machine animations with a
[numpy](https://numpy.org/):

![](static/dvm-011431.gif)

----

# Overview

* all languages have (significant) tradeoffs
* in this talk I want to highlight positive aspects of the language; there are
  many more
* Go is not great because of a single killer feature; in fact none of the
  highlights is that extraordinary, but the sum adds up
* I believe, Go will become more popular (slowly) because it does less (and less can be more)

----

# Three reasons

* Performance
* Ergonomics
* Deployment

----

# Performance

TODO:

* go is fast
* fast compilation
* fast enough
* low level, high level
* concurrent programming; raw patterns
* implement JSON parser; SIMD
* show off cubietruck ARM, CRUD App, 500 r/s

----

# Ergonomics

* emphasis on reading code
* gofmt
* can read code of key value stores, or more complex pieces of code
* regular language, tools on code
* high level, low level
* stdlib ftw
* writing complete crud apps with minimal dependencies

----

# Deployment

* single binary
* what is in that binary; show off
* smaller linux images
* cross-compilation
* selective compilation

