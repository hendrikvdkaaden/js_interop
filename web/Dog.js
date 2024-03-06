class Dog {
    constructor(name, age) {
        this._name = name;
        this._age = age;
        console.log("Dog created")
    }

    get name() {
        return this._name;
    }

    get age() {
        return this._age;
    }

    bark() {
        console.log(`${this._name}:${this._age}:: Woof!`);
    }

    sleep(options) {
        if (options.bed) {
            console.log(`${this._name} is sleeping on a ${options.hardness} bed.`);
        } else {
            console.log(`${this._name} is sleeping on the floor. :(`);
        }
    }
}


window.Dog = Dog;
