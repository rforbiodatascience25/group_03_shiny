# Define the User Interface (Frontend)
ui <- fluidPage(
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Central Dogma"),
      style = "background-color: #f0f0f0; padding: 15px;"
    )),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("About"),
      helpText("This little shiny app does the following:")
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene Generator"),
      sliderInput(inputId = "n_bases",
                  label = "Number of bases:",
                  min = 1,
                  max = 60,
                  value = 30,
                  width = "100%"),
      layout_columns(
        col_widths = c(3, 3, 3, 3),
        numericInput(inputId = "A_probability",
                     label = "Probability of A",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "T_probability",
                     label = "Probability of T",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "C_probability",
                     label = "Probability of C",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1),
        numericInput(inputId = "G_probability",
                     label = "Probability of G",
                     value = 0.25,
                     min = 0,
                     max = 1,
                     step = 0.1)
      ))),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Gene output"),
      mainPanel(
        verbatimTextOutput(outputId = "dna")
      )
    )),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Transcribe RNA"),
      helpText("Copy paste your DNA to the program to make the transcription(the T into U)"),
      textInput(inputId = "dna_input",
                label = "Enter DNA sequence:",
                value = "",
                width = "100%"),
      verbatimTextOutput(outputId = "rna_output")
    )
  ),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Transcribe RNA output"),
      mainPanel(
        verbatimTextOutput(outputId = "rna_output")
      )
    )),
  layout_columns(
    col_widths = 12,
    card(
      titlePanel("Virtual Ribosome"),
      helpText("Copy paste your RNA to the program to make the translation (RNA into codons).
               If '_' present, that equals a stop codon!"),
      textInput(inputId = "rna_input",
                label = "Enter RNA sequence:",
                value = "",
                width = "100%"),
    )),
  layout_columns(
    col_widths = 12,
    card(
      card_header("Virtual Ribosome output"),
      mainPanel(
        verbatimTextOutput(outputId = "codon_output")
      )
    )),
)
