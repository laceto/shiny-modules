# Shiny worldPhones module 

# UI function
infoboxesUI <- function(id) {
  ns <- NS(id)
  # dashboardBody(
  fillCol(
    # box(height = 200,
    height = 600, flex = c(NA, 1),
    infoBoxOutput(ns("infoboxvalue"), width=12)
    # )
  )
  # )
}

# Server function
infoboxes <- function(input, output, session, data) {
  
  output$infoboxvalue <- renderInfoBox({
    shinydashboard::infoBox(
      title = "infobox",
      value = data,
      subtitle = "sub infobox",
      icon = shiny::icon("bar-chart"), 
      color = "aqua", 
      width = 4,
      href = NULL, fill = FALSE
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


