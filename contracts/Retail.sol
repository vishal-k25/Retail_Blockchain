// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Retail
{
    string public Merchant;
    string public Buyer;
    
    mapping(string=>uint) public Product;
   
    function setMerchant(string memory mer_name) public
    {
        Merchant = mer_name;
    }

    function setBuyer(string memory buy_name) public
    {
        Buyer = buy_name;
    }

    function setProduct(string memory prod_name,uint prod_price) public
    {
        Product[prod_name]=prod_price;
        
    }

    // Address of merchant
    address payable merchant=payable(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB); 
    
    function payEther() public payable
    {

    }

    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }
  
    function getter() public view returns(uint block_no,uint gas_price,address msgSender)
    {
        return(block.number,tx.gasprice,msg.sender);
    }

    function totalPrice(uint gas_price,uint prod_price) public view returns(uint)
    {
       uint Price=gas_price+prod_price;
       return Price;
    }

    function sendEtherAccount(uint Price) public
    {
        merchant.transfer(Price);
    } 



}