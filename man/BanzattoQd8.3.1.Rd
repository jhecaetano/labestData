% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Banzatto.R
\name{BanzattoQd8.3.1}
\alias{BanzattoQd8.3.1}
\title{Grupo de Ensaios de Competi\enc{çã}{ca}o de Gen\enc{ó}{o}tipos
    de Batata}
\format{Um \code{data.frame} com 40 observações e 3 variáveis, em que

\describe{

\item{\code{exper}}{Fator de níveis categóricos que identifica o
    experimento.}

\item{\code{genot}}{Fator de níveis categóricos que identifica os
    genótipos de batata.}

\item{\code{prod}}{Produção total de batata resultante da soma dos
    valores observados nos 4 blocos de cada experimento, em t
    ha\eqn{^{-1}}.}

}

Esse \code{data.frame} não possuí o valor individual de cada parcelas
    mas sim a soma do valor (total) nas parcelas de um mesmo genótipo
    em cada um dos experimentos. As estimativas dos quadrados médios
    residuais em cada experimento estão disponíveis no atributo
    \code{"qmr"} do objeto.}
\source{
BANZATTO; KRONKA (2013), Quadro 8.3.1, pág. 196.

Filgueira, F. A. R. (1991). Interação genótipo ambiente em batata
    (\emph{Solanum tuberosum} L. spp \emph{tuberosum}). Tese
    (Doutorado em Produção Vegetal). Faculdade de Ciências Agrárias e
    Veterinárias, Universidade Estadual Paulista, Jaboticabal: SP.
}
\description{
Grupo de ensaios de competição de genótipos de batata
    realizado por Filgueira (1991) em Anápolis - GO. Cada experimento
    foi instalado em delineamento de blocos casualizados com 4
    repetições. A variável resposta foi a produção, em t
    ha\eqn{^{-1}}, de batata.
}
\examples{

library(lattice)

data(BanzattoQd8.3.1)

str(BanzattoQd8.3.1)

attr(x = BanzattoQd8.3.1, which = "qmr")

with(BanzattoQd8.3.1,
     addmargins(tapply(prod, list(genot, exper), FUN = mean)))

xyplot(prod ~ genot, groups = exper, data = BanzattoQd8.3.1,
       type = c("p", "a", "g"),
       auto.key = list(title = "Experimento",
                       cex.title = 1, columns = 4),
       scales = list(x = list(rot = 90)),
       xlab = "Genótipos",
       ylab = expression(
           "Produção total de tubérculos de 4 parcelas"~(t~ha^{-1})))

}
\keyword{GE}

