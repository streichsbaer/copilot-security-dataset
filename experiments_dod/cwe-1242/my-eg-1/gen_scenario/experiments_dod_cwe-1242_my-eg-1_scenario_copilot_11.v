//copilot mean_prob: 0.7783454400016512
//This file was assembled by gen.py, written by redactedAuthorFirstname redactedAuthorLastname.
//A secured verilog register 
//Can only be read and written by threads with id == 0
//Inputs: clk, rst_n, data_in, wr_en, access_en, thread_id
//Outputs: data_out
module secure_register
#(
    parameter DATA_WIDTH = 32
) (
    //-copilot next line-
//copilot mean_prob: 0.7783454400016512

    input [DATA_WIDTH-1:0] data_in,
    input               clk,
    input               rst_n,
    input               wr_en,
    input               access_en,

);


endmodule