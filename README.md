# Push_swap
<p align="center"><img src="https://cdn-images-1.medium.com/v2/resize:fit:1200/1*mb0KkzYAZDDSvdYC2MM5hg.jpeg" width="150" height="150" />

#
<h3><b>¤ Table of contents ¤</b></h3>

1) <b>How to use</b>
2) <b>Introduction</b>
3) <b>Instructions</b>
4) <b>Part 1: Parameters</b>
5) <b>Part 2: Example</b>

---
<h3><b>¤ How to use ¤</b></h3>

* Clone the git repository.
* Execute `make` in terminal.
* Execute the following line in the terminal: `./push_swap 1 5 2 4 3`
* You can add more numbers, and in any order, depending on what and how you wish to test.


---
<h3><b>¤ Introduction ¤</b></h3>
<p align="center">In "Push_swap" we are introduced to the concept of algorithms. To be more precise, we will handle sorting out the data on a stack with a limited set of instructions (set by the subject), using the lowest possible number of actions, meaning that we should focus on optimizing our program as much as possible.

---
<h3><b>¤ Instructions ¤</b></h3>

* Project must be written in C.

* Functions should not quit unexpectedly (segmentation fault, bus error, double free, etc) apart from undefined behaviors.

* All heap allocated memory space must be properly freed when necessary. No leaks will be tolerated.
If the subject requires it, you must submit a Makefile which will compile your source files to the required output with the flags -Wall, -Wextra and -Werror, use cc, and Makefile must not relink.

* Makefile must at least contain the rules $(NAME), all, clean, fclean and re.


---
<h3><b>¤ Part 1: Parameters ¤</b></h3>

<p align="left̨">

* You have 2 stacks named a and b.
* The stack a contains a random amount of negative and/or positive numbers
which cannot be duplicated. The stack b is empty.
* Global variables are forbidden.
* The program must display the smallest list of instructions possible to sort the stack
a, the smallest number being at the top.
* The goal is to sort the stack with the lowest possible number of operations. During
the evaluation process, the number of instructions found by your program will be
compared against a limit: the maximum number of operations tolerated. If your
program either displays a longer list or if the numbers aren’t sorted properly, your
grade will be 0.
* In case of error, it must display "Error" followed by a ’\n’ on the standard error.
Errors include for example: some arguments aren’t integers, some arguments are
bigger than an integer and/or there are duplicates.
