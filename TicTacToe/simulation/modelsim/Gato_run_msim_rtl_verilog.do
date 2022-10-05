transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe {C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe/Contador.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe {C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe/Mover.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe {C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe/Turnos.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe {C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe/Matriz.sv}
vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe {C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe/GatoTop.sv}

vlog -sv -work work +incdir+C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe {C:/Users/yraul/OneDrive/Documentos/GitHub/Lab4_TallerDisenio/TicTacToe/TestTurnos.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  TestTurnos

add wave *
view structure
view signals
run -all
