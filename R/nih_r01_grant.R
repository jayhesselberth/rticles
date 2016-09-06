#' NIH R01 format.
#'
#' Format for creating R01 submissions to the NIH.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "nih_r01_grant", package = "rticles")
#' }
#'
#' @export
nih_r01_grant <- function(..., keep_tex = TRUE) {
  inherit_pdf_document(...,
                       keep_tex = keep_tex,
                       template = find_resource("nih_r01_grant", "template.tex"))
}
