
// 문자를 자바 스크릿트 코드로 변경

// let 변수는 안되고, var 변수는 가능

let str01 = 'var num01 =11;';
let str02 = 'var num02 =13;';

eval(str01);
eval(str02);
//num01+num02 = 24
console.log(`num01+num02=${num01+num02}`);
