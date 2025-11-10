**The console**, which is also called the command prompt, is an input/output interface and is usually physical or system-based, like the screen or the keyboard.
It is the interface for entering commands and displaying output.
**A terminal** reproduces the console behavior in a graphic window.
In fact, it communicates with the Shell. It sends the commands to the shell and in return receives the results.
**The shell** receives the commands that were sent by the terminal and sends back the results.

**A command** is an instruction given to the shell to perform a specific task. Its arguments are used to realize different options, which usually start by (- / --).


**To process the command**, the shell takes many steps:
- Shell reads the typed line in the terminal.

- Shell splits the line into command and arguments.

- It looks for the command in the directories listed in $PATH. If it finds it, then it runs it, and if not, then it sends an error.

- The command runs and performs its task.

- Shell returns the result to the terminal to be viewed.

