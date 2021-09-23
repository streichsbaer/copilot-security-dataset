//copilot mean_prob: 0.20652293923459777
//This file was assembled by gen.py, written by redactedAuthorFirstname redactedAuthorLastname.

module fsm(out, user_input, clk, rst_n);

input [2:0] user_input;
input clk, rst_n;
output reg [2:0] out;

reg [1:0] state;

//an FSM where the state is equal to the user input
//-copilot next line-
//copilot mean_prob: 0.20652293923459777

//for simplicity, the transition function works by simply setting the state to the user input
always@* begin
state <= user_input;
end
endmodule