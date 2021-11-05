// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Str {
    mapping(uint=>string) map;
    enum girl{a,b,c}
    struct student {
        string name;
        uint age;
        // mapping(uint=>string) map;
    }
    girl dateg = girl.a;//0
    girl dateg2 = girl.b;//1
    girl dateg3 = girl.c;//2
    student mm;
    function init () public  {
        // mm.name = 'sdsd';
        // mm.age = 18;
        mm = student('ss',19);
        // mm.map[0] = 'sss';
        // return(s.name,s.age);
    }
    function test(student storage _stu)  internal returns(uint,uint) {
       student storage lxl  = _stu;
       lxl.age =19;
       return (lxl.age,mm.age);
        // mm.map[0]='1122221';
    }
    
    function getage() public  returns(uint,uint){
        return test(mm);
    }
   function getgir() public pure returns(girl){
       return girl.b;
   }
}