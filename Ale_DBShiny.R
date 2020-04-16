
  ui = fluidPage(
    titlePanel(title = h4("Grafica", align="center")),
    mainPanel(
    plotOutput("bar",height = 500))
  )
  server = function(input, output) {
    output$bar <- renderPlot({
      conn <- dbConnect(
        drv = RMySQL::MySQL(),
        dbname = "shinydemo",
        host = "shiny-demo.csa7qlmguqrf.us-east-1.rds.amazonaws.com",
        username = "guest",
        password = "guest")
      on.exit(dbDisconnect(conn), add = TRUE)
      query <- "SELECT Population, Name FROM City;"
      data2 <- dbGetQuery(conn, query)
      color <- c("blue", "red")
      barplot(data2[,c("Population","Name")],
            ylab="A",
            xlab="B",
            names.arg = c("Population","Name"),
            col = color)

    })
  }
