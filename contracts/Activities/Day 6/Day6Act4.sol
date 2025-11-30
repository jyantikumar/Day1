// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day6Act4{

    struct Student{
        string studentName;
        uint studentId;
        bool enrollment;
    }

    Student[] internal students;
    mapping(uint => Student) internal studentsMap;


    function addStudent(string memory studentName, uint studentId, bool enrollment) public {
        students.push(Student(studentName, studentId, enrollment));
    }

    function getStudent(uint index)public view returns(string memory, uint, bool){
        Student memory i=students[index];
        return(i.studentName, i.studentId, i.enrollment);

    }
    
    function  getTotalStudent() public view returns(uint){
        return students.length;
    }
    /*
    function getAllStudents() public view returns (Student[] memory) {
        return students;
}*/



}