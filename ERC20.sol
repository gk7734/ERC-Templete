// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0 <0.9.0;

contract ERC20 {
    string public name; // ex) MyToken
    string public symbol; // ex) MTK
    uint8 public decimals; // 일반적으로 이더리움의 소수점 이하 자리수는 18자리
    uint256 public totalSupply; // 최종 공급량

    mapping(address => uint256) public balanceOf; // 특정 주소의 토큰 잔액을 확인할 수 있음
    mapping(address => mapping(address => uint256)) public allowance; // 승인된 주소가 얼마나 많은 토큰을 사용할 수 있는지 확인함

    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed owner, address indexed spender, uint256 amount);

    constructor(string memory _name, string _symbol, uint8 _decimals, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _initialSupply * 10**uint256(decimals);
        balanceOf[msg.sender] = totalSupply;
    }
}
