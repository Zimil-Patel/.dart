//Bitwise operators
// &, |, >>, <<, ^, ~

/*
128  64  32  16  8  4  2  1
0    0   0   1   0  0  0  1  // 17      
0    0   0   1   0  0  1  1  // 19


// '&'
0    0   0   1   0  0  0  1  // 17  = AND &

// '|'
0    0   0   1   0  0  1  1  // 19  = OR |

// '^'
0    0   0   0   0  0  1  0  // 19  = OR ^


// '~'
0    0   0   1   0  0  0  1  // 17   
0    0   0   0   1  1  0  0  // ~19  
17 & ~19
0    0   0   0   0  0  0  0  // 0 


// '<<'
32768 16384 8192 4096 2048 1024 512 256 128  64  32  16  8  4  2  1
0     0     0    0    0    0    1   0   0    1   1   1   0  0  0  1
>>----------------------------------<<  >>-----------------------<<
                19                                   17
*/

void main() {
  var a = 17;
  var b = 19;

  print("a & b : ${a & b}"); //'&' if both are 1 then 1 else 0 in binary
  print("a | b : ${a | b}"); //'|' if both 0 then 0 else 1 in binary
  print("a & ~b : ${a & ~b}"); //'~' if 0 then 1,  1 then 0
  print("a ^ b : ${a ^ b}"); //'^' if both are different then 1 else 0
  print("a << b : ${a << b}");
  //'<<' shift right operand bits to left of left operand
}
