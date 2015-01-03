asim -i 5000 -t 0 -lib work z80_tb behavioural
wave  -noreg 'INST_Z80/CLK' 
wave  -noreg 'INST_Z80/RESET_n' 
wave  -noreg 'INST_Z80/ADDRESS' 
wave  -noreg 'INST_Z80/DATA' 
wave  -noreg 'INST_Z80/M1_n' 
wave  -noreg 'INST_Z80/RFSH_n' 
wave  -noreg 'INST_Z80/MREQ_n' 
wave  -noreg 'INST_Z80/IOREQ_n' 
wave  -noreg 'INST_Z80/RD_n'
wave  -noreg 'INST_Z80/WR_n' 
wave  -noreg 'INST_Z80/HALT_n' 
wave  -noreg 'INST_Z80/WAIT_n' 
wave  -noreg 'INST_Z80/INT_n'
wave  -noreg 'INST_Z80/NMI_n' 
wave  -noreg 'INST_Z80/BUSREQ_n' 
wave  -noreg 'INST_Z80/BUSACK_n'

wave  -noreg 'INST_Z80/INST_ALU/COMMAND'
wave  -noreg 'INST_Z80/BC_REG' 
wave  -noreg 'INST_Z80/DE_REG' 
wave  -noreg 'INST_Z80/HL_REG' 
wave  -noreg 'INST_Z80/PC_REG' 
wave  -noreg 'INST_Z80/SP_REG' 
wave  -noreg 'INST_Z80/TT_REG'

wave  -noreg 'INST_Z80/INST_Control/INSTRUCTION'
wave  -noreg 'INST_Z80/INST_ALU/A_Register'
wave  -noreg 'INST_Z80/INST_ALU/T_Register'
wave  -noreg 'INST_Z80/INST_ALU/F_Register'
wave  -noreg 'INST_Z80/INST_ALU/A_Operand'
wave  -noreg 'INST_Z80/INST_ALU/B_Operand'
wave  -noreg 'INST_Z80/INST_ALU/RESULT'

view structure