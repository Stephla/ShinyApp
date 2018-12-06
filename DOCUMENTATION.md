# Documentation ShinyApp

## Toothgrowth dataset

For this app, the `Toothgrowth` dataset in R is used. This dataset shows the effect of viatim C on tooth growth in guinea pigs.  
The dataset contains 60 observation on three variables:
- len (numeric) = tooth lenght
- supp (factor) = Supplement type. This factor has two levels: OJ = Oranje Juice; VC = Ascorbic Acid.
- dose (numeric) = Dose in milligrams/day

The response is the length of odontoblasts (cells responsible for tooth growth) in 60 guinea pigs. 
Each animal received one of three dose levels of vitamin C (0.5, 1, and 2 mg/day) by one of two delivery methods, 
orange juice or ascorbic acid (a form of vitamin C and coded as VC).

**Source**
C. I. Bliss (1952). The Statistics of Bioassay. Academic Press.

**References**
McNeil, D. R. (1977). Interactive Data Analysis. New York: Wiley.

## How to use the ShinyApp
This ShinyApp provides two histograms with density curves (one for every suuplement type) of toothlength as a factor of dosage.
In the side panel on the left side, you can indicate for which supplement type you would like to see the histogram. Furthermore, the two slides can be used to change the bin widths for both histograms.
