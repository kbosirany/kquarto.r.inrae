# Changelog

## kquarto.r.inrae (development version)

## kquarto.r.inrae 0.1.0

- Première version : template `inrae` pour les books Quarto de
  `kquarto.r` (couleurs et polices de la charte graphique INRAE, logo,
  page de titre, bibliographie).
- [`create_book()`](https://kbosirany.github.io/kquarto.r.inrae/dev/reference/create_book.md),
  [`create_template_book()`](https://kbosirany.github.io/kquarto.r.inrae/dev/reference/create_template_book.md)
  et
  [`list_templates_book()`](https://kbosirany.github.io/kquarto.r.inrae/dev/reference/list_templates_book.md)
  utilisent le template INRAE par défaut ;
  [`render_book()`](https://kbosirany.github.io/kquarto.r/reference/render_book.html),
  [`create_book_chapter()`](https://kbosirany.github.io/kquarto.r/reference/create_book_chapter.html),
  [`list_books()`](https://kbosirany.github.io/kquarto.r/reference/list_books.html),
  [`remove_template_book()`](https://kbosirany.github.io/kquarto.r/reference/remove_template_book.html)
  et
  [`template_dir()`](https://kbosirany.github.io/kquarto.r/reference/template_dir.html)
  sont reprises de `kquarto.r`.
- Intégration continue GitHub Actions et GitLab CI (R CMD check et site
  pkgdown, branche `main` à la racine et `dev` dans `/dev`).
