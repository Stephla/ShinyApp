library(shiny)
library(ggplot2)
library(gridExtra)

data(ToothGrowth)
ToothGrowth$dose <- factor(ToothGrowth$dose)
vctooth <- ToothGrowth[1:30, c(3,1)]
ojtooth <- ToothGrowth[31:60, c(3,1)]


shinyServer(function(input, output) 
{
        pt1 <- reactive({
                if (!input$OJ) return(NULL)
                ggplot(ojtooth, aes(x=len, color=dose, fill=dose))  +
                        geom_histogram(bins = input$binwidth1, aes(y=..density..), position="identity", alpha=0.5)+
                        geom_density(alpha=0.6)+
                        scale_color_manual(values=c("#999999", "#E69F00", "#56B4E9"))+
                        scale_fill_manual(values=c("#999999", "#E69F00", "#56B4E9"))+
                        labs(title="Toothgrowth for Orange Juice",x="Toothlength", y = "Density")+
                        theme_classic()
        })
        pt2 <- reactive({
                if (!input$VC) return(NULL)
                ggplot(vctooth, aes(x=len, color=dose, fill=dose))  +
                        geom_histogram(bins = input$binwidth2, aes(y=..density..), position="identity", alpha=0.5)+
                        geom_density(alpha=0.6)+
                        scale_color_manual(values=c("#999999", "#E69F00", "#56B4E9"))+
                        scale_fill_manual(values=c("#999999", "#E69F00", "#56B4E9"))+
                        labs(title="Toothgrowth for Ascorbic acid",x="Toothlength", y = "Density")+
                        theme_classic()
        })
        output$plotgraph = renderPlot({
                ptlist <- list(pt1(),pt2())
                # remove the null plots from ptlist
                to_delete <- !sapply(ptlist,is.null)
                ptlist <- ptlist[to_delete] 
                if (length(ptlist)==0) return(NULL)
                
                grid.arrange(grobs=ptlist, ncol=1)
        })
})
