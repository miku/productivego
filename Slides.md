# Productive Go

Three reasons why Go feels (and is) productive.

* Martin Czygan, <martin.czygan@gmail.com>

----

# About Me

* software developer at [Leipzig University Library](https://ub.uni-leipzig.de) (BDJ2017) and data engineer at the
  [Internet Archive](https://archive.org) - check out [Archive Scholar](https://scholar.archive.org)
* open source [contributor](https://github.com/miku), [computer scientist](https://dblp.org/search?q=martin+czygan) and [author](https://g.co/kgs/Dka5z8)
* co-host of [Leipzig Golang User Group](https://golangleipzig.space/), [meetup.com/Leipzig-Golang](https://www.meetup.com/Leipzig-Golang/)

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
* in this talk I want to highlight a few positive aspects of the language; there are
  many more
* Go is not great because of a single killer feature; in fact none of the
  highlights is that extraordinary, but the it adds up
* I believe, Go will become more popular (slowly) because it does less (and less can be more)

----

# Three reasons

* Performance
* Ergonomics
* Deployment

----

# Reason 1: Performance

Go is fast.

----

# Fast compilation

It starts with dependency management.

> In 1984, a compilation of ps.c, the source to the Unix ps command, was
> observed to #include <sys/stat.h> 37 times by the time all the preprocessing
> had been done. Even though the contents are discarded 36 times while doing
> so, most C implementations would open the file, read it, and scan it all 37
> times. -- [https://talks.golang.org/2012/splash.article#TOC_5.](https://talks.golang.org/2012/splash.article#TOC_5.)

So, compile time reduction starts with less I/O.

----

# Go blurs the line

* Go first appeared on November 10, 2009 (remember [Google Tech Talks](https://www.youtube.com/watch?v=rKnDgT73v8s)?)

A few years before, there seemingly was a cold war going, since Erik Meijer et
al. published [Static Typing Where Possible, Dynamic Typing When Needed:The End
of the Cold War Between Programming
Languages](https://www.ics.uci.edu/~lopes/teaching/inf212W12/readings/rdl04meijer.pdf).

The paper goes into a "softer type system" direction, but Go also wanted to end
this war. It wanted to be a safe language (static) that was fun to write (dynamic).

On part of that is: Can I run this instantly? And in Go, you can, with `go run
prog.go` it sure feels fast.

----

# Go is fast enough

* that is one that I particularly like
* there is a (assumed) optimum for a given problem, between how fast it is, and how quickly you can implement it

A tradeoff between time spent and runtime, e.g. as you **increase** the time spent
on programming, the running time **comes down**.

![](static/exp.png)

Let's look at one example.

----

# Fast enough Reservoir Sampling

Reservoir sampling is a powerful technique to get a sample of a fixed size from
a potentially infinite stream.

* Not POSIX, but included in GNU core utils is `shuf`, which uses reservior sampling (since 2013)

> Hi,
> I would like to know why shuf.c is using reservoir sampling +
> write_permuted_output_reservoir rather than just using an inside-out version
> Fisher-Yates shuffle.

A Go version: [rsampling](https://github.com/miku/rsampling)

The wikipedia page on `shuf`
[mentions](https://en.wikipedia.org/wiki/Shuf#See_also) `sort -R`, so let's
see:

![](https://raw.githubusercontent.com/miku/rsampling/master/images/bm1.png)

----


* go is fast
* fast compilation
* fast enough
* low level, high level
* concurrent programming; raw patterns
* implement JSON parser; SIMD
* show off cubietruck ARM, CRUD App, 500 r/s

----

# Reason 2: Ergonomics

* emphasis on reading code
* gofmt
* can read code of key value stores, or more complex pieces of code
* regular language, tools on code
* high level, low level
* stdlib ftw
* writing complete crud apps with minimal dependencies

----

# Reason 3: Deployment

* single binary
* what is in that binary; show off
* smaller linux images
* cross-compilation
* selective compilation

