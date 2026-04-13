module tb_alu;

reg [15:0] a,b;
reg [2:0] sel;
wire [15:0] result;

// instantiate ALU

alu_16_bit uut (
    .A(a),
    .B(b),
    .sel(sel),
    .Y(result)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_alu);
    $monitor("A = %d B = %d sel = %b result = %d",a,b,sel,result);
    a = 10; b = 5;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;
    $finish;
end
endmodule