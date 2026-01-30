#' Get CB color palette
#'
#' Return a CB color palette
#'
#' @param name Name of the color palette
#' @return A CB color palette
#' @export
cb_pal <- function(name = "cb_okabeito") {
  pal <- cb_palettes[[name]]
  if (is.null(pal)) {
    stop("Palette does not exist. Use names(cb_palettes) to find valid palette.")
  } else {
    pal
  }
}
