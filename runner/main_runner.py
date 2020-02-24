import requests
import subprocess
import sys
import jsontotrace

def gen_games(repetitions):
	server_runner = ["/home/alastairflynn50_gmail_com/jdk1.8.0_202/bin/java", "-Dfile.encoding=UTF-8", "-classpath /home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/bin:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/FlyingSaucer/core-renderer.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JTidy/Tidy.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JGoodiesForms/forms-1.2.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure/clojure.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jcommon-1.0.17.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jfreechart-1.0.14.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Guava/guava-14.0.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/reflections/reflections-0.9.9-RC1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/javassist/javassist.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-4.1.0.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-platform-4.1.0.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Disruptor/disruptor-3.2.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-api-2.0-rc1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-core-2.0-rc1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/data/cfg:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-compress-1.8.1/commons-compress-1.8.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-codec-1.9/commons-codec-1.9.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Lucene/lucene-core-4.8.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-configuration-1.10/commons-configuration-1.10.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-lang-2.6/commons-lang-2.6.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-logging-1.1.3/commons-logging-1.1.3.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/hamcrest-core-1.3.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/junit-4.11.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Trove/trove-3.1a1.jar", "org.ggp.base.apps.utilities.GameServerRunner", "blarg", "games.ggp.org/stanford", "eightpuzzle", "30", "15", "0", "127.0.0.1", "9147", "Sancho"]
	player_runner = ["/home/alastairflynn50_gmail_com/jdk1.8.0_202/bin/java", "-Dfile.encoding=UTF-8", "-classpath /home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/bin:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/FlyingSaucer/core-renderer.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JTidy/Tidy.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JGoodiesForms/forms-1.2.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Clojure/clojure.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jcommon-1.0.17.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JFreeChart/jfreechart-1.0.14.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Guava/guava-14.0.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/reflections/reflections-0.9.9-RC1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/javassist/javassist.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-4.1.0.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JNA/jna-platform-4.1.0.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Disruptor/disruptor-3.2.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-api-2.0-rc1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Log4J/log4j-core-2.0-rc1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/data/cfg:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-compress-1.8.1/commons-compress-1.8.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-codec-1.9/commons-codec-1.9.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Lucene/lucene-core-4.8.1.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-configuration-1.10/commons-configuration-1.10.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-lang-2.6/commons-lang-2.6.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Commons/commons-logging-1.1.3/commons-logging-1.1.3.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/hamcrest-core-1.3.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/JUnit/junit-4.11.jar:/home/alastairflynn50_gmail_com/GPP-3rd-year-project/ggp-base-sancho/src/external/Trove/trove-3.1a1.jar", "org.ggp.base.apps.player.PlayerRunner", "9147", "Sancho"]
	r = requests.get("http://games.ggp.org/stanford/games/")
	game_list = list(map(lambda x : x.strip('"') ,r.text.strip('[').strip(']').split(',')))
	for game in game_list:
		for repetition in range(repetitions):
			subprocess.Popen(player_runner) #,stdout=subprocess.DEVNULL)
			subprocess.Popen(server_runner) #,stdout=subprocess.DEVNULL)



# arg 1 = action e.g. gen_games
# arg 2 for gen_games in no. of traces to gen for each game
arg = sys.argv[1]
if arg == 'gen_games':
	gen_games(int(sys.argv[2]))

