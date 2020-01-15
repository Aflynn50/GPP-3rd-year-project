#!/bin/bash
function swap()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}
echo "" > results.txt
python3 trace_preludes.py
#CHANGE BACK
swipl -s eightpuzzle.pl -g genopt -t halt --stack_limit=4g
mv eightpuzzle-traces/goal_train.dat runner/data/train/eight_puzzle_goal_train.dat
mv eightpuzzle-traces/legal_train.dat runner/data/train/eight_puzzle_legal_train.dat
mv eightpuzzle-traces/next_train.dat runner/data/train/eight_puzzle_next_train.dat
mv eightpuzzle-traces/terminal_train.dat runner/data/train/eight_puzzle_terminal_train.dat
mv eightpuzzle-traces/goal_test.dat runner/data/test/eight_puzzle_goal_test.dat
mv eightpuzzle-traces/legal_test.dat runner/data/test/eight_puzzle_legal_test.dat
mv eightpuzzle-traces/next_test.dat runner/data/test/eight_puzzle_next_test.dat
mv eightpuzzle-traces/terminal_test.dat runner/data/test/eight_puzzle_terminal_test.dat
cd runner
python3 runner.py parse
python3 runner.py train
python3 runner.py test
printf "Train: Opt - Test: Opt\n" >> ../results.txt
python3 runner.py nice_results >> ../results.txt
cd ..
if [ "$1" != "optopt" ]; then
python3 trace_preludes.py
swipl -s eightpuzzle.pl -g genrand -t halt --stack_limit=4g
mv eightpuzzle-traces/goal_train.dat runner/data/train/eight_puzzle_goal_train.dat
mv eightpuzzle-traces/legal_train.dat runner/data/train/eight_puzzle_legal_train.dat
mv eightpuzzle-traces/next_train.dat runner/data/train/eight_puzzle_next_train.dat
mv eightpuzzle-traces/terminal_train.dat runner/data/train/eight_puzzle_terminal_train.dat
cd runner
python3 runner.py parse
python3 runner.py train
python3 runner.py Test
printf "\nTrain: Rand - Test: Opt\n" >> ../results.txt
python3 runner.py nice_results >> ../results.txt
cd ..
swap runner/data/train/eight_puzzle_goal_train.dat runner/data/test/eight_puzzle_goal_test.dat
swap runner/data/train/eight_puzzle_legal_train.dat runner/data/test/eight_puzzle_legal_test.dat
swap runner/data/train/eight_puzzle_next_train.dat runner/data/test/eight_puzzle_next_test.dat
swap runner/data/train/eight_puzzle_terminal_train.dat runner/data/test/eight_puzzle_terminal_test.dat
cd runner
python3 runner.py parse
python3 runner.py train
python3 runner.py test
printf "\nTrain: Opt - Test: Rand\n" >> ../results.txt
python3 runner.py nice_results >> ../results.txt
cd ..
mv eightpuzzle-traces/goal_test.dat runner/data/train/eight_puzzle_goal_train.dat
mv eightpuzzle-traces/legal_test.dat runner/data/train/eight_puzzle_legal_train.dat
mv eightpuzzle-traces/next_test.dat runner/data/train/eight_puzzle_next_train.dat
mv eightpuzzle-traces/terminal_test.dat runner/data/train/eight_puzzle_terminal_train.dat
cd runner
python3 runner.py parse
python3 runner.py train
python3 runner.py test
printf "\nTrain: Rand - Test: Rand\n" >> ../results.txt
python3 runner.py nice_results >> ../results.txt
cd ..
fi
