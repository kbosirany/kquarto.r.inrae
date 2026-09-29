test_that("the INRAE template is shipped with the package", {
  path <- system.file("templates", "inrae", package = "kquarto.r.inrae")
  expect_true(file.exists(file.path(path, "_quarto.yml")))
  expect_true(file.exists(file.path(path, "references.bib")))
  expect_true(file.exists(file.path(path, "inrae.scss")))
  expect_true(file.exists(file.path(path, "images", "logo-inrae.png")))
})

test_that("create_book() uses the INRAE template by default", {
  dir <- local_book_env()
  suppressMessages(create_book(
    "rapport",
    path = dir,
    title = "Rapport technique",
    author = "Kevin Orlando",
    chapters = "Introduction"
  ))
  book <- file.path(dir, "rapport")
  expect_true(file.exists(file.path(book, "inrae.scss")))
  expect_true(file.exists(file.path(book, "references.bib")))
  expect_true(file.exists(file.path(book, "images", "logo-inrae.png")))
  expect_true(file.exists(file.path(book, "chapitre-01-introduction.qmd")))

  config <- yaml::read_yaml(file.path(book, "_quarto.yml"))
  expect_equal(config$book$title, "Rapport technique")
  expect_equal(unlist(config$book$author), "Kevin Orlando")
  expect_equal(config$bibliography, "references.bib")
  expect_equal(config$lang, "fr")
  expect_true("inrae.scss" %in% unlist(config$format$html$theme))
  expect_equal(
    unlist(config$book$chapters),
    c("index.qmd", "chapitre-01-introduction.qmd")
  )
})

test_that("create_book() accepts another template", {
  dir <- local_book_env()
  suppressMessages(create_book("rapport", path = dir, template = "default"))
  expect_false(file.exists(file.path(dir, "rapport", "inrae.scss")))
})

test_that("create_template_book() starts from the INRAE template", {
  local_book_env()
  path <- suppressMessages(create_template_book("inrae_unite"))
  expect_true(file.exists(file.path(path, "inrae.scss")))
  expect_true("inrae_unite" %in% list_templates_book()$name)
})

test_that("list_templates_book() lists the INRAE template", {
  local_book_env()
  templates <- list_templates_book()
  expect_true(inrae_template() %in% templates$name)
})
