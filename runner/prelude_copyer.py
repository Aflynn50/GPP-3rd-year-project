import os

source_dir = "/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/runner/preludes/"
dest_dir_train = "/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/runner/data/train/"
dest_dir_test = "/home/aflynn50/Documents/Uni/Third-year-project/GPP-3rd-year-project/runner/data/test/"

def print_preludes(hastocontain=""):
	for filename in os.listdir(source_dir):
		if filename.endswith(".dat") and (hastocontain in filename):
			with open(source_dir + filename, 'r') as source:
				dash_cnt = 0
				if filename.endswith("test.dat"):
					dest_dir = dest_dir_test
				elif filename.endswith("train.dat"):
					dest_dir = dest_dir_train
				with open(dest_dir + filename, 'w') as dest:
					line = source.readline()
					while line:
						dest.write(line)
						line = source.readline()
						if "---" in line:
							dash_cnt += 1
							if dash_cnt == 2:
								break
					dest.write(line)
