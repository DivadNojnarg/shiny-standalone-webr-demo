# Define UI for app that draws a histogram ----
ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody(
    tracker$include(),
    trackingModalBS4(),
    box(
      title = "Closable Box with dropdown",
      closable = TRUE,
      width = 12,
      status = "warning",
      solidHeader = FALSE,
      collapsible = TRUE,
      label = boxLabel(
        text = 1,
        status = "danger"
      ),
      dropdownMenu = boxDropdown(
        boxDropdownItem("Link to google", href = "https://www.google.com"),
        boxDropdownItem("item 2", href = "#"),
        dropdownDivider(),
        boxDropdownItem("item 3", href = "#", icon = icon("table-cells"))
      ),
      sidebar = boxSidebar(
        startOpen = TRUE,
        id = "mycardsidebar",
        sliderInput(
          "obs",
          "Number of observations:",
          min = 0,
          max = 1000,
          value = 500
        )
      ),
      plotOutput("distPlot")
    )
  )
)
