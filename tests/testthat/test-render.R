test_that("a book created with the INRAE template renders", {
  skip_on_cran()
  skip_if_not_installed("quarto")
  quarto_bin <- tryCatch(quarto::quarto_path(), error = function(e) NULL)
  skip_if(is.null(quarto_bin), "Quarto is not installed")

  dir <- local_book_env()
  suppressMessages(create_book(
    "rapport",
    path = dir,
    author = "Kevin Orlando",
    chapters = "Introduction"
  ))
  suppressMessages(render_book("rapport", path = dir, quiet = TRUE))
  site <- file.path(dir, "rapport", "_book")
  expect_true(file.exists(file.path(site, "index.html")))
  expect_true(file.exists(file.path(site, "chapitre-01-introduction.html")))
})
