/*
callback function : 자바스크립트 함수는 일급객체라 한다.
   1급객체 : 아래 3가지 조건을 충족한다면 1급 객체라고 할 수 있다.
            1. 변수나 데이타에 할당 할 수 있어야 한다.
            2. 객체의 인자로 넘길 수 있어야 한다.
            3. 객체의 리턴값으로 리턴 할 수 있어야 한다.
 */
 
 'use strict';
 
 // 더하기 함수
 function add(num1, num2){
    return num1 + num2;
}

// 곱하기 함수
function multiply(num1, num2){
    return num1 * num2;
}

function surprise(callback){
    const result = callback(11, 10);
    
    console.log(`result:${result}`);
}

// 
surprise(multiply);
