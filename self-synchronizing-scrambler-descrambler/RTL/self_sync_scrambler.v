module self_sync_scrambler (
    input clock,
    input resetn,
    input enable,
    input [7:0] din,
    output reg valid,
    output reg [7:0] dout,
    output reg [7:0] lfsr
);
    always @(posedge clock or negedge resetn) begin
        if (!resetn) begin
            dout <= 0;
            lfsr <= 8'b11111111;
            valid <= 0;
        end
        else if (enable) begin
            lfsr <= {lfsr[6:0], lfsr[6] ^ lfsr[3]};
            dout <= lfsr ^ din;
            valid <= 1;
        end
    end
endmodule
