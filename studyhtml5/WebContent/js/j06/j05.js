'use strict';

class User {
    //생성자
    constructor(name, psswd, age) {
        this.name = name;
        this.psswd = psswd;
        this.age = age;
    }

    //getter
    get getAge() {
        return this.age;
    }

    //setter
    set setAge(value) {
        if (value < 0) {
            value = 0;
        }

        this.age = value;
    }

}
const user01 = new User('PCWK','1234',-1);

console.log(`name:${user01.name}`);

//setter
user01.setAge = -1;

//getter
console.log(`age:${user01.getAge}`);


