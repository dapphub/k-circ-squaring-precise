pragma solidity ^0.4.21;

contract exp {
  function mul(uint x, uint y) internal pure returns (uint z) {
    require(y == 0 || (z = x * y) / y == x);
  }
  function npow(uint x, uint n) returns (uint z) {
    z = 1;

    for (n; n != 0; n /= 2) {
      if (n % 2 != 0) {
        z = mul(z, x);
      }
      x = mul(x, x);
    }
  }
}

