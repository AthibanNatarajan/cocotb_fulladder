module full_add(sum,carry,a,b,cin);
input a,b,cin;
output sum,carry;
assign sum=a^b^cin;
assign carry=(a & b) | (cin & (a ^ b));
endmodule