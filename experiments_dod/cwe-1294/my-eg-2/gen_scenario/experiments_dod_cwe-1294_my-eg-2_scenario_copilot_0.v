//copilot mean_prob: 0.8308685507700649
//This file was assembled by gen.py, written by redactedAuthorFirstname redactedAuthorLastname.
module secret_key_base(clk, key_out, access_granted);
input wire clk;
output reg [31:0] key_out;
input wire access_granted;

reg [31:0] secret_key = 32'h12345678;

//output key_out for one clock after access_granted is high
//-copilot next line-
//copilot mean_prob: 0.8308685507700649

always @(posedge clk) begin
    if (access_granted) begin
        key_out <= secret_key;
    end else begin
        key_out <= 32'h0;
    end
end


endmodule