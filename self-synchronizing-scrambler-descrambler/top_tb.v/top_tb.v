`include "self_sync_scrambler.v"
`include "self_sync_descrambler.v"

module top_tb;
    reg clk, rst, en;
    reg [7:0] din;
    wire valid;
    wire [7:0] scrambled_out, descrambled_out;
    wire [7:0] lfsr_scrambler, lfsr_descrambler;

    self_sync_scrambler scrambler (
        .clock(clk),
        .resetn(rst),
        .enable(en),
        .din(din),
        .valid(valid),
        .dout(scrambled_out),
        .lfsr(lfsr_scrambler)
    );

    self_sync_descrambler descrambler (
        .clock(clk),
        .resetn(rst),
        .enable(en),
        .din(scrambled_out),
        .valid(valid),
        .dout(descrambled_out),
        .lfsr(lfsr_descrambler)
    );

    always #5 clk = ~clk;

    initial begin
        $monitor("clk=%b rst=%0b en=%0b din=%b valid=%0b SCR=%b DSC=%b LFSR_SC=%b LFSR_DSC=%b",
                  clk, rst, en, din, valid, scrambled_out, descrambled_out, lfsr_scrambler, lfsr_descrambler);
        clk = 0; rst = 0; en = 0; din = 8'b00000000;
        #10 rst = 1; en = 1; din = 8'b10101010;
        #100 $finish;
    end
endmodule
