/*
Problema 02 - Full Adder
Cristovão Pessoa Cândido Neto - 121110199
Fazendo usando a descrição comportamental
*/

parameter N_BITS=8;
module full_adder(
  input logic signed [N_BITS-1:0] num1, input signed [N_BITS-1:0] num2,
  output logic signed [N_BITS-1:0] sum,
  output logic is_negative, is_zero, is_even
);
  always_comb begin
    sum <= num1 + num2;
    is_negative <= sum < 0;
    is_zero <= sum == 0;
    is_even <= sum % 2 == 0;
  end
  

endmodule