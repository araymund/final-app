library(shiny)


diabetesRisk <- function(glucose, height, weight) {
  
  #This predictor incorporates a slighltly improvement 
  # and takes into consideration an overweight factor
  # which is defined as the ratio weight/height which 
  # increases the risk of diabaetes in a 30%
  
  
  tmp1 <- glucouse/200
  tmp2 <- weight/(height/100)
  
  if (tmp2 >= 18.5 && tmp2 < 24.9 ) {
    result <- tmp1
    } else {
      result <- tmp1 + .30
  }
  
  
  return (result)
}
  # This predictor takes into account  

shinyServer(
  function(input, output) {
    output$glucose <- renderPrint({input$glucose})
    output$height  <- renderPrint({input$height})
    output$weight  <- renderPrint({input$weight})
	  output$prediction  <- renderPrint({diabetesRisk(input$glucose,input$height, input$weight)})
 }
)
