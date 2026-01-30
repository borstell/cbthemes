#' CB y-axis discrete text theme
#'
#' Custom ggplot theme
#'
#' @param base_family Base font family. Default "Atkinson Hyperlegible".
#' @param base_size Base font size for text elements. Default 14.
#' @param hjust Horizontal alignment of title, subtitle and caption. Default 0.
#' @param text_clr_1 Text color (1st). Default "grey20".
#' @param text_clr_2 Text color (2nd). Default "grey40".
#' @param text_clr_3 Text color (3rd). Default "grey80".
#' @param paper Background color. Default "white".
#' @return A ggplot2 theme
#' @export

theme_cb_text <- function(base_family = "Atkinson Hyperlegible",
                          base_size = 14,
                          hjust = 0,
                          text_clr_1 = "grey20",
                          text_clr_2 = "grey40",
                          text_clr_3 = "grey70",
                          paper = "#FDFDFD") {
  ggplot2::theme_minimal(
    base_family = base_family,
    base_size = base_size,
    paper = paper
  ) +
    ggplot2::theme(

      # Plot title
      plot.title = ggplot2::element_text(
        size = ggplot2::rel(1.5),
        face = "bold",
        hjust = hjust,
        color = text_clr_1
      ),
      plot.title.position = "plot",

      # Plot subtitle
      plot.subtitle = ggplot2::element_text(
        hjust = hjust,
        color = text_clr_2
      ),

      # Plot caption
      plot.caption = ggplot2::element_text(
        hjust = hjust,
        color = text_clr_3
      ),
      plot.caption.position = "plot",

      # Axis titles
      axis.title = ggplot2::element_text(
        color = text_clr_2
      ),
      axis.title.x = ggplot2::element_text(
        margin = ggplot2::margin(t = 10, b = -10),
        color = text_clr_2
      ),
      axis.title.y = ggplot2::element_blank(),
      axis.text.x = ggplot2::element_text(
        color = text_clr_2
      ),
      axis.text.y = ggplot2::element_text(
        face = "bold"
      ),

      # Plot properties
      plot.margin = ggplot2::margin(10, 10, 10, 10),
      plot.background = ggplot2::element_rect(
        fill = paper,
        color = "transparent"
      ),
      panel.background = ggplot2::element_rect(
        fill = paper,
        color = "transparent"
      ),
      panel.grid.major.y = ggplot2::element_blank(),

      # Legend properties
      legend.position = "bottom",
      legend.text = ggplot2::element_text(
        color = text_clr_2
      ),
      legend.title = ggplot2::element_text(
        color = text_clr_1
      ),
      legend.background = ggplot2::element_rect(
        fill = "transparent",
        color = "transparent"
      ),
      legend.key = ggplot2::element_rect(
        fill = "transparent",
        color = "transparent"
      ),

      # Facet properties
      strip.background = ggplot2::element_rect(
        fill = "transparent",
        color = "transparent"
      ),
      strip.text = ggplot2::element_text(
        hjust = 0,
        color = text_clr_1,
        size = ggplot2::rel(.8)
      )
    )
}
