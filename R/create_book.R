#' Name of the INRAE template
#'
#' The template shipped by this package, in the `"pkg::name"` form
#' understood by the `template` argument of [kquarto.r::create_book()].
#'
#' @return `"kquarto.r.inrae::inrae"`.
#' @export
#'
#' @examples
#' inrae_template()
#'
#' # Use it with kquarto.r directly, or make it the default of kquarto.r
#' # (e.g. in your .Rprofile):
#' # options(kquarto.r.template = inrae_template())
inrae_template <- function() {
  "kquarto.r.inrae::inrae"
}

#' Create Quarto book reports with the INRAE template
#'
#' Same as [kquarto.r::create_book()], with the INRAE template by default:
#' INRAE colours and fonts, logo, title page and bibliography
#' (`references.bib`).
#'
#' @param dirname_reports Character vector of report folder names.
#' @param ... Other arguments passed to [kquarto.r::create_book()], e.g.
#'   `path`, `title`, `author`, `chapters`.
#' @param template Template used to initialise the reports. Defaults to
#'   [inrae_template()].
#'
#' @return The paths of the report folders, invisibly.
#' @export
#'
#' @examples
#' tmp <- tempfile()
#' dir.create(tmp)
#' create_book(
#'   "rapport_technique",
#'   path = tmp,
#'   title = "Rapport technique",
#'   author = "Kevin Orlando",
#'   chapters = c("Introduction", "Méthodes")
#' )
#' list.files(file.path(tmp, "rapport_technique"), recursive = TRUE)
create_book <- function(dirname_reports, ..., template = inrae_template()) {
  kquarto.r::create_book(dirname_reports, ..., template = template)
}

#' Create a book template from the INRAE template
#'
#' Same as [kquarto.r::create_template_book()], starting from the INRAE
#' template by default. Useful to derive a template for a unit or a
#' project (another logo, extra chapters, ...).
#'
#' @param name Template name.
#' @param from Where the template files come from. Defaults to
#'   [inrae_template()].
#' @param ... Other arguments passed to [kquarto.r::create_template_book()].
#'
#' @return The path of the template folder, invisibly.
#' @export
#'
#' @examples
#' old <- options(kquarto.r.template_dir = tempfile())
#' path <- create_template_book("inrae_mon_unite")
#' list.files(path, recursive = TRUE)
#' options(old)
create_template_book <- function(name, from = inrae_template(), ...) {
  kquarto.r::create_template_book(name, from = from, ...)
}

#' List the available book templates, INRAE template included
#'
#' Same as [kquarto.r::list_templates_book()], also listing the templates of
#' this package.
#'
#' @param packages Names of the packages whose templates are listed too.
#'
#' @return A data frame with the template `name`, `source` and `path`.
#' @export
#'
#' @examples
#' list_templates_book()
list_templates_book <- function(packages = "kquarto.r.inrae") {
  kquarto.r::list_templates_book(packages = packages)
}
