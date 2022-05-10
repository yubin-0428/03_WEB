/**
 * var변수는 동일한 변수를 중복해 선언할 수 있지만 
   let은 중복선언 불가.        
   
   var 변수 호이스팅                                                   
 */
 
 var num = 11;
 var num = 13;
 
 console.log('num:'+num);
 
 //변수,함수 호이스팅
 //함수 내에서 아래에 존재하는 변수가 끌어 올려지는 것.
 //자바스크립트 parser 내부적으로 끌어 올려서 처리된다. 
 console.log(text);//선언 + 초기화 않된 상태;
 text = 'Hoisting';//선언 + 초기화 + 할당된 상태
 var text;