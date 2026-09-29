# Create a book template from the INRAE template

Same as
[`kquarto.r::create_template_book()`](https://kbosirany.github.io/kquarto.r/reference/create_template_book.html),
starting from the INRAE template by default. Useful to derive a template
for a unit or a project (another logo, extra chapters, ...).

## Usage

``` r
create_template_book(name, from = inrae_template(), ...)
```

## Arguments

- name:

  Template name.

- from:

  Where the template files come from. Defaults to
  [`inrae_template()`](https://kbosirany.github.io/kquarto.r.inrae/dev/reference/inrae_template.md).

- ...:

  Other arguments passed to
  [`kquarto.r::create_template_book()`](https://kbosirany.github.io/kquarto.r/reference/create_template_book.html).

## Value

The path of the template folder, invisibly.

## Examples

``` r
old <- options(kquarto.r.template_dir = tempfile())
path <- create_template_book("inrae_mon_unite")
#> Template 'inrae_mon_unite' created in: /tmp/RtmpQwcznr/file1a8b290aa4ab/inrae_mon_unite
list.files(path, recursive = TRUE)
#> [1] "_quarto.yml"           "images/logo-inrae.png" "index.qmd"            
#> [4] "inrae.scss"            "references.bib"       
options(old)
```
