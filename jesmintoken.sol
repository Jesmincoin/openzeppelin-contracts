// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
   
    
import"https://github.com/abcoathup/openzeppelin-contracts/blob/release-v3.1.0/contracts/token/ERC20/ERC20.sol";
import"https://github.com/abcoathup/openzeppelin-contracts/blob/release-v3.1.0/contracts/math/SafeMath.sol";


contract Jesmintoken is ERC20{
    
    function burn(uint256 amount) public {
    _burn(msg.sender, amount*(10**18));
   }
   
   
  constructor () public ERC20("Jesmin Token", "JMT") {
        _mint(msg.sender, 200000000 * (10 ** uint256(decimals())));
    }
}
