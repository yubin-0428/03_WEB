'use strict';

/*
for..in 문 : 객체의 속성에 쉽게 접근 가능
    형식) for(let 변수 in 객체명){
        실행문;
    } 
 */
 
 let info = {
    subject: 'JavaScript',
    credit : 3,
    days : 20,
    tuition : 100
}

for(let i in info){
    console.log(`i=${i}, info[${i}]=${info[i]}`);
}

