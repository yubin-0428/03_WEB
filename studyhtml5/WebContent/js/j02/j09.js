'use strict';


/*동적타입                            
    dynamically typed language       */               

let text = 'S_PCWK';
//text:S_PCWK, type:string

console.log(`text:${text}, type:${typeof text}`);

text = 11;
//text:11, type:number
console.log(`text:${text}, type:${typeof text}`);


text ='1'/'5';
//text:0.2, type:number
console.log(`text:${text}, type:${typeof text}`);


text ='1'+5;
//text:15, type:string
console.log(`text:${text}, type:${typeof text}`);
