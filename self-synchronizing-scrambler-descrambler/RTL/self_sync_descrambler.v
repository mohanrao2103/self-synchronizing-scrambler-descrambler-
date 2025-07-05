module self_sync_descrambler (
    input clock,
    input resetn,
    input enable,
    input [7:0] din,
    input valid,
    output reg [7:0] dout,
    output reg [7:0] lfsr
);
    always @(posedge clock or negedge resetn) begin
        if (!resetn) begin
            lfsr <= 8'b11111111;
            dout <= 0;
        end
        else if (enable) begin
            if(valid) begin
                lfsr <= {lfsr[6:0], lfsr[6] ^ lfsr[3]};
                dout <= lfsr ^ din;
            end
        end
    end
endmodule
