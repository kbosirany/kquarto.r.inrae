# Create Quarto book reports with the INRAE template

Same as
[`kquarto.r::create_book()`](https://kbosirany.github.io/kquarto.r/reference/create_book.html),
with the INRAE template by default: INRAE colours and fonts, logo, title
page and bibliography (`references.bib`).

## Usage

``` r
create_book(dirname_reports, ..., template = inrae_template())
```

## Arguments

- dirname_reports:

  Character vector of report folder names.

- ...:

  Other arguments passed to
  [`kquarto.r::create_book()`](https://kbosirany.github.io/kquarto.r/reference/create_book.html),
  e.g. `path`, `title`, `author`, `chapters`.

- template:

  Template used to initialise the reports. Defaults to
  [`inrae_template()`](https://kbosirany.github.io/kquarto.r.inrae/dev/reference/inrae_template.md).

## Value

The paths of the report folders, invisibly.

## Examples

``` r
tmp <- tempfile()
dir.create(tmp)
create_book(
  "rapport_technique",
  path = tmp,
  title = "Rapport technique",
  author = "Kevin Orlando",
  chapters = c("Introduction", "Méthodes")
)
#> Book(s) created: rapport_technique
list.files(file.path(tmp, "rapport_technique"), recursive = TRUE)
#> [1] "_quarto.yml"                  "chapitre-01-introduction.qmd"
#> [3] "chapitre-02-methodes.qmd"     "images/logo-inrae.png"       
#> [5] "index.qmd"                    "inrae.scss"                  
#> [7] "references.bib"              
```
