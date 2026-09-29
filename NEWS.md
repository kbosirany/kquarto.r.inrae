# kquarto.r.inrae (development version)

# kquarto.r.inrae 0.1.0

* Première version : template `inrae` pour les books Quarto de
  `kquarto.r` (couleurs et polices de la charte graphique INRAE, logo,
  page de titre, bibliographie).
* `create_book()`, `create_template_book()` et `list_templates_book()`
  utilisent le template INRAE par défaut ; `render_book()`,
  `create_book_chapter()`, `list_books()`, `remove_template_book()` et
  `template_dir()` sont reprises de `kquarto.r`.
* Intégration continue GitHub Actions et GitLab CI (R CMD check et site
  pkgdown, branche `main` à la racine et `dev` dans `/dev`).
