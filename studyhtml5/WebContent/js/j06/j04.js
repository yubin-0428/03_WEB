'use strict';
/*
class : ECMAScript 2015(ES6)에서 새로 추가, 객체 생성, 상속도 가능 
    형식) class 클래스명{
        constructor(매개변수01, 매개변수02, ...){
            this.이름01 = 매개변수01;
            this.이름02 = 매개변수02;
        }
               메서드(){}
        get 메서드(){}
        set 메서드(){}
    }
    
let 변수01 = new 클래스명(매개변수01, 매개변수02, ...);
let 변수02 = new 클래스명(매개변수01, 매개변수02, ...);
*/

class Person {
    //생성자
    constructor(name,age){
        //맴버변수
       this.name = name;
       this.age = age;
    }
    //메서드
   speak(){
    console.log(`name:${this.name},age:${this.age} speak!`);
}
}
const pcwk = new Person('PCWK',23);
//맴버변수
console.log(`pcwk.name:${pcwk.name}`);
console.log(`pcwk.age:${pcwk.age}`);
pcwk.speak();

