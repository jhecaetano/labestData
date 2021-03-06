% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Vieira.R
\name{VieiraTb7.2}
\alias{VieiraTb7.2}
\title{N\enc{ú}{u}meros de Ovos de Poedeiras em Fun\enc{çã}{ca}o do
    Estilo Musical}
\format{Um \code{data.frame} com 16 observações e 2 variáveis, em que

\describe{

\item{\code{musica}}{Estilo musical do som ambiente no qual ficavam
    as poedeiras.}

\item{\code{ovos}}{Número de ovos aos 35 dias após o início do
    experimento.}

}}
\source{
VIEIRA (1999), Tabela 7.2, pág. 74.
}
\description{
Dados que refere-se ao número de ovos por poedeira 35
    dias após o início do experimento em função do estilo musical do
    som ambiente: música sertaneja (a), música clássica (b) e música
    popular (c).
}
\examples{

data(VieiraTb7.2)
str(VieiraTb7.2)

library(lattice)

xyplot(ovos ~ musica, data = VieiraTb7.2,
       xlab = "Estilo músical ambiente",
       ylab = "Número de ovos aos 35 dias")

}
\keyword{DIC}

