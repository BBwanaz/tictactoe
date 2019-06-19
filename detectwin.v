// DetectWinner
// Detects whether either ain or bin has three in a row 
// Inputs:
//   ain, bin - (9-bit) current positions of type a and b
// Out:
//   win_line - (8-bit) if A/B wins, one hot indicates along which row, col or diag
//   win_line(0) = 1 means a win in row 8 7 6 (i.e., either ain or bin has all ones in this row)
//   win_line(1) = 1 means a win in row 5 4 3
//   win_line(2) = 1 means a win in row 2 1 0
//   win_line(3) = 1 means a win in col 8 5 2
//   win_line(4) = 1 means a win in col 7 4 1
//   win_line(5) = 1 means a win in col 6 3 0
//   win_line(6) = 1 means a win along the downward diagonal 8 4 0
//   win_line(7) = 1 means a win along the upward diagonal 2 4 6




module DetectWinner( input [8:0] ain, bin, output [8:0] win_line );

  // CPEN 211 LAB 3, PART 1:

              // lines of code to satisfy above conditions

              assign win_line[0] = (ain[8] & ain[7] & ain[6]) | (bin[8] & bin[7] & bin[6]); // if a or b = 111000000, win_line = 000000001

              assign win_line[1] = (ain[5] & ain[4] & ain[3]) | (bin[5] & bin[4] & bin[3]); // if a or b = 000111000, win_line = 000000010

              assign win_line[2] = (ain[2] & ain[1] & ain[0]) | (bin[2] & bin[1] & bin[0]); // if a or b = 000000111, win_line = 000000100

              assign win_line[3] = (ain[8] & ain[5] & ain[2]) | (bin[8] & bin[5] & bin[2]); // if a or b = 100100100, win_line = 000001000

              assign win_line[4] = (ain[7] & ain[4] & ain[1]) | (bin[7] & bin[4] & bin[1]); // if a or b = 010010010, win_line = 000010000

              assign win_line[5] = (ain[6] & ain[3] & ain[0]) | (bin[6] & bin[3] & bin[0]); // if a or b = 001001001, win_line = 000100000

              assign win_line[6] = (ain[8] & ain[4] & ain[0]) | (bin[8] & bin[4] & bin[0]); // if a or b = 100010001, win_line = 001000000

              assign win_line[7] = (ain[2] & ain[4] & ain[6]) | (bin[2] & bin[4] & bin[6]); // if a or b = 001010100, win_line = 010000000

              assign win_line[8] = 9'b0;// to satisfy the input being 9 bits and the output being 8 bits we made the output 9 bits

                                                         // and then set the 9th bit to 0.

endmodule

