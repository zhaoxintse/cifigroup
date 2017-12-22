
library(shiny)


# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("旭辉集团-客户研究部"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "城市:",
                list("成都" = "cyl", 
                     "上海" = "am", 
                     "杭州" = "gear")),
    
    selectInput("varible2", "板块:",
                list("金牛区" = "jn", 
                     "青羊区" = "qy", 
                     "其它" = "other")), 
    
    selectInput("varible3", "相关政策:",
                list("宏观因素" = "mac", 
                     "微观因素" = "mic", 
                     "产业规范" = "ind")), 
    
    
    selectInput("varible3", "周边配套:",
                list("教育" = "jy", 
                     "餐饮" = "cy", 
                     "交通" = "jt")), 
    
    dateRangeInput ("varible3", "数据时间:",start='2008-01-01',
                    end='2017-11-31'),
                 
    
    numericInput("obs", "预测期数（月）:", 3),
    
    downloadButton('downloadData', '下载数据'),
    
    checkboxInput("outliers", "Show outliers", FALSE)
  ),
  
  mainPanel(
    h3(textOutput("caption")),
    
    plotOutput("mpgPlot")
    
    
  )
))