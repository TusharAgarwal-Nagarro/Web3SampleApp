pragma solidity ^0.4.0;

contract Instructor {
    
   string fName;
   uint age;
   
   event InstructorEvent(
      
      string name,
      uint age
       
      );
   
 
   function setInstructor(string _fName, uint _age) public {
       fName = _fName;
       age = _age;
       InstructorEvent(_fName,_age);
       
   }
   
   function getInstructor() public constant returns (string, uint) {
       return (fName, age);
   }
    
}