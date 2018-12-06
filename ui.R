library(shiny)
library(ggplot2)
library(gridExtra)

data(ToothGrowth)
ToothGrowth$dose <- factor(ToothGrowth$dose)
vctooth <- ToothGrowth[1:30, c(3,1)]
ojtooth <- ToothGrowth[31:60, c(3,1)]

shinyUI(fluidPage(
        titlePanel("Toothgrowth in Guinea Pigs"),
        sidebarLayout(position = "left",
                      sidebarPanel("Choose options:",
                                   h4("Delivery method: Orange Juice: "),
                                   checkboxInput("OJ", "Show plot", value = T),
                                   sliderInput("binwidth1", "bin width", min = 5, max = 30, step = 1, value=10),
                                   h4("Delivery method: Ascorbic Acid: "),
                                   checkboxInput("VC", "Show plot", value = F),
                                   sliderInput("binwidth2", "bin width", min = 5, max = 30, step = 1, value=10)
                      ),
                      mainPanel("main panel",
                                column(6,plotOutput(outputId="plotgraph", width="500px",height="400px"))
                      ))))


