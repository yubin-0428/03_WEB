/*
Array객체 : 객체 리터럴처럼 변수에 데이터값을 필요한만큼 저장할 수 있다.
저장된 값에는 자동으로 index가 부여된다.

ex) let subject = new Array(10,20,'javascript','css');
    let subject = [10,20,'javascript'];
 */
 
 'use strict';
 
 let subject = [11,13,'html','javascript','jquery'];
 
 console.log(`subject[0]:${subject[0]}`)
 
 // 배열의 길이
 console.log(`subject.length:${subject.length}`);
 
 // 값 설정
 subject[3] = 'JAVASCRIPT';
 console.log(`subject[0]:${subject[3]}`);
 
 // 배열의 값을 for문을 이용해 모두 출력
 for(let i = 0;i < subject.length;i++){
    console.log(`subject[${i}]:${subject[i]}`);
}



// 배열에 요소 추가 : push('jsp');
let newLength = subject.push('jsp');
console.log(`newLength:${newLength}`);

for(let i=0;i<subject.length;i++){
    console.log(`subject[${i}]:${subject[i]}`);
}

// toString() : 배열을 문자열로 변환
console.log(`subject.toString():${subject.toString()}`);

// join('-') : 배열의 요소를 '-'로 연결
console.log(`subject.join('-'):${subject.join('-')}`);

// 배열과 배열의 결합 : concat()
let alpha01 = ['a','b','c'];
let alpha02 = ['D','E','z'];

console.log(`alpha01.concat():${alpha01.concat()}`);

