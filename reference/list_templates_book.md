# List the available book templates, INRAE template included

Same as
[`kquarto.r::list_templates_book()`](https://kbosirany.github.io/kquarto.r/reference/list_templates_book.html),
also listing the templates of this package.

## Usage

``` r
list_templates_book(packages = "kquarto.r.inrae")
```

## Arguments

- packages:

  Names of the packages whose templates are listed too.

## Value

A data frame with the template `name`, `source` and `path`.

## Examples

``` r
list_templates_book()
#>                     name          source
#> 1                default         package
#> 2 kquarto.r.inrae::inrae kquarto.r.inrae
#>                                                              path
#> 1     /home/runner/work/_temp/Library/kquarto.r/templates/default
#> 2 /home/runner/work/_temp/Library/kquarto.r.inrae/templates/inrae
```
