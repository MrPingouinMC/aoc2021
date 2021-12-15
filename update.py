import os
import sys
from datetime import date as date
from aocd.models import Puzzle
import json

INPUT_TEMPLATE = "input/%s_%s.mcfunction"
INPUT_NAME_TEMPLATE = "input/%s_%s"
STORAGE_LOAD_COMMAND_TEMPLATE = "data modify storage %s data set value %s"
STORAGE_NAME_TEMPLATE = "aoc_%d_day%d"
INPUT_LOAD_TEMPLATE = "execute if score YEAR AOC matches %d if score DAY AOC matches %d run data modify storage input data set from storage %s data"
INPUT_LOAD_TEMPLATE_TEST = "execute if score DAY AOC matches %d run data modify storage input data set from storage %s data"

def get_lastest_year():
	current_year = date.today().year
	#This refer to the day advent of code starts this year.
	new_year = date(current_year, 12, 1)
	if date.today() < new_year:
		return current_year - 1
	return current_year

def get_input_data(year, day):

	puzzle = Puzzle(year=year, day=day)
	r = None
	try:
		r = puzzle.input_data
	except:
		print("Unable to download data for year", year, "day", day)
	return r


def input_name(year, day):
	return STORAGE_NAME_TEMPLATE % (year, day)

def data_to_command(data, sname):
	base = STORAGE_LOAD_COMMAND_TEMPLATE % (sname, list(map(list, data.split("\n"))))
	return base

def send_error(msg=""):
	print(get_help_str())
	if len(msg) > 0:
		print(msg)

def get_help_str():
	return "Command format : update.py <year> <day>"


def parse_num_argument(argv, index, vmin, vmax, default=None, name=""):
	val = default
	if len(argv) <= index:
		if default == None:
			send_error()
			exit(1)
	else:
		val = argv[index]
	
	if val == "*":
		return list(range(vmin, vmax+1))

	if not val.isnumeric():
		send_error("Please specify a valid %s" % name)
		exit(2)	
	val = int(val)
	if val < vmin or val > vmax:
		send_error("Please specify a valid %s number between %d and %d" % (name, vmin, vmax))
		exit(3)

	return [val]

def make_input_load_template(data, d):

	if data[d]["day"] == 0:
		return INPUT_LOAD_TEMPLATE_TEST % (data[d]["year"], "test")
	year, day = data[d]["year"], data[d]["day"]
	return INPUT_LOAD_TEMPLATE % (year, day, STORAGE_NAME_TEMPLATE % (year, day))

def save_input_load_function(data):
	with open("core/load_input.mcfunction", 'w') as mcout:
		mcout.write("\n".join(map(lambda d: make_input_load_template(data, d) ,data)))

def save_downloaded(data):
	#print("saving", data)
	with open("downloaded.json", 'w') as json_out:
	    json.dump(data, json_out)

	with open("init_inputs.mcfunction", 'w') as mcout:
		mcout.write("\n".join(map(lambda d: "function aoc:%s" % d, data)))

def load_downloaded():
	if not os.path.isfile("downloaded.json"):
		return {}
	with open("downloaded.json") as json_file:
		return json.load(json_file)


def main():
	
	downloaded = load_downloaded()
	if len(sys.argv) >= 2 and sys.argv[1] == "test":
		with open("test.txt", "r") as t:
			data = t.read()
		with open("input/test.mcfunction", "w") as f:
			f.write(data_to_command(data, "test"))
			downloaded["input/test"] =  {"year":0,"day":0}
		save_downloaded(downloaded)
		save_input_load_function(downloaded)
		exit(0)


	latest_year = get_lastest_year()
	selected_years = parse_num_argument(sys.argv, 1, 2015, latest_year, default=str(latest_year), name="year")
	selected_days = parse_num_argument(sys.argv, 2, 1, 25, default="*", name="day")

	print("Attempt to download year=", selected_years[0], "day=", selected_days)
	print("...")


	if not os.path.isdir("input"):
		os.mkdir("input")
	for year in selected_years:
		for day in selected_days:
			data = get_input_data(year, day)
			if data == None:
				break
			with open(INPUT_TEMPLATE % (year, day), "w") as f:
				sname = input_name(year, day)
				f.write(data_to_command(data, sname))
				downloaded[INPUT_NAME_TEMPLATE % (year, day)] = {"year":year,"day":day}

	save_downloaded(downloaded)
	save_input_load_function(downloaded)

main()