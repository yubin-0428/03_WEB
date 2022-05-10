'use strict';
/* 함수 레벨 스코프와 블록 레벨 스코프
    var는 함수{}에서만 지역변수 존재
    (블록{}, 제어문 블록{}에서는 지역변수가 존재하지 않는다.)
    
    let, const는 블록{}, 제어문{}에서도 지역변수를 선언할 수 있다.
*/

var num = 11;

{
    var num = 20;
    // num : 20
    console.log(`num:${num}`);
}
    // num:20
    console.log(`num:${num}`);
    
    console.clear();
    /*
    let, const는 블록{}, 제어문{}에서도 지역변수를 선언할 수 있다.
    */
    
    let num = 11;
    {
        let num01 = 20;
        // num01 : 20
    console.log(`num01:${num01}`);
    }
    
        // num01 : 11
    console.log(`num01:${num01}`);

    console.clear();
    
    const num02 = 11;
    {
        const num02 = 23;
        //num02:23
        console.log(`num02${num02}`);
    }
    //num02:
    console.log(`num02:${num02}`);//num02:11