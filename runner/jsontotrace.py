import json
import os
from shutil import rmtree
from prelude_copyer import print_preludes
from pathlib import Path


def format_pred(pred):
    p1 = pred.strip().split(' ')
    p2 = p1[0] + '(' + ",".join(p1[1:]) + ')'
    return p2

def format_state(pred,state):
    return "\n\t".join(list(map(lambda x: pred + x, state)))

def next(output_file,states,moves):
    with open(output_file, 'a') as output:
        for i in range(0,len(states)-1):
            output.write('\n\nbackground:\n\t')
            output.write(moves[i] + "\n\t")
            output.write(format_state("true_",states[i]))
            output.write("\n\n---\n\npositives:\n\t")
            output.write(format_state("next_",states[i+1]))
            output.write("\n\n---")
        output.close()
    
def goal(output_file,states):
    with open(output_file, 'a') as output:
        for i in range(0,len(states)):
            output.write('\n\nbackground:\n\t')
            output.write(format_state("true_",states[i]))
            output.write("\n\n---\n\npositives:\n\t")
            if i == len(states)-1:#do this properly
                output.write("goal(robot, 100)")
            else:
                output.write("goal(robot, 0)")
            output.write("\n\n---")
        output.close()


def legal(output_file,states,legall):
    if len(legall) != len(states):
        raise Exception('len(legal) != len(states)') 
    with open(output_file, 'a') as output:
        for i in range(0,len(legall)):
            output.write('\n\nbackground:\n\t')
            output.write(format_state("true_",states[i]))
            output.write("\n\n---\n\npositives:\n\t")
            output.write("\n\t".join(legall[i]))
            output.write("\n\n---")
        output.close()

def terminal(output_file,states):
    with open(output_file, 'a') as output:
        for i in range(0,len(states)):
            output.write('\n\nbackground:\n\t')
            output.write(format_state("true_",states[i]))
            output.write("\n\n---\n\npositives:")
            if i == len(states)-1:
                output.write("\n\tterminal()")
            output.write("\n\n---")
        output.close()


def convert(matches_dir, runner_dir): # both should have ending slash
    directory = matches_dir
    train_dir = runner_dir + "data/train/"
    test_dir = runner_dir + "data/test/"
    prelude_dir = runner_dir + "preludes/"
    try:
        rmtree(train_dir)
    except FileNotFoundError:
        pass
    try:
        rmtree(test_dir)
    except FileNotFoundError:
        pass
    os.makedirs(train_dir)
    os.makedirs(test_dir)
    for filename in os.listdir(directory):  
        if filename.endswith(".json"):
            with open(directory + filename) as f:
                raw_data = json.load(f) # raw_data is a dict
            states = []
            for state_string in raw_data['states']:
                s1 = state_string.split(") (")
                s2 = [s1[0][3:]] + s1[1:]
                s3 = s2[:-1] + [s2[-1][:-3]]
                state_list = list(map(format_pred, s3))
                state_list.sort()
                states.append(state_list)

            m1 = list(map(lambda x: x[0].strip("(").strip(")"), raw_data['moves']))
            m2 = list(map(format_pred,m1))
            moves = list(map(lambda x: "does_"+ x, m2))

            legals = []
            for legall in raw_data['legalMoves']:
                lmoves = []
                for player_num in range(len(legall)):  
                    for lmove in legall[player_num]:
                        if lmove == "noop":
                            l3 = "legal(" + raw_data['roles'][player_num] + ", noop)"
                        else: 
                            l1 = lmove.strip("(").strip(")").strip().split(" ")
                            l2 = ["legal_" + l1[0]] + [raw_data['roles'][player_num]] + l1[1:]
                            l3 = l2[0] + '(' + ",".join(l2[1:]) + ')'
                        lmoves.append(l3)
                legals.append(lmoves)

            game_name = raw_data['gameName'].lower().replace(" ", "_")
            print_preludes(prelude_dir, train_dir, test_dir,hastocontain=game_name)
            for dat_file in os.listdir(train_dir):
                for direc in [train_dir+dat_file, test_dir+dat_file]:
                    if game_name in dat_file:
                        if "next" in dat_file:
                            next(direc,states,moves)
                        if "goal" in dat_file:
                            goal(direc,states)
                        if "legal" in dat_file:
                            legal(direc,states,legals)
                        if "terminal" in dat_file:
                            terminal(direc,states)

if __name__ == "__main__":
    convert("/home/aflynn50/ggp-saved-matches/","/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/runner/")
