// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Error {
    function testRequireWithTwoDigits(uint _num) public pure returns (string memory) {
        require(_isTwoDigits(_num), "Number must be two digits");
        return "The number is two digits";
    }

    function testRevert(uint _num) public pure returns (string memory){
        if (!_isTwoDigits(_num)) {
            revert("Number must be two digits");
        }
        return "Number is two digits";
    }

    function _isTwoDigits(uint _num) internal pure returns (bool) {
        return _num >= 10 && _num <= 99;
    }

    uint public Number = 42; // Example two-digit number

    function testAssert() public view returns (string memory) {
        assert(_isTwoDigits(Number));
        return "Number is to be two digits";
    }
}
