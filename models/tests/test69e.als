module tests/test
open tests/test69f as zz

sig A, B { f: Int }
sig C { g: B }
run {
    some A$ && some A$f
    some B$ && some B$f
    some C$ && some C$g
    some Sub$ && some Sub$f
    some zz/Sub$ && some zz/Sub$f
    one A<:f
    one B<:f
    one g
} // expect test69f to give an error due to "A$" not found inside test69f
