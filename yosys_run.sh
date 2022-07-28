# read design

read_verilog iiitb_lifo.v

# generic synthesis
synth -top iiitb_lifo

# mapping to mycells.lib
dfflibmap -liberty /home/yashkthr/Desktop/iiitb_lifo/lib/
abc -liberty /home/yashkthr/Desktop/iiitb_lifo/lib/
clean
flatten
# write synthesized design
write_verilog -assert synth_ripple_carry_adder.v