SIM ?= icarus
TOPLEVEl_LANG ?= verilog
VERILOG_SOURCES +=$(PWD)/full_adder.v
VERILOG_SOURCES +=$(PWD)/full_adder_verilog_test.v

Fa:
	$(MAKE) sim MODULE=full_adder_py_test TOPLEVEL=full_adder_test_verilog
include $(shell cocotb-config --makefiles)/Makefile.sim