---
title       : World Landmass Area Guessing Game
subtitle    : 
author      : 
job         : 
framework   : html5slides   # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight     # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
url         : 
  assets: ../../assets/img
---
## World Landmass Area Guessing Game (WLAGG)

#### A project created for the Coursera Developing Data Products course.

--- .class #id 

## Want to test your knowledge of geography?

#### Play WLAGG!

#### This game offers you the opportunity to guess the area of 48 different world landmasses.

---
## WLAGG is a Shiny app powered by R!

#### Here's a peek at 5 of the landmasses that you'll get to experience (and the programming language behind the fun):


```r
data(islands)
random_indices <- sample(1:48, 5, replace = FALSE)
for (i in random_indices) {
  cat(names(islands[i]), "\n")
}
```

```
## Kyushu 
## Ellesmere 
## New Zealand (N) 
## North America 
## Timor
```

#### Wow!

---

## WLAGG has a simple user interface.

<img src="./assets/img/app.png" />

#### It's easy to start playing right away.

---

## Thanks for your attention:)

#### You can play WLAGG at: https://sciencescribe.shinyapps.io/Shiny_app---DevDataProd



