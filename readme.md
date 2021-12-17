 # Advent of code 2021
 
 Here is my attempt to solve Advent of Code 2021 using minecraft datapack and functions with pure vanilla vanilla commands (no mods, external tool or compiler).

### Install

Requires [advent-of-code-data](https://github.com/wimglenn/advent-of-code-data) to download inputs : 
```sh
pip install advent-of-code-data
```
Also read [Quickstart](https://github.com/wimglenn/advent-of-code-data#quickstart) on how to bind you AOC session ID 

Run to download inputs for a single day :
```sh
python update.py <year> [day]
```
Run ```/function aoc:init``` once to initialize.
Then, in game, you can run a solution with :
```/function aoc:sol/day1/part1```



### How to use
The repository must be placed at the base of the `functions` folder, in an `aoc` namespace of the datapack.

On reload, inputs are loaded into a `aoc_<year>_day<day>` storage.

Since minecraft don't have convenient string manipulation, the input is transformed in the following way : 
```
1,2,3
abc
123 -456
```
becomes
`[["1",",","2",",","3"],["a","b","c"],["1","2","3"," ","-","4","5","6"]]`

