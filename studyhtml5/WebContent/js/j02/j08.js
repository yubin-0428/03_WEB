'use strict';
/*
boolean 타입                              
    true/false 값 표현                         
                                
    false:      0,null, undefined, NaN,''                   
    true:       0이외에 값이 있는 경우
    
*/

let canRead = true;
let test = 3<1;

console.log(`value: ${canRead}, type:${typeof canRead}`); 
console.log(`value:${test}, type:${typeof test}`);


let pcwkBoolean   = 0;
let pcwk01Boolean = 1;
console.log(`value:${Boolean(pcwkBoolean)}`);
console.log(`value:${Boolean(pcwk01Boolean)}`);


let nothing = null;
console.log(`value:${Boolean(nothing)}`);

let x ;
console.log(`value:${x}`);
console.log(`value:${Boolean(x)}`);






