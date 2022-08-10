# iiitb_lifo - LIFO Buffer
# Introduction
LIFO (Last in First out) Buffer
Many times in embedded programming, we need to use a data structure to organize our data, and a good example of this is the buffer. Oftentimes, we have a source of data, or a producer, and we also have a destination for data, a consumer. These two devices usually need to pass data in between one another. It is possible that these two devices often do not work at the same speed. Sometimes, one is much faster at producing or consuming the data. This means that we cannot just call the consumer from the producer to handle that data directly with a function call. We need an intermediate location to store data to act as a buffer for this interface. This buffer is usually implemented as a data structure in shared memory between these two processing interfaces.
The LIFO buffer adds data and removes data from the same end. The LIFO data structure can be referred to as a stack, but not be confused with the processor stack. The LIFO differs from the processor stack because it adds and removes data of the same type, whereas the stack on the processor adds or removes different types of data depending on the type of calling convention or function. In terms of memory, this buffer usually is implemented in an array-like format but it is not an array. LIFO buffers are a contiguous piece of memory that require special methods to add and remove data. 

# Application
A stack is a reserved area in the memory which is used by the processor to store data that is not being used currently by the processor but is still is required future processing steps. Stack memories are useful when there is a need to call a subroutine function. If the registers used by the subroutine were being used in the calling portion of the program, then they cannot be erased. Upon returning to the calling portion of the program these registers should have the same values that they had before the subroutine call and not the values of the variables used in the subroutine. When a processor switches between tasks in a multitasking environment then a context of the all the tasks that are not currently running must be stored to allow for the switching back to them. This is done by storing the context of the inactive tasks in the stack.

Stacks are implemented as Last In First Out (LIFO) Buffers. The term PUSH to stack means putting data in the stack and the term POP from stack means removing the data from the top of stack (TOS)

The push and pull operations for a stack are described below:

    Push Operation
    Steps:
        1. Decrement Stack Pointer
        2. Push/Write Data to the top of the stack


    Pop Operation
    Steps:
        1. Pop/Read Data from the top of the stack
        2. Increment the Stack Pointer

# Refernce Circuit Diagram
![Screenshot1](https://user-images.githubusercontent.com/69398841/183975785-7f31cbfc-4abf-4ba6-9321-2b90d5e91be0.png)

# Software used
## Icarus Verilog
Icarus Verilog is a Verilog simulation and synthesis tool. It operates as a compiler, compiling source code written in Verilog (IEEE-1364) into some target format. For batch simulation, the compiler can generate an intermediate form called vvp assembly. This intermediate form is executed by the ``vvp'' command. For synthesis, the compiler generates netlists in the desired format. The compiler proper is intended to parse and elaborate design descriptions written to the IEEE standard IEEE Std 1364-2005.
Icarus Verilog is available for Linux, FreeBSD, OpenSolaris, AIX, Microsoft Windows, and Mac OS X. Released under the GNU General Public License, Icarus Verilog is free software.


## GTKWave
GTKWave is an analysis tool used to perform debugging on Verilog or VHDL simulation models. With the exception of interactive VCD viewing, it is not intended to be run interactively with simulation, but instead relies on a post-mortem approach through the use of dumpfiles. It is a fully featured GTK+ based wave viewer for Unix, Win32, and Mac OSX which reads LXT, LXT2, VZT, FST, and GHW files as well as standard Verilog VCD/EVCD files and allows their viewing.
[GTKWave Documentation](http://gtkwave.sourceforge.net/gtkwave.pdf)

### Installing procedure for Ubuntu
```
$ sudo apt-get install verilog
$ sudo apt-get install gtkwave
```
For more information: click [here](https://iverilog.fandom.com/wiki/Installation_Guide#Ubuntu_Linux)

# Functional Simulation
To clone the repository and download the netlist files for simulation, enter the following commands in your terminal:
```
$ sudo apt install git
$ git clone https://github.com/yashkthr/iiitb_lifo.git
$ cd iiitb_lifo/
```

### Compile and Run
To simulate and run the verilog, enter the following command in your terminal.
```
$ iverilog iiitb_lifo.v iiitb_lifo_tb.v
$ ./a.out
```
```
$ gtkwave iiitb_lifo_out.vcd
```
# Functional Characteristics
![iiitb_lifo_gtkwave](https://user-images.githubusercontent.com/69398841/183555415-b5bf45a9-1a3c-4b97-ad85-8bbc00d7a289.png)

# Synthesis of verilog code
## Yosys
This is a framework for RTL synthesis tools. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains. Yosys can be adapted to perform any synthesis job by combining the existing passes (algorithms) using synthesis scripts and adding additional passes as needed by extending the yosys C++ code base. Yosys is free software licensed under the ISC license (a GPL compatible license that is similar in terms to the MIT license or the 2-clause BSD license).
[Yosys GitHub](https://github.com/YosysHQ/yosys)

```
yosys
yosys> script yosys_run.sh
yosys> show
yosys> stat
```
![Screenshot2](https://user-images.githubusercontent.com/69398841/183974577-e8149549-9693-41df-a7d2-1a8f3ba964a5.png)

# Contributors
Kunal Ghosh, Co-founder of VLSI System Design (VSD) Corp. Pvt. Ltd.

# Author
Yash Kothari, M.Tech Student, IIIT Bangalore
E-Mail: Yash.Kothari@iiitb.ac.in
