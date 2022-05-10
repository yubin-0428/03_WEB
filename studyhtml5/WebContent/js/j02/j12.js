'use strict';

let x = 3;
let y = 2;

//x:3, y:2
console.log(`x:${x}, y:${y}`);

//3+=2 => 5
console.log(`${x}+=${y} => ${x += y}`);//x=x+y;
x = 3;
y = 2;
//3-=2 => 1
console.log(`${x}-=${y} => ${x -= y}`);//x=x-y;

x = 3;
y = 2;
//3*=2 => 6
console.log(`${x}*=${y} => ${x *= y}`);//x=x*y;

x = 3;
y = 2;
//3/=2 => 1.5
console.log(`${x}/=${y} => ${x /= y}`);//x=x/y;

x = 3;
y = 2;
//3%=2 => 1
console.log(`${x}%=${y} => ${x %= y}`);//x=x%y;
 