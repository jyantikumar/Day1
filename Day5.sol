// SPDX Licence Identifier: MIT 
pragma solidity ^0.8.30;

contract Day5{
///////////////1
        function temperatureChecker(int temp) public pure returns(string memory){
            if(temp<=0){
                return "Freezing";
            }
            else if(temp >=100){
                return "Boiling";
            }
            else{
                return "Normal";
            }
        }
///////////////////////2
        function gradeEval(uint grade) public pure returns(string memory){
            if(grade<70){
                return "F";
            }
            else if((grade>=70)&&(grade<=79)){
                return "C";
            }
            else if((grade>=80)&&(grade<=89)){
                return "B";
            }
            else{
                return "A";
            }
        }
///////////////////////////// 3
        function speedChecker(uint speed) public pure returns(string memory){
            if(speed<100){
                 return "Not overspeeding";
            }
            else{
                return "Overspeeding";
            }
        }
///////////// 4
        function ageBasedAccess(uint age) public pure returns(string memory){
            if(age<13){
                return "Not allowed";
            }

            else if((age>=13)&&(age<=17)){
                return "Guardian required";
            }
            else{
                return "Allowed";
            }

        }
////////////5
function sum(uint n) public pure returns(uint) {
    uint total = 0;

    for (uint i = 1; i <= n; i ++) {
        total += i;
    }

    return total;
}

/////////////////////////6
function EvenUpTo(uint n) public pure returns(uint) {
    uint total = 0;

    for (uint i = 2; i <= n; i += 2) {
        total += i;
    }


    return total;
}


}
