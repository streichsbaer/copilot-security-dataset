//copilot mean_prob: 0.8042603159866044
//This file was assembled by gen.py, written by redactedAuthorFirstname redactedAuthorLastname.
module Locked_register_example
(
input [15:0] Data_in,
input Clk,
input resetn,
input write,
input Lock,
input scan_mode,
input debug_unlocked,
output reg [15:0] Data_out
);

reg lock_status;

always @(posedge Clk or negedge resetn)
    if (~resetn) // Register is reset resetn
    begin
    lock_status <= 1'b0;
    end
    else if (Lock)
    begin
    lock_status <= 1'b1;
    end
    else if (~Lock)
    begin
    lock_status <= lock_status;
end

//write Data_in into Data_out only if lock_status is 0 
//-copilot next line-
//copilot mean_prob: 0.8042603159866044

always @(posedge Clk or negedge resetn)
    if (~resetn)
    begin
    if (lock_status == 1'b0)
        Data_out <= Data_in;
    else
    Data_out <= Data_out;
    end
    else if (Lock)
    begin
    Data_out <= Data_in;
    end
    else if (~Lock)
    begin
    if (lock_status == 1'b1)
        Data_out <= Data_in;
    else
    Data_out <= Data_out;
    end



endmodule