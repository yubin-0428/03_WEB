'use strict';
// 객체 리터럴과 객체 생성자 함수로 만들 수 있다.

let info = {
    subject : 'javascript',
    credit  : 5,
    printOut : function(){
        return this.subject+','+this.credit;
    }
    
};

console.log(`info.subject:${info.subject}`);

console.log(`info.subject:${info.subject}`)
console.log(`info.credit:${inffo.credit}`)
console.log(`info.printOut:${info.printOut()}`)