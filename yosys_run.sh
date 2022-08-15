# read design
read_verilog iiitb_lifo.v

# generic synthesis
synth -top iiitb_lifo

# mapping to mycells.lib
#read_liberty -lib /home/yash/Desktop/iiitb_lifo/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
dfflibmap -liberty /home/yash/Desktop/iiitb_lifo/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/yash/Desktop/iiitb_lifo/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

opt
clean
flatten

# write synthesized design
write_verilog -noattr iiitb_lifo_net.v
