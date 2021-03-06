#' @name AndradeTb2.46
#' @title Condutividade e Salinidade na Região III da Lagoa da Conceição
#' @description Estudo com o objetivo de verificar se existe correlação
#'     entre a condutividade e a salinidade na região III da Lagoa da
#'     Conceição, Florianópolis, SC.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cond}}{Condutividade da lagoa, mensurada em \eqn{mho}.}
#'
#' \item{\code{salin}}{Salinidade da lagoa, em \eqn{g/l}.}
#'
#' }
#' @seealso \code{\link{AndradeTb2.38}}
#' @keywords RS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.46, pág. 149)
#' @examples
#'
#' data(AndradeTb2.46)
#' str(AndradeTb2.46)
#'
#' library(lattice)
#' xyplot(cond ~ salin,
#'        data = AndradeTb2.46,
#'        type = c("p", "r"),
#'        xlab = "Salinidade (g/l)",
#'        ylab = "Condutividade (mho)")
#'
#' # Agrupando os dados de temperaturas, provinientes do dataset
#' # AndradeTb2.38
#' # help(AndradeTb2.38)
#' (da <- merge(AndradeTb2.46, AndradeTb2.38))
#' splom(da, type = c("g", "p", "r"))
#'
NULL
