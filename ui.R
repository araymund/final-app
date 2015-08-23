library(shiny)

# Define server logic required to predict diabetes in Mexico
shinyUI(
  pageWithSidebar(

  # Application title
  headerPanel('Modified Diabetes Prediction (Mexico Case)'),
  
  sidebarPanel(
    numericInput('glucose', 'Glucose mg/dl', 90, min = 70, max =200, step = 5),
    numericInput('height', 'Height in centimeters', 160, min = 140, max =210, step = 5),
    numericInput('weight', 'Weight in kilos', 50, min = 40, max =200, step = 5),
    submitButton('Submit')
   ),
  # 
  mainPanel(
    h1(''),
    h3('Results of prediciton'),
	  h4('You entered'),
	  verbatimTextOutput("glucose"),
    verbatimTextOutput("height"),
    verbatimTextOutput("weight"),
	  h4('Which resulted in a prediction of '),
	  verbatimTextOutput("prediction")
   )	
  )
)
