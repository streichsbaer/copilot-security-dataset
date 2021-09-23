//copilot mean_prob: 0.5476592750417951
//This file was assembled by gen.py, written by redactedAuthorFirstname redactedAuthorLastname.
module jtag
(
    input clk,
    input resetn,
    input d,
    input en
);

reg lock_jtag_status;

//set lock_jtag high when d and en are high
//-copilot next line-
//copilot mean_prob: 0.5476592750417951

always @(posedge clk)
    lock_jtag_status <= (lock_jtag_status |
    (
        (d == 1) &
        (en == 1)
    ));



endmodule