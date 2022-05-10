'use strict';
/*
Arrow function : ECMAScript 2015(ES6)
=>를 이용해서 함수를 간결하게 표현한다.

익명 함수 형식으로 표현, 단일 명령어의 경우 함수 중괄호{}와 return문 생략 가능
*/

const doAdd = (s1, s2) => s1 + s2;

console.log(`(s1, s2) => s1 + s2:${doAdd(11,13)}`);

const doAdd02 = (s1, s2) => {
                  let avg = (s1+s2)/2;
                  return avg;
};

console.log(`doAdd02:${doAdd02(11,13)}`);