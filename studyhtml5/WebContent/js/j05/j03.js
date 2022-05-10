'use strict';

// 객체 생성자 함수 : 함수이름을 시작할 때 첫글자는 대문자로 한다.

// let 변수 = new 함수(매개변수1, 매개변수2);

function Info(subject, credit){
    this.subject = subject;
    this.credit = credit;
    
    this.printOut = function(){
        return this.subject +','+this.credit;
    }
}

let subject01 = new Info('javascript', 5);
let subject02 = new Info('css', 5);

console.log(`subject02.subject:${subject02.subject}`);
console.log(`subject02.credit:${subject02.credit}`);
console.log(`subject02.printOut:${subject01.printOut}`);
