/*
 내장객체 
 */
 
 'use strict';
 
 // Number 객체 생성
 let num01 = new Number(10);
 
 let num02 = 12;
 
 // num01+num02 = 22
 console.log(`num01+num02 = ${num01+num02}`);
 
 let num = 328.575;
 // toFixed() : "toFiexed(n)일 때 n값 만큼의 소수점 자리수를 만들어 준다."

// num.toFixed(1) :328.6 
 console.log(`num.toFixed(1):${num.toFixed(1)}`);
 console.log(`num.toFixed(2):${num.toFixed(2)}`);
 
 // num.toFixed():329
 console.log(`num.toFixed():${num.toFixed()}`);
 
 num = 12;
 
 // toString(): toString(n) 일 때 n값의 진수로 만들어 줍니다.
 // num.toString(2) : 1100
 console.log(`num.toString(2):${num.toString(2)}`);
 
 console.clear();
 // 소수점 계산 : 32,200
 console.log(`46000*0.7:${46000*0.7}`); 
 
 // 46000*(0.7 * 10)/10
 console.log(`46000*(0.7*10)/10:${46000*(0.7*10)/10}`);
 
 
 