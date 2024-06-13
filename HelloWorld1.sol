// SPDX-License-Identifier: MIT


contract MyToken {

    // Public variables to store the details about the coin
    string public tokenName = "MyToken";
    string public tokenAbbrv = "MTK";
    uint public totalSupply = 0;

    // Mapping from addresses to balances
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    function mint(address _to, uint _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function to destroy tokens
    function burn(address _from, uint _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}