% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7-inputs.R
\name{f7Picker}
\alias{f7Picker}
\title{Create a Framework7 picker input}
\usage{
f7Picker(inputId, label, placeholder = NULL, value = choices[1], choices)
}
\arguments{
\item{inputId}{Picker input id.}

\item{label}{Picker label.}

\item{placeholder}{Text to write in the container.}

\item{value}{Picker initial value, if any.}

\item{choices}{Picker choices.}
}
\description{
Build a Framework7 picker input
}
\examples{
if(interactive()){
 library(shiny)
 library(shinyMobile)

 shinyApp(
   ui = f7Page(
    title = "My app",
    f7SingleLayout(
     navbar = f7Navbar(title = "f7Picker"),
     f7Picker(
      inputId = "mypicker",
      placeholder = "Some text here!",
      label = "Picker Input",
      choices = c('a', 'b', 'c')
     ),
     textOutput("pickerval")
    )
   ),
   server = function(input, output) {
    output$pickerval <- renderText(input$mypicker)
   }
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
