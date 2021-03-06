#' tibbleOne: tidy characteristics tables
#'
#' @description In many academic papers, table 1 shows participant
#'  characteristics, often stratified by a categorical variable
#'  such as treatment group. There are many excellent packages
#'  available to compute the numbers in table 1. This package
#'  focuses on getting those numbers into a nice format that
#'  works with R Markdown. Additionally, there is a fair amount
#'  of diversity in researchers' preferred writing mediums.
#'  Some may prefer LaTeX, while others want to work in Microsoft
#'  Word. Recently, html documents have grown more common
#'  for research papers. tibbleOne is meant to be applicable for
#'  each of these settings, and should meet the needs of most
#'  studies.
#'
#' To learn more about tibbleOne, start with the vignettes:
#' `browseVignettes(package = "tibbleOne")`
#'
#' @importFrom knitr kable
#'
#' @importFrom officer fp_border
#'
#' @importFrom flextable flextable as_flextable as_grouped_data compose
#'   as_paragraph set_header_labels fontsize align padding theme_box
#'   as_chunk
#'
#' @importFrom tibble tibble as_tibble enframe deframe
#'
#' @importFrom forcats fct_inorder fct_relevel fct_explicit_na
#'
#' @importFrom labelled var_label set_variable_labels var_label<-
#'
#' @importFrom tidyr spread unnest nest gather
#'
#' @importFrom tidyselect vars_select vars_pull
#'
#' @importFrom kableExtra footnote_marker_number footnote_marker_symbol
#'   footnote_marker_alphabet group_rows add_indent add_header_above
#'   add_footnote
#'
#' @importFrom stringr str_detect fixed str_split
#'
#' @importFrom rlang %||% is_character ensyms enquo is_empty
#'
#' @importFrom vctrs vec_size vec_is_empty
#'
#' @importFrom purrr map pmap map_dfr map_chr map_dbl map_lgl map_int
#'   set_names modify pluck reduce flatten map2_lgl map2_chr
#'
#' @importFrom stats glm lm sd qnorm coef vcov as.formula update.formula
#'   na.omit terms lm t.test wilcox.test kruskal.test anova quantile
#'   chisq.test
#'
#' @importFrom glue glue glue_collapse
#'
#' @importFrom magrittr %>% %<>% set_colnames add use_series
#'
#' @importFrom dplyr select mutate filter group_by top_n pull mutate_if
#'   left_join bind_rows case_when slice select_at everything arrange
#'   rename if_else vars
#'
"_PACKAGE"


## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")
  utils::globalVariables(
    c(
      ".",
      ".x",
      'id',
      "key",
      "abbr",
      "unit",
      "note",
      "name",
      "type",
      "label",
      "group",
      "value",
      ".data",
      ".strat",
      "tbl_one",
      "tbl_val",
      "n_unique",
      "variable",
      'fun_descr',
      'test_descr',
      'group.row.id',
      'bad_table_specs',
      'specs_table_vals'
    )
  )
