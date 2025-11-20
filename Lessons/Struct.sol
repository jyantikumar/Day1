// SPDX Licence Identifier: MIT 
pragma solidity ^0.8.30;

contract Struct{
    struct Student{
        string name;
        uint age;
        address wallet;
        bool enrolled;
    }
    mapping (uint=> Student) public students;

    function addStudent(uint _id, string memory _name, uint _age) external {
        students[_id]=Student({
              name: _name,
            age: _age,
            wallet: msg.sender,
            enrolled: true

        });

    }

   function updateEnrollment(uint _id) external{
        students[_id].enrolled=false;
   }
   function getStudent(uint id) external view returns (string memory, uint, address, bool){
  //  Student memory s=student[id];
  return 
    (students[id].name, students[id].age, students[id].wallet, students[id].enrolled

    );