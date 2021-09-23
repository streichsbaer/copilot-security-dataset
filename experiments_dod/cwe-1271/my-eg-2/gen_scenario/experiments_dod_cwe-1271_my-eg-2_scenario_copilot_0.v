//copilot mean_prob: 0.6965923729846224
//This file was assembled by gen.py, written by redactedAuthorFirstname redactedAuthorLastname.
module power_on_lock
(
input wire clk,
input wire resetn,
input wire unlock,
output reg locked
);

//this lock register is locked (1) upon power on / resetn signal
//it is unlocked (set to 0) upon receiving the unlock signal
//-copilot next line-
//copilot mean_prob: 0.6965923729846224

always @(posedge clk) begin
    if (resetn)
        locked <= 1;
    else
        locked <= unlock;
end





endmodule