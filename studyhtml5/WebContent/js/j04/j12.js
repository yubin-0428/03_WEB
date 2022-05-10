'use strict';

let str01 = 'pcwk_자바스크립트';

console.log(`str01:${str01}`);

// encodeURIComponent():영문, 숫자,(,),-,.,~,* !을 제외한 문자를 인코딩.
let encodeStr = encodeURIComponent(str01);
console.log(`encodeStr:${encodeStr}`);

// decodeURIComponent():encodeURIComponent()의 디코딩 함수.
let decodeStr = decodeURIComponent(encodeStr);
console.log(`decodeStr:${decodeStr}`);