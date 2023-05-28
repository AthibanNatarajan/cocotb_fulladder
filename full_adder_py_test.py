import cocotb
from cocotb.triggers import Timer,RisingEdge

@cocotb.test()
async def full_adder_py_test(dut):
	a=(0,0,0,0,1,1,1,1);
	b=(0,0,1,1,0,0,1,1);
	cin=(0,1,0,1,0,1,0,1);
	sum=(0,1,1,0,1,0,0,1);
	carry=(0,0,0,1,0,1,1,1);
	for i in range(8):
		print("Start Of test")
		dut.a.value=a[i]
		dut.b.value=b[i]
		dut.cin.value=cin[i]
		await Timer(1, 'ns')
		assert dut.sum.value==sum[i], f"Error At Sum value Iteration {i}"
		assert dut.carry.value==carry[i], f"Error At Carry Value Iteration {i}"
			