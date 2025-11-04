# Define the Server (Backend)
server <- function(input, output) {
  dna_string <- reactive({
    gene_dna(length = input$n_bases, base_probs = c(input$A_probability,
                                                    input$T_probability,
                                                    input$C_probability,
                                                    input$G_probability))
  })
  output$dna <- renderText({
    dna_string()
  })
  output$basefreq <- renderTable({
    base_freqs(dna_string())},
    colnames = TRUE
  )
  
  output$rna_output <- renderText({
    rna_string = transcribe_dna(input$dna_input)
  })
  
  output$codon_output <- renderText({
    translate_string = translate_rna(input$rna_input)
  })
}
