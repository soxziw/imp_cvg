(lang dune 3.12)

(name imp_cvg)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Junrui Liu")

(maintainers "Junrui Liu")

(using menhir 2.1)

(package
 (name imp_cvg)
 (synopsis "CS292C Project 1")
 (depends
  ocaml
  dune
  base
  stdio
  menhir
  nice_parser
  ppx_jane
  alcotest
  csv
  fmt
  logs
  z3))
