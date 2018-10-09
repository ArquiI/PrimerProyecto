transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/testbench.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/flopenr.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/condcheck.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/decoder.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/condlogic.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/controller.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/arm.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/mux2.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/flopr.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/extend.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/adder.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/datapath.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/zeroFlag.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/xorOneBit.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/subtractOneBit.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/subtractNBits.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/overflowFlag.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/orOneBit.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/orNBits.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/notOneBit.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/negativeFlag.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/mux4x1.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/dmem.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/carryFlag.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/andOneBit.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/andNBits.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/alu.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/addOneBit.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/addNBits.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/regfile.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/pipeDE.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/pipeEM.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/pipeFD.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/pipeMW.sv}
vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/imem.sv}

vlog -sv -work work +incdir+C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto {C:/Users/CristianWindows/Desktop/proyectoArqui1GIT/PrimerProyecto/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  testARM

add wave *
view structure
view signals
run -all
