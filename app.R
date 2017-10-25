# tutoiral Shiny 

library(shiny)

# L'ordre des éléments dans fluidPage() est le même que l'ordre d'affichage 

ui <- fluidPage("Bonjour à tous!",# On ajoute du texte 
                
                checkboxGroupInput(inputId = "num2",
                                   label =  c("Choix"),
                                   choices = c("choix 1", "choix 2"), 
                                   selected = "choix 2"), # Pré-sélection du "choix 2"
                
                sliderInput(inputId = "num",
                            label = "Choose a number",
                            value = 25, min = 1, max = 100),  # ajoute un curseur i.e. un "sliderInput"
               

                
                
                # cf page 24 des slides "how-to-start-1.pdf" pour d'autres exemples
                
                
                plotOutput("hist"),
                
                "END OF THE PAGE"
                
                 ) 


server <- function(input, output) {
  
}
shinyApp(ui = ui, server = server)