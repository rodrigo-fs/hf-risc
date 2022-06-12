vcom ./bshifter.vhd ./alu.vhd ./control.vhd ./reg_bank.vhd ./datapath.vhd ./int_control.vhd ./cpu.vhd ./uart.vhd ./basic_soc.vhd ./boot_ram.vhd ./ram.vhd 
#vcom ./xtea.vhd  ./hf-riscv_basic_soc_xtea_tb.vhd 
vcom -cover bcesx ./mini_aes.vhdl ./bram_block_a.vhdl ./bram_block_b.vhdl ./counter2bit.vhdl ./folded_register.vhdl ./io_interface.vhdl ./xtime.vhdl ./key_scheduler.vhdl ./mix_column.vhdl
vcom ./hf-riscv_basic_soc_mini-aes_tb.vhd
vsim -wlf /sim/tb -voptargs="+acc" -wlfdeleteonquit work.tb

add wave -position insertpoint sim:/tb/data_read_xtea_s
add wave -position insertpoint sim:/tb/input
add wave -position insertpoint sim:/tb/output
add wave -position insertpoint sim:/tb/ready
add wave -position insertpoint sim:/tb/clock_in
add wave -position insertpoint sim:/tb/key
add wave -position insertpoint sim:/tb/control
add wave -position insertpoint sim:/tb/key
add wave -position insertpoint sim:/tb/data_write_periph
add wave -position insertpoint sim:/tb/address
add wave -position insertpoint sim:/tb/ext_periph
add wave -position insertpoint sim:/tb/input_a
add wave -position insertpoint sim:/tb/output_a
add wave -position insertpoint sim:/tb/key_a
add wave -position insertpoint sim:/tb/ext_periph
add wave -position insertpoint sim:/tb/input_r
add wave -position insertpoint sim:/tb/key_r
add wave -position insertpoint sim:/tb/populating
add wave -position insertpoint sim:/tb/writing/index
add wave -position insertpoint sim:/tb/writing/start_write_aux
add wave -position insertpoint sim:/tb/start_writing
add wave -position insertpoint sim:/tb/wrote
add wave -position insertpoint sim:/tb/internal_ready
add wave -position insertpoint sim:/tb/reading/count
add wave -position insertpoint sim:/tb/reading/expect_ready
add wave -position insertpoint sim:/tb/reading/index




run 2000000 ns

