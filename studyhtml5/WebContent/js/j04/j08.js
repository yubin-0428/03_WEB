'use strict';
// 전역변수 : 함수블럭{}밖에 선언된 변수(함수 안과 밖에서 자유롭게 사용가능)
// 지역변수 : 함수블럭{}내에서 선언된 변수(함수 안에서만 사용가능)
let kor = 90;

function getScore(){
    kor = 100;
    console.log(`kor:${kor}`);    
}

console.clear(); // console로그 지우기

getScore();
console.log(`kor:${kor}`); // 전역변수

let eng = 90;
function getEngScore(){
    let eng = 100; // 지역변수
    console.log(`eng=${eng}`);
}

getEngScore();