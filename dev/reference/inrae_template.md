# Name of the INRAE template

The template shipped by this package, in the `"pkg::name"` form
understood by the `template` argument of
[`kquarto.r::create_book()`](https://kbosirany.github.io/kquarto.r/reference/create_book.html).

## Usage

``` r
inrae_template()
```

## Value

`"kquarto.r.inrae::inrae"`.

## Examples

``` r
inrae_template()
#> [1] "kquarto.r.inrae::inrae"

# Use it with kquarto.r directly, or make it the default of kquarto.r
# (e.g. in your .Rprofile):
# options(kquarto.r.template = inrae_template())
```
