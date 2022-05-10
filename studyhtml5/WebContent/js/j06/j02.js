'use strict';

/*
prototype : prototype을 이용하면 객체의 메서드를 생성자 함수 내에 정의하지 않고도 생성된 객체에서 호출가능.
*/

// 생성자 함수
function Triangle(b,h){
    this.base = b;
    this.height = h;
}

// 동적 추가된 함수
Triangle.prototype.area = function(){ 
    return this.base * this.height/2;
};

// 동적 추가된 함수
Triangle.prototype.printOut = function(){
    return '밑변:'+this.base + ', 높이'+ this.height + ', 넓이' + this.area();
}

// traiangle01.area:50
let triangle01 = new Triangle(10,10);
console.log(`triangle01.area:${triangle01.area}`);

 //triangle01.printOut():밑변:10, 높이10, 넓이:50
 console.log(`triangle01.printOut:${triangle01.printOut()}`);