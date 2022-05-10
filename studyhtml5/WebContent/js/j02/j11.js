'use strict';
 
 let age = 11;
 let preIncrement = ++age;
 //preIncrement:12,age:12
 console.log(`preIncrement:${preIncrement},age:${age}`);
 
 age = 11;
 preIncrement = age++;
 //preIncrement:11,age:12
 console.log(`preIncrement:${preIncrement},age:${age}`);