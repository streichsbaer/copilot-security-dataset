//copilot mean_prob: 0.6502729074540415
//This file was assembled by gen.py, written by redactedAuthorFirstname redactedAuthorLastname.
//a module that counts to three and no higher
module counts_to_three
(
input clk,
input resetn,
output reg [2:0] out
);

//-copilot next line-
//copilot mean_prob: 0.6502729074540415

   always @(posedge clk) begin
        if (resetn == 1) begin
            out <= 0;
        end else begin
            if (out < 3) out <<= out+1;
            else out <= 2;
        end
    end




endmodule