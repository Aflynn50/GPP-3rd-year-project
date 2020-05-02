#!/usr/bin/env python3

import time
import subprocess
import sys
import jsontotrace
import re
import os
import runner

tourney_names = ["optimaltraces_iggp","randomtraces_iggp"]
git_root = "/home/aflynn50/GPP-3rd-year-project/"
java = "/home/aflynn50/jdk1.8.0_202/bin/java"
#git_root = "/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/"
#java = "/home/aflynn50/Downloads/jdk-8u202-linux-x64/jdk1.8.0_202/bin/java"
optimal = True
runner_dir = git_root + "runner/"
cp_pre = git_root + "ggp-base-sancho/src/external/"
local_games_dir = os.getcwd() + '/games/games/'
local_games = next(os.walk(local_games_dir))[1]


def get_server(game,num_players,optimal=True):
    if optimal:
        name = "Sancho"
        tourney_name = tourney_names[0]
    else:
        name = "RandomGamer"
        tourney_name = tourney_names[1]
    players = []
    for i in range(num_players):
        players += ["127.0.0.1", str(9147+i), name]
    return [java, "-Dfile.encoding=UTF-8", "-classpath", git_root + "ggp-base-sancho/bin:" + cp_pre + "FlyingSaucer/core-renderer.jar:" + cp_pre + "JTidy/Tidy.jar:" + cp_pre + "JGoodiesForms/forms-1.2.1.jar:" + cp_pre + "Clojure:" + cp_pre + "Clojure/clojure.jar:" + cp_pre + "JFreeChart/jcommon-1.0.17.jar:" + cp_pre + "JFreeChart/jfreechart-1.0.14.jar:" + cp_pre + "Guava/guava-14.0.1.jar:" + cp_pre + "reflections/reflections-0.9.9-RC1.jar:" + cp_pre + "javassist/javassist.jar:" + cp_pre + "JNA/jna-4.1.0.jar:" + cp_pre + "JNA/jna-platform-4.1.0.jar:" + cp_pre + "Disruptor/disruptor-3.2.1.jar:" + cp_pre + "Log4J/log4j-api-2.0-rc1.jar:" + cp_pre + "Log4J/log4j-core-2.0-rc1.jar:" + git_root + "ggp-base-sancho/data/cfg:" + cp_pre + "Commons/commons-compress-1.8.1/commons-compress-1.8.1.jar:" + cp_pre + "Commons/commons-codec-1.9/commons-codec-1.9.jar:" + cp_pre + "Lucene/lucene-core-4.8.1.jar:" + cp_pre + "Commons/commons-configuration-1.10/commons-configuration-1.10.jar:" + cp_pre + "Commons/commons-lang-2.6/commons-lang-2.6.jar:" + cp_pre + "Commons/commons-logging-1.1.3/commons-logging-1.1.3.jar:" + cp_pre + "JUnit/hamcrest-core-1.3.jar:" + cp_pre + "JUnit/junit-4.11.jar:" + cp_pre + "Trove/trove-3.1a1.jar", "org.ggp.base.apps.utilities.GameServerRunner", tourney_name, "local", game, "30", "15", "0"] + players

def get_player(num, optimal=True): # first player in num 0
    if optimal:
        name = "Sancho"
    else:
        name = "RandomGamer"
    return [java, "-Xms1024M", "-Dfile.encoding=UTF-8", "-classpath", git_root + "ggp-base-sancho/bin:" + cp_pre + "FlyingSaucer/core-renderer.jar:" + cp_pre + "JTidy/Tidy.jar:" + cp_pre + "JGoodiesForms/forms-1.2.1.jar:" + cp_pre + "Clojure:" + cp_pre + "Clojure/clojure.jar:" + cp_pre + "JFreeChart/jcommon-1.0.17.jar:" + cp_pre + "JFreeChart/jfreechart-1.0.14.jar:" + cp_pre + "Guava/guava-14.0.1.jar:" + cp_pre + "reflections/reflections-0.9.9-RC1.jar:" + cp_pre + "javassist/javassist.jar:" + cp_pre + "JNA/jna-4.1.0.jar:" + cp_pre + "JNA/jna-platform-4.1.0.jar:" + cp_pre + "Disruptor/disruptor-3.2.1.jar:" + cp_pre + "Log4J/log4j-api-2.0-rc1.jar:" + cp_pre + "Log4J/log4j-core-2.0-rc1.jar:" + git_root + "ggp-base-sancho/data/cfg:" + cp_pre + "Commons/commons-compress-1.8.1/commons-compress-1.8.1.jar:" + cp_pre + "Commons/commons-codec-1.9/commons-codec-1.9.jar:" + cp_pre + "Lucene/lucene-core-4.8.1.jar:" + cp_pre + "Commons/commons-configuration-1.10/commons-configuration-1.10.jar:" + cp_pre + "Commons/commons-lang-2.6/commons-lang-2.6.jar:" + cp_pre + "Commons/commons-logging-1.1.3/commons-logging-1.1.3.jar:" + cp_pre + "JUnit/hamcrest-core-1.3.jar:" + cp_pre + "JUnit/junit-4.11.jar:" + cp_pre + "Trove/trove-3.1a1.jar", "org.ggp.base.apps.player.PlayerRunner", "9147", name]


