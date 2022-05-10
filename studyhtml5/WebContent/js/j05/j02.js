'use strict';

let info = {
    subject : 'javascript',
    credit  : 5,
    printOut : function(){
        return this.subject+','+this.credit;
    }
    
};

info.days = 7; //속성추가!
console.log(`info.days:${info.days}`);

// 속성 삭제
delete info.credit;
console.log(`info.credit:${info.credit}`);

// 메서드 속성 변경
info.printOut = function(){
    return this.subject+','+this.days;
}

console.log(`info.printOut():${info.printOut()}`);