/*
 String객체 : 내장객체 중 가장 많이 사용하는 객체입니다.
 */
 
 'use strict'
 
 let str = 'Javascript';
 
 // str: Javascript
 console.log(`str:${str}`);
 
 // length : 문자열의 길이
 console.log(`str.length:${str.length}`);
 
 // charAt(n) : n과 같은 index번호에 위치한 문자를 반환한다.
 console.log(`str.charAt(8):${str.charAt(8)}`);
 
 // indexOf('a')
 // 'a'를 왼쪽부터 문자를 검색해서 일치하는 index에 해당하는 문자 반환
 console.log(`str.indexOf('a':${str.indexOf('a')})`);
 
 // lastIndexOf('a');
 // 'a'를 오른쪽부터 문자를 검색해서 일치하는 index에 해당하는 문자 인덱스를 반환
 console.log(`{str.lastIndexOf('a'):${str.lastIndexOf('a')}`);
 
 // substring(4,9) : 문자열 index번호 4부터 index 9이전까지 출력
 console.log(`str.substring(4,9):${str.substring(4,9)}`);
 
 // substr(4,6) : index번호 4번부터 6개의 문자
 console.log(`str.substr(4,6):${str.substr(4,6)}`);
 
 // split('') : ''(공백) 문자를 기준으로 문자열을 분할하고 return 배열 
 str = '010-1234-5678';
 let phoneNumArray = str.split('-');
 console.log(phoneNumArray[0] + ''+phoneNumArray[1] + '' +phoneNumArray[2]);
 
 // replace('x','y') : 'x'문자를 'y' 문자로 치환
 str = 'Javascript';
 console.log(`str.replace('a','A'):${str.replace('a','A')}`);
 
 // trim() : 문자열의 앞뒤 공백 제거
 str = ' Javascript ';
 console.log(`str.trim():${str.trim()}`);
 
 // toLowerCase(); 소문자로
 // toUpperCase(); 대문자로
 
 // str.toUpperCase() : JAVASCRIPT
 console.log(`str.toUpperCase():${str.toUpperCase()}`);
 
 // str.toUpperCase() : javascript
 console.log(`str.toLowerCase():${str.toLowerCase()}`);