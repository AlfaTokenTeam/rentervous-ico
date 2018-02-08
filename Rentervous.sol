pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Rentervous is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Rentervous(address _owner)  UpgradeableToken(_owner) {
    name = "Rentervous";
    symbol = "RENT";
    totalSupply = 50000000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}