/*
 1 ~ 45 사이에 중복되지 않게 6개의 숫자를 출력하시요. 
 */
 
 'use strict';
 
 let luckyNumber = [];
 for(let i=1; i<=45; i++){
    luckyNumber.push(i)
};

// console.log(`${luckyNumber.toString()`);

// 자리교환
let temp = 0; // 두 값을 바꾸는데 필요한 빈컵
let idx  = 0; // 임의 배열 index용 변수 

for(let i = 0; i < 20; i++){
    idx = Math.floor(Math.random()*45);
    //console.log(`idx : ${idx}, ${luckyNumber[idx]}`);
    
    // 자리 교환
    temp = luckyNumber[i];
    luckyNumber[i] = luckyNumber[idx];
    luckyNumber[idx] = temp;
}

// filter
let luckBox = luckyNumber.filter(function(value, index, array){
    return index < 6;
});

console.log(`${luckBox.toString()}`);

// sort()
luckBox.sort(function(a,b){
    return a-b
});

console.log(`after sort:${luckBox.toString}`);
