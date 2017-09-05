pragma solidity ^0.4.11;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract DreamTeamToken is MintableToken {

    string public name = "Dream Team Token";
    string public symbol = "DTT";
    uint256 public decimals = 8;

}