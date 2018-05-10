pragma solidity ^0.4.00;
contract MyToken {
    string public name;
    string public symbol;
    uint8 public decimals;
    /* This creates an array with all balances */
    mapping(address => uint256) public balanceOf;

    function MyToken() {
        name = "Ooze Token";
        symbol = "OOZ";
        decimals = 2;
        balanceOf[msg.sender] = 21000000;
    }

    /* Send coins */
    function transfer(address _to, uint256 _value) {
        /* Add and subtract new balances */
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
    }
}
