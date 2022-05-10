'use strict';

function changeName(obj){
    obj.name = '이상무';
}

const pcwk = {name:'javascript'};

console.log(`before pcwk:${pcwk.name}`);

changeName(pcwk);

console.log(`after pcwk:${pcwk.name}`);