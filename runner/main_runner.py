#!/usr/bin/env python3

import time
import requests
import subprocess
import sys
import jsontotrace
import re
import os
import runner

tourney_names = ["optimaltraces","randomtraces"]
optimal = True
runner_dir = "/home/alastairflynn50_gmail_com/GPP-3rd-year-project/runner/"

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
    return ["/home/alastairflynn50_gmail_com/jdk1.8.0_202/bin/java", "-Dfile.encoding=UTF-8", "-classpath", "/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/bin:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/FlyingSaucer/core-renderer.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JTidy/Tidy.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JGoodiesForms/forms-1.2.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure/clojure.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jcommon-1.0.17.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jfreechart-1.0.14.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Guava/guava-14.0.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/reflections/reflections-0.9.9-RC1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/javassist/javassist.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-4.1.0.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-platform-4.1.0.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Disruptor/disruptor-3.2.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-api-2.0-rc1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-core-2.0-rc1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/data/cfg:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-compress-1.8.1/commons-compress-1.8.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-codec-1.9/commons-codec-1.9.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Lucene/lucene-core-4.8.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-configuration-1.10/commons-configuration-1.10.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-lang-2.6/commons-lang-2.6.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-logging-1.1.3/commons-logging-1.1.3.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/hamcrest-core-1.3.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/junit-4.11.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Trove/trove-3.1a1.jar", "org.ggp.base.apps.utilities.GameServerRunner", tourney_name, "local", game, "30", "15", "0"] + players
    #return ["/home/aflynn50/Downloads/jdk-8u202-linux-x64/jdk1.8.0_202/bin/java", "-Dfile.encoding=UTF-8", "-classpath", "/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/bin:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/FlyingSaucer/core-renderer.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JTidy/Tidy.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JGoodiesForms/forms-1.2.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure/clojure.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jcommon-1.0.17.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jfreechart-1.0.14.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Guava/guava-14.0.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/reflections/reflections-0.9.9-RC1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/javassist/javassist.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-4.1.0.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-platform-4.1.0.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Disruptor/disruptor-3.2.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-api-2.0-rc1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-core-2.0-rc1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/data/cfg:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-compress-1.8.1/commons-compress-1.8.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-codec-1.9/commons-codec-1.9.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Lucene/lucene-core-4.8.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-configuration-1.10/commons-configuration-1.10.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-lang-2.6/commons-lang-2.6.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-logging-1.1.3/commons-logging-1.1.3.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/hamcrest-core-1.3.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/junit-4.11.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Trove/trove-3.1a1.jar", "org.ggp.base.apps.utilities.GameServerRunner", torny_name, "games.ggp.org/stanford", game, "30", "15", "0"] + players

def get_player(num, optimal=True): # first player in num 0
    
    if optimal:
        name = "Sancho"
    else:
        name = "RandomGamer"

    return ["/home/alastairflynn50_gmail_com/jdk1.8.0_202/bin/java", "-Dfile.encoding=UTF-8", "-classpath", "/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/bin:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/FlyingSaucer/core-renderer.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JTidy/Tidy.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JGoodiesForms/forms-1.2.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure/clojure.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jcommon-1.0.17.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jfreechart-1.0.14.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Guava/guava-14.0.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/reflections/reflections-0.9.9-RC1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/javassist/javassist.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-4.1.0.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-platform-4.1.0.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Disruptor/disruptor-3.2.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-api-2.0-rc1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-core-2.0-rc1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/data/cfg:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-compress-1.8.1/commons-compress-1.8.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-codec-1.9/commons-codec-1.9.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Lucene/lucene-core-4.8.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-configuration-1.10/commons-configuration-1.10.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-lang-2.6/commons-lang-2.6.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-logging-1.1.3/commons-logging-1.1.3.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/hamcrest-core-1.3.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/junit-4.11.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Trove/trove-3.1a1.jar", "org.ggp.base.apps.player.PlayerRunner", "9147", name]
    #return ["/home/aflynn50/Downloads/jdk-8u202-linux-x64/jdk1.8.0_202/bin/java", "-Dfile.encoding=UTF-8", "-classpath", "/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/bin:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/FlyingSaucer/core-renderer.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JTidy/Tidy.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JGoodiesForms/forms-1.2.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure/clojure.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jcommon-1.0.17.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jfreechart-1.0.14.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Guava/guava-14.0.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/reflections/reflections-0.9.9-RC1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/javassist/javassist.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-4.1.0.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-platform-4.1.0.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Disruptor/disruptor-3.2.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-api-2.0-rc1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-core-2.0-rc1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/data/cfg:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-compress-1.8.1/commons-compress-1.8.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-codec-1.9/commons-codec-1.9.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Lucene/lucene-core-4.8.1.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-configuration-1.10/commons-configuration-1.10.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-lang-2.6/commons-lang-2.6.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-logging-1.1.3/commons-logging-1.1.3.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/hamcrest-core-1.3.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/junit-4.11.jar:/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/ggp-base-sancho/src/external/Trove/trove-3.1a1.jar", "org.ggp.base.apps.player.PlayerRunner", "9147", "Sancho"]


def get_num_roles(game):
    roles = 0
    r = requests.get("http://games.ggp.org/stanford/games/" + game + "/rulesheet.kif")
    for line in r.text.split('\n'):
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
    r = requests.get("http://127.0.0.1:9140/games/")
    game_list = list(map(lambda x : x.strip('"') ,r.text.strip('[').strip(']').split(',')))
    for game in game_list:
        print('/n' + "Starting " + game + '/n at' + time.strftime("%d %b %H:%M:%S", time.gmtime()))
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

def move_json_files(game_type):
    if game_type == 'optimal':
        tourney_name = tourney_names[0]
    elif game_type == 'random':
        tourney_name = tourney_names[1]
    else:
        raise Exception("bad game type (optimal or random)")
    game_traces = os.getcwd() + '/' + tourney_name + '/'
    jsontotrace.convert(game_traces,runner_dir)

def run_ilp(game_type):
    if game_type == 'optimal':
        tourney_name = tourney_names[0]
    elif game_type == 'random':
        tourney_name = tourney_names[1]
    else:
        raise Exception("bad game type (optimal or random)")
    runner.parse_train_and_test()
    with open(tourney_name + "_results.txt",'a') as f:
        f.write(time.strftime("%d %b %H:%M:%S", time.gmtime()) + '\n')
        res = runner.print_nice(latex=True)
        f.write(res)
    


# arg 1 = action e.g. gen_games
# arg 2 = game type, optimal or random
# arg 3 for gen_games in no. of traces to gen for each game 
arg = sys.argv[1]
if arg == 'gen_games':
    gen_games(sys.argv[2], int(sys.argv[3]))
if arg == 'test':
    tourney_name = 'optimal'
    with open(tourney_name + "_results.txt",'a') as f:
        f.write(time.strftime("%d %b %H:%M:%S", time.gmtime()) + '\n')
        res = runner.print_nice(latex=True)
        f.write(res)
if arg == 'train':
    move_json_files(sys.argv[2])
    run_ilp(sys.argv[2])
