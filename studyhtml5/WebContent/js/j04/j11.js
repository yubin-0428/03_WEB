'use strict';
/* 클로져(Closure) : 일반적으로 함수 내 지역변수는 함수 밖에서 참조할 수 없다.
                                    클로져는 함수 내 지역변수를 함수 밖에서 참조할 수 있다.
                
       function add(){
        let n = 0;
        return ++n;
    }
    
    console.log(add()); // 1
    console.log(add()); // 1
 */
 
 function multiply(n){
    
    return function(){
        return n*=n; //n=n*n
    }
}

let num01 = multiply(10);
// num01:100
console.log(`num01:${num01()}`);
// num01:10000
console.log(`num01:${num01()}`);
 
 let num02=multiply(3);
// num02:9
console.log(`num02:${num02()}`);
// num02:81
console.log(`num02:${num02()}`);
 