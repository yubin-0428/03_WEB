/*
DATE 객체 : 날짜와 시간에 대한 정보를 얻거나 설정 할 수 있다.
(local pc 날짜)
 */
 
 let dataObj = new Date(2022,7,12,14,10,45);
 
 let dateInfo = {
    
    year  : dateObj.getFullYear(),          // 년도 4자리
    month : dateObj.getMonth()+1,           // 월 0~11 + 1 필요
    day   : dateObj.getDate(),              // 일(1 ~ 31)
    week  : dateObj.getDay(),               // 요일(0은 일요일 ~ 6은 토요일)
    hours : dateObj.getHours(),             // 시간
    minutes : dateObj.getMinutes(),         // 분
    seconds : dateObj.getSeconds(),         // 초
    miliseconds : dateObj.getMilliseconds() // 1000분의 1초
};

for(let i in dateInfo){
    console.log(`${i}:${dataInfo[i]}`);
}
 
 