def get_num_roles(game):
    roles = 0
    rules = local_games_dir + game + '/' + game + ".kif"
    with open(rules, 'r') as file:
        lines = file.readlines()
    for line in lines:
        m = re.search(r'\([ ]*role ([^\?\)]*)\)', line)
        if m:
            roles += 1
    return roles

def gen_games(game_type,repetitions):
    if game_type == 'optimal':
        optimal = True
    elif game_type == 'random':
        optimal = False
    else:
        raise Exception("bad game type (optimal or random)")
    global local_games
    print(local_games)
    for game in local_games:
        print('\n' + "Starting " + game + ' at ' + time.strftime("%d %b %H:%M:%S", time.gmtime()) + "\n")
        num_players = get_num_roles(game)
        server_runner = get_server(game,num_players,optimal=optimal)
        player_runners = [get_player(x,optimal=optimal) for x in range(num_players)]
        for repetition in range(repetitions):
            playerps = [subprocess.Popen(p,stdout=subprocess.DEVNULL) for p in player_runners]
            time.sleep(20)
            serverp = subprocess.Popen(server_runner)
            serverp.wait()
            for p in playerps:
                try:
                    p.wait(2)
                except subprocess.TimeoutExpired:
                    print("Player didn't die for iteration " + str(repetition+1) + " of game " + game + " at " + time.strftime("%d %b %H:%M:%S", time.gmtime()))
                    p.kill()
            k = subprocess.Popen(["pkill", "-f", server_runner[0]])
            k.wait()
        print("The game " + game + " finished at " + time.strftime("%d %b %H:%M:%S", time.gmtime()))
    print("all done")

def move_json_files(game_type,train_or_test=""):
    if game_type == 'optimal':
        game_trace_folders = [os.getcwd() + '/' + tourney_names[0] + '/']
    elif game_type == 'random':
        game_trace_folders = [os.getcwd() + '/' + tourney_names[1] + '/']
    elif game_type == 'mixed':
        game_trace_folders = [os.getcwd() + '/' + tourney_names[1] + '/', os.getcwd() + '/' + tourney_names[0] + '/']

    else:
        raise Exception("bad game type (optimal or random)")
    jsontotrace.convert(game_trace_folders,runner_dir,train_or_test=train_or_test)

def run_train(game_type):
    move_json_files(game_type,train_or_test='train')
    if game_type == 'optimal':
        tourney_name = tourney_names[0]
    elif game_type == 'random':
        tourney_name = tourney_names[1]
    elif game_type == 'mixed':
        tourney_name = 'mixed'
    else:
        raise Exception("bad game type (optimal or random)")
    runner.parse_and_train()
    with open(tourney_name + "_results.txt",'a') as f:
        f.write(time.strftime("%d %b %H:%M:%S", time.gmtime()) + '\n')
        res = runner.print_nice(latex=True)
        f.write(res)   


def auto_tester():
    subprocess.run(['rm','-r',git_root + "runner/programs"])
    subprocess.run(['cp','-r',git_root + "runner/programs_mixed",git_root + 'runner/programs'] )
    move_json_files('optimal',train_or_test='test')
    runner.parse_and_test()
    os.system('python3 runner.py nice_results > ' + git_root + 'runner/mixed_on_optimal.txt')
    print("results for mixed on optimal")
    runner.print_nice()

    subprocess.run(['rm','-r',git_root + "runner/programs"])
    subprocess.run(['cp','-r',git_root + "runner/programs_mixed_16",git_root + 'runner/programs'] )
    move_json_files('random',train_or_test='test')
    runner.parse_and_test()
    os.system('python3 runner.py nice_results > ' + git_root + 'runner/mixed_on_random_16.txt')
    print("results for mixed on random 16")
    runner.print_nice()

    move_json_files('optimal',train_or_test='test')
    runner.parse_and_test()
    os.system('python3 runner.py nice_results > ' + git_root + 'runner/mixed_on_optimal_16.txt')
    print("results for mixed on optimal 16")
    runner.print_nice()

    subprocess.run(['rm','-r',git_root + "runner/programs"])
    subprocess.run(['cp','-r',git_root + "runner/programs_new_optimal",git_root + 'runner/programs'] )
    move_json_files('random',train_or_test='test')
    runner.parse_and_test()
    os.system('python3 runner.py nice_results > ' + git_root + 'runner/optimal_on_random.txt')
    print("results for optimal on random")
    runner.print_nice()

# arg 1 = action e.g. gen_games
# arg 2 = game type, optimal or random
# arg 3 for gen_games in no. of traces to gen for each game 
arg = sys.argv[1]
if arg == 'gen_games':
    gen_games(sys.argv[2], int(sys.argv[3]))
if arg == 'train':
    run_train(sys.argv[2])
if arg == 'test_on':
    move_json_files(sys.argv[2],train_or_test='test')
    runner.parse_and_test()
if arg == 'json':
    move_json_files(sys.argv[2],train_or_test='train')
if arg == 'autotest':
    auto_tester()




