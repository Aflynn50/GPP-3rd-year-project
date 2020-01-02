# Files for my third year project
This repo contains variouse files for my third year project. At the time of writing this readme the repo contains a prolog eight puzzle solver and a parser  in Ocaml that transforms Game Description Language (GDL) into Prolog.
## Running eight puzzle
Use swipl and try something like ```start(B),bestfirst(B,Sol),showsol(Sol).```
## Generalting traces
Use swipl and run ```start(B),bestfirst(B,Sol),write_trace_to_file(Sol).```. This will put the traces into the runner at runner/data/train/eight_puzzle