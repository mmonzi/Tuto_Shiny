# tutoiral Shiny 

library(shiny)

# L'ordre des éléments dans fluidPage() est le même que l'ordre d'affichage 

ui <- fluidPage(tags$h1( "Bonjour à tous!"),# On ajoute du texte 
                HTML(
                  '<div class="container-fluid">
                  <h1>My Shiny App</h1>
                  <p style="font-family:Impact">
                  See other apps in the
                  <a href="http://www.rstudio.com/
                  products/shiny/shiny-usershowcase/">
                  Shiny Showcase</a>
                  </p>
                  </div>'
                ),
                checkboxGroupInput(inputId = "num2",
                                   label =  c("Choix"),
                                   choices = c("choix 1", "choix 2"), 
                                   selected = "choix 2"), # Pré-sélection du "choix 2"
                
                sliderInput(inputId = "num",
                            label = "Choose a number",
                            value = 25, min = 1, max = 50),  # ajoute un curseur i.e. un "sliderInput"
               

                
                
                # cf page 24 des slides "how-to-start-1.pdf" pour d'autres exemples
                
                
                plotOutput("hist"),
                
                "END OF THE PAGE"
                
                 ) 


server <- function(input, output) {
  
  output$hist <- renderPlot({
    
    titre <- "Histogramme Iris Sepal Length"
    
    hist(iris$Sepal.Length, 
         main = titre, 
         breaks = input$num) # input$num permet de faire varier le nombre de cells
                              # se met automatiquementà jour sur le Shiny
  })
  
}
shinyApp(ui = ui, server = server)