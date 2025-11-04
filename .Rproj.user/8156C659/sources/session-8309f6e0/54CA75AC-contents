# Define the Server (Backend)
server <- function(input, output) {
  output$dna <- renderText({
    dna_string = gene_dna(length = input$n_bases, base_probs = c(input$A_probability,
                                                                 input$T_probability,
                                                                 input$C_probability,
                                                                 input$G_probability))
  })
}