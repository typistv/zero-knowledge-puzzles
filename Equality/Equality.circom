pragma circom 2.1.4;

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.

include "../node_modules/circomlib/circuits/comparators.circom";

template Equality() {
   // Your Code Here..
   signal input a[3];
   signal output c;
   signal b1;
   signal b2;
   signal b;
   b1 <-- a[0] == a[1] ? 1 : 0 ;
   b2 <-- a[1] == a[2] ? 1 : 0 ;
   b <-- b1*b2;

   c <== b;
}

// template Equality() {
//    // Your Code Here..
//    signal input a[3];
//    signal output c;

//    component eq1 = IsEqual();
//    eq1.in[0] <== a[0];
//    eq1.in[1] <== a[1];

//    component eq2 = IsEqual();
//    eq2.in[0] <== a[1];
//    eq2.in[1] <== a[2];

//    c <== eq1.out*eq2.out;
// }

component main = Equality();