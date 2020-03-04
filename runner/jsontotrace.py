import json
import os
from shutil import rmtree
from prelude_copyer import print_preludes
from pathlib import Path


def format_pred(pred):
    p1 = pred.strip().split(' ')
    p2 = p1[0] + '(' + ",".join(p1[1:]) + ')'
    return p2

def parse_state(state_string):
    tokenised = state_string[2:-2].split(" ")
    atoms = []
    inbracket = False
    for tok in tokenised:
        if inbracket:
            if tok == ")":
                atoms.append(s[0] + '(' + ",".join(s[1:]) + ')')
                inbracket = False
            else:
                s.append(tok)
        elif tok == "(":
            inbracket = True
            s = []
        else:
            atoms += [tok]
    return atoms

def parse_legal(roles, legal_moves):
    legals = []
    for role_num in range(len(legal_moves)):
        for move in legal_moves[role_num]:
            tokenised = move.split(" ")
            if tokenised[0] == "(":
                s = tokenised[1:-1]
                legals.append("legal_" + s[0] + '(' + roles[role_num] + "," + ",".join(s[1:]) + ')')
            elif len(tokenised) == 1:
                legals.append("legal(" + roles[role_num] + "," + move + ")")
            else:
                raise Exception
    return legals

def parse_move(roles,move):
    moves = []
    for role_num in range(len(roles)):
        tokenised = (move[role_num]).split(" ")
        if tokenised[0] == "(":
            s = tokenised[1:-1]
            moves.append("does_" + s[0] + '(' + roles[role_num] + "," + ",".join(s[1:]) + ')')
        else:
            moves.append("does(" + roles[role_num] + "," + move[role_num] + ")")
    return moves


def format_pred(pred,s):
    if "(" in s:
        return pred + '_' + s
    else:
        return pred + '(' + s + ')'

def format_state(pred,state):
    return "\n\t".join(list(map(lambda x: format_pred(pred,x), state)))

def next(output_file,states,moves):
    with open(output_file, 'a') as output:
        for i in range(0,len(states)-1):
            output.write('\n\nbackground:\n\t')
            output.write(moves[i] + "\n\t")
            output.write(format_state("true",states[i]))
            output.write("\n\n---\n\npositives:\n\t")
            output.write(format_state("next",states[i+1]))
            output.write("\n\n---")
        output.close()
    
def goal(output_file,states):
    with open(output_file, 'a') as output:
        for i in range(0,len(states)):
            output.write('\n\nbackground:\n\t')
            output.write(format_state("true",states[i]))
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
            output.write(format_state("true",states[i]))
            output.write("\n\n---\n\npositives:\n\t")
            output.write("\n\t".join(legall[i]))
            output.write("\n\n---")
        output.close()

def terminal(output_file,states):
    with open(output_file, 'a') as output:
        for i in range(0,len(states)):
            output.write('\n\nbackground:\n\t')
            output.write(format_state("true",states[i]))
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
           
            states = list(map(parse_state,raw_data['states']))

            moves = list(map(lambda x: parse_move(raw_data['roles'],x), raw_data['moves']))

            legals = list(map(lambda x: parse_legal(raw_data['roles'],x), raw_data['legalMoves']))

            game_name = raw_data['gameName'].lower().replace(" ", "_")
            print_preludes(prelude_dir, train_dir, test_dir,hastocontain=game_name)
            for train_or_test_dir in [train_dir, test_dir]:
                for dat_file in os.listdir(train_or_test_dir):
                    direc = train_or_test_dir + dat_file
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
