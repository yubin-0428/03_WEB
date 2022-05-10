'use strict';

let num01 = '100F';

if(isNaN(num01) == true){
    console.log(`숫자가 아니면 : ${isNaN(num01)}`);
}else{
    console.log(`숫자 이면 : ${isNaN(num01)}`);
}

let num02 = 1/0;
if(isFinite(num02) == true){
    console.log(`유한 이면:${isFinite(num02)}`)
}else{
    console.log(`무한이면 :${isFinite(num02)}`);
}