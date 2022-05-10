'use strict';
 //매개변수 : 함수를 호출할 때 전달하는 변수
/* function 함수명(매개변수1, 매개변수2,..){
    실행문;
 }
 함수명(매개변수1, 매개변수2..);*/
 //파람 : 학생이름, html, css, javascript 각 60점 이상이면 pass 60점 이하면 재시험
 
/* let 변수명 = function(매개변수1, 매개변수2..){
     실행문;
 };
 변수명(매개변수1, 매개변수2..);*/
 
 function isPath(name,htmlScore,cssScore,jsScore){
    let comment = name + ' 학생은  ';
    if(htmlScore >= 60 && cssScore >= 60 && jsScore >= 60){
        comment += '전 과목 pass';
    }else{
        if(htmlScore < 60){
            comment += 'html 재시험'
        }
        if(cssScore < 60){
            comment += 'css 재시험'
        }
        if(jsScore < 60){
            comment += 'javascript 재시험'
        }                
    }
    return comment;
}
console.log(isPath('이상무',80,90,95));
console.log(isPath('이상무2',59,40,95));
