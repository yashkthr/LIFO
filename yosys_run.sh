# read design

read_verilog iiitb_lifo.v

# generic synthesis
synth -top iiitb_lifo

# mapping to mycells.lib
dfflibmap -liberty /home/yashkthr/Desktop/iiitb_lifo/lib/‌sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/yashkthr/Desktop/iiitb_lifo/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
# write synthesized design
write_verilog -noattr synth_ripple_carry_adder.v