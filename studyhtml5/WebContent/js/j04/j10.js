'use strict';
/*
재귀함수 : 함수 안에서 자신의 함수를 호출한다 (종료 조건을 명기해야함)
*/

function factorial(n){
    //종료조건
    if(n == 0){
        console.log('호출 끝!');
    }else{
        console.log(`n=${n}`)
        factorial(n-1);
    }
}

console.log(factorial(4));