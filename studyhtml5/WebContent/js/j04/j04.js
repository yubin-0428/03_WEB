'use strict';
/*
function showSubject(){
    let args = arguments[0] + "," + arguments[1];
}
showubject('html', 'css');
*/
function showSubject(){
    
    for(let i=0; i<arguments.length; i++){
        console.log(`arguments[${i}] : ${arguments[i]}`);
    }
    
}

// showSubject('html', 'css', 'javascript');
showSubject('html', 'css', 'javascript', 'jquery', 'jsp', 'spring');