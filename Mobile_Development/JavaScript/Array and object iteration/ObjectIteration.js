// Task 1
var dairy = ['cheese', 'sour cream', 'milk', 'yogurt', 'ice cream', 'milkshake']

function logDairy() {
    let items = Object.values(dairy);
    for (const item of items)  {
        console.log(item);
    }
}

logDairy()


// Task 2
const animal = {

canJump: true

};

const bird = Object.create(animal);

bird.canFly = true;

bird.hasFeathers = true;

/* const bird = {

    canFly: true
    hasFeathers: true
    canJump: true


*/

function birdCan() {
   
    let entries = Object.entries(bird)

    for (const [key, value] of entries) {
        console.log(`${key}: ${value}`);
    }
    
}

birdCan();


// Task 3
function animalCan() {
    for (const key in bird) {
        console.log(`${key}: ${bird[key]}`);
    }
}

animalCan();

const meal = ["soup", "steak", "ice cream"]
let [starter] = meal;
console.log(starter);

let obj = {
    key: 1,
    value: 4
};

// spread and rest
let output = { ...obj };
output.value -= obj.key;

console.log(output.value);

function count(...basket) {
    console.log(basket.length)
}

count(10, 9, 8, 7, 6);