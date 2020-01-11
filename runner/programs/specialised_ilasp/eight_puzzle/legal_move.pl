ILASP version 3.4.0 (release built on Dec  7 2019)
usage: ILASP [options] [file]

General Options:
    --search-space,        -s    : print the search space (generated from the mode bias).
    --quiet,               -q    : only print the solution and no other information.
    --version=[1|2|2i|3]         : choose the version of ILASP to run. Different versions
                                     are suited to different tasks. For more details run
                                     "ILASP --version-info".


Bias Options:
    --no-constraints,      -nc   : omit constraints from the search space.
    --no-aggregates,       -na   : omit aggregates (choice rules) from the search space.
    -ml=[integer]                : set the maximum number of literals which may occur in
                                     the body of each rule of the hypothesis. By default,
                                     this is 3.
    --max-rule-length=[integer]  : set the maximum number of literals which may occur in
                                     each rule of the hypothesis. By default, this is 5.
    --max-wc-length=[integer]    : set the maximum number of literals which may occur in
                                     each weak constraint in the hypothesis. By default,
                                     this is 3.


Clingo Options:
    --clingo5,                   : generate clingo 5 programs, rather than clingo 4.3.
    --clingo "path [options]"    : use the clingo executable at "path" with the specified options.
                                   Note that by default, ILASP uses clingo 4.3. Also note that some
                                   options may interfere with ILASP's procedure. Options that only
                                   change the configuration of heuristics in clingo should be fine.


Representation Options:
    --simple                : simplify the representation of contexts.




ILASP (Inductive Learning of Answer Set Programs) version 3 was implemented by Mark Law
and is based on the work by Mark Law, Alessandra Russo and Krysia Broda on presented in
JELIA 2014 and ICLP 2015 and ICLP 2016 as "Inductive Learning of Answer Set Programs",
"Learning Weak Constraints in Answer Set Programming" and "Iterative Learning of
Answer Set Programs from Context Dependent Examples" respectively.

Please email all bug reports to "mark.law09@imperial.ac.uk"
