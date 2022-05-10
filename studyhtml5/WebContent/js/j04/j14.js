/*
number() : 숫자로 변환해 주는 함수
parselnt() : 문자를 숫자로 변환
parseFloat() : 문자를 실수로 변환
string() : 문자로 변환
*/
'use strict';

let str01 = '11';

console.log(`str01:${str01}, type:${typeof str01}`);

// Number(): 문자형 숫자를 숫자로 변환
// str01:11, type:number
console.log(`str01:${Num()}, type:${typeof Number(str01)}`);

let str02 = '100px';
// str02:100px, type:string
console.log(`str02:${tr02}, type:${typeof str02}`);

//parseInt() : 문자를 숫자로 변환(22px -> 22)
console.log(`str02:${parseInt}, type:${parseInt()}`);

//parseFloat()
let str03 = '33.33%';
//str03:33.33%, type:string
console.log(`str02:${tr03}, type:${typeof str03}`);
console.log(`str03:${parseFloat}, type:${typeof parseFloat(str03)}`);