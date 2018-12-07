Reproducible Pitch Presentation for the Toothgrowth ShinyApp
========================================================
author: Stephanie Wassenburg
date: 12/7/2018
autosize: true

Toothgrowth of guinea pigs
========================================================
transition: rotate

We all have woken up at least once with that burning question if and how our guinea pig's teeth grow as a result of us feeding them enough vitamin C. 

<b>Wonder no more!</b>

Lucky for us, Crampton (1947) has investigated this very question and the data is freely available in R. 

<small>Reference:</small>
<small>Crampton, E. W. (1947). The growth of the odontoblast of the incisor teeth as a criterion of vitamin C intake of the guinea pig. The Journal of Nutrition, 33(5), 491-504. doi: 10.1093/jn/33.5.491.</small>


Toothgrowth ShinyApp
========================================================
transition: fade

The Toothgrowth ShinyApp [(which can be found here)](https://stephla.shinyapps.io/ToothgrowthShinyApp/) helps you figure out which supplement method (orange juice versus ascorbic acid) and which dose of Vitamin C gives guinea pigs the longest teeth by using a dataset with three variables: length, supplement method, and dose. 




```r
summary(ToothGrowth)
```

```
      len        supp     dose   
 Min.   : 4.20   OJ:30   0.5:20  
 1st Qu.:13.07   VC:30   1  :20  
 Median :19.25           2  :20  
 Mean   :18.81                   
 3rd Qu.:25.27                   
 Max.   :33.90                   
```

ShinyApp example plots
========================================================
transition: concave

You'll see the plots will look approximately like this; one for the orange juice method, and one of the ascorbic acid method.

![plot of chunk plots](Pitch-figure/plots-1.png)

How to use the ShinyApp
========================================================
transition: zoom

Both plots illustrate the tooth length as a function of dose (.5, 1, 2). 

- On the left side panel, you can indicate which plot you'd like to see. If one of the plots is unchecked, the other will become larger. 

- Furthermore, you can play with the bin-slides to change the bin widths of both plots respectively to see how that affects what the plots look like.

<i>What method would you use to provide your guinea pig with Vitamin C for lengthy teeth?</i>

Thanks!
