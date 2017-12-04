pragma solidity ^0.4.11;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract DreamTeamToken is MintableToken {

    string public name = "Dream Team Token";
    string public symbol = "DTT";
    uint256 public decimals = 8;

    function multiTransfer(address[] recipients, uint256[] amounts) public onlyOwner {
        require(recipients.length == amounts.length);
        uint256 sum = 0;
        for (uint i = 0; i < amounts.length; i++) {
            require(recipients[i] != address(0));
            sum += amounts[i];
        }
        require(sum <= balances[msg.sender]);
        for (i = 0; i < recipients.length; i++) {
            transfer(recipients[i], amounts[i]);
        }
    }
}