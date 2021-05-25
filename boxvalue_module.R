# Shiny worldPhones module 

# UI function
iboxesUI <- function(id) {
  ns <- NS(id)
  # dashboardBody(
    fillCol(
      # box(height = 200,
        height = 600, flex = c(NA, 1),
        valueBoxOutput(ns("boxvalue"), width=12)
      # )
    )
  # )
}

# Server function
iboxes <- function(input, output, session, data) {
  
  output$boxvalue <- renderValueBox({
    shinydashboard::valueBox(
      value = data,
      subtitle = "Value",
      icon = icon("arrow-up"),
      color = "blue",
      width = 12
    )
  })
  
  # output$iboxvalue <- renderInfoBox({
  #   infoBox(
  #     "Title",
  #     5,
  #     icon = icon("credit-card")
  #   )
  # })
}


