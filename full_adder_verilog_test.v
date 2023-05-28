module full_adder_test_verilog(
	input wire a,
	input wire b,
	input wire cin,
	output wire sum,
	output wire carry
);
full_add full_add(
	.a(a),
	.b(b),
	.cin(cin),
	.sum(sum),
	.carry(carry)
);

initial begin
	$dumpfile("full_add.vcd");
	$dumpvars;
end
endmodule