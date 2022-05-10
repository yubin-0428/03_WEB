 'use strict';
/**
 배열 요소 접근 명령문 및 메서드 : for ... in : 배열의 인덱스를 반환
 */
 
 
 let city = ['미국','영국','필리핀','아이슬란드'];
 
 for(let i in city){
    console.log(`i:${i},city[${i}]:${city[i]}`);
}

/*
for ... of문 : 향상된 for문
*/
for(let i of city){
    console.log(`i:${i}`);
}