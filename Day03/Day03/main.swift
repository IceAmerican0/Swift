//
//  main.swift
//  Day03
//
//  Created by 박성준 on 2021/07/16.
//

import Foundation

print("Hello, World!")


//var scoreDictionary:Dictionary<String,Int>=[String:Int]()
var scoreDictionary:[String:Int]=[:]
scoreDictionary["유비"]=100
scoreDictionary["관우"]=90
scoreDictionary["장비"]=80

print(scoreDictionary)

let initializedDictionary:[String:String]=["name":"James","gender":"male"]

//Set은 집합연산에 사용되고, 중복 데이터를 적용하지 않는다.
let oddDigits:Set=[1,3,5,7,9,9,9]
let evenDigits:Set=[0,2,4,6,8]
let singleDigitPrimeNumbers:Set=[2,3,5,7]

print(oddDigits)

//합집합
print(oddDigits.union(evenDigits).sorted())

//교집합
print(oddDigits.intersection(evenDigits).sorted())

//차집합
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())

//Set의 동등 비교
let houseAnimals:Set=["dog","cat","apple"]
let farmAnimals:Set=["cow","chicken","sheep","dog","cat"]
let cityAnimals:Set=["duck","rabbit"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))


print("============================")

var isCar=true
var isNew=true

if isCar,isNew{
    print("New Car")
}

isNew=false

if isCar,isNew{
    print("New Car")
}else{
    print("Old Car")
}


let personAge=14
if personAge<1{
    print("baby")
}else if personAge<3{
    print("toddler")
}else if personAge<5{
    print("preschooler")
}else if personAge<13{
    print("gradschooler")
}else if personAge<18{
    print("teen")
}else{
    print("adult")
}

//After using Switch statement
switch personAge{
case 0..<1:
    print("baby")
case 1..<3:
    print("toddler")
case 3..<5:
    print("preschooler")
case 5..<13:
    print("gradeschooler")
case 13..<18:
    print("teen")
default:
    print("adult")
}

let someInteger=123456

switch someInteger{
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

print(Int.max)

let aCharacter:Character="a"

switch aCharacter{
case "a","A":
    print("The letter A")
default:
    print("Not the letter A")
}


let name="유비"
let kor=91
let eng=97
let math=95

var tot=0
var avg:Double=0

tot=kor+eng+math
avg=Double(tot)/3

var grade:String

if avg>=90 && avg<=100{
    grade="A"
}else if avg>=80{
    grade="B"
}else if avg>=70{
    grade="C"
}else if avg>=60{
    grade="D"
}else if avg<60 && avg>0{
    grade="F"
}else{
    grade="올바르지 않은 학점"
}

switch avg{
case 90..<101:
    grade="A"
case 80..<91:
    grade="B"
case 70..<81:
    grade="C"
case 60..<71:
    grade="D"
case 0..<61:
    grade="F"
default:
    grade="올바르지 않은 학점"
}

grade = avg>=90 && avg<=100 ? "A":
    avg>=80 ? "B" :
    avg>=70 ? "C" :
    avg>=60 ? "D" : "F"

var score=[90,80,70,60,0]
var level=["A","B","C","D","F"]

for i in 0..<score.count{
    if avg>=Double(score[i]){
        grade=level[i]
        break
    }
}

let numberOfLegs=["Spider":8,"Ant":6,"Cat":4]

for(animalName,LegCount) in numberOfLegs{
    print("\(animalName) have \(LegCount) legs")
}

let seq1=1...5
for i in seq1{
    print("\(i) * 5 = \(i*5)")
}

for i in seq1.reversed(){
    print("\(i) * 5 = \(i*5)")
}

let minutes=60
let hourInterval=5
for tickMark in stride(from: 0, to: minutes, by: hourInterval){
    print(tickMark)
}

for tickMark in stride(from: 0, through: minutes, by: hourInterval).reversed(){
    print(tickMark)
}

var startIndex=0
var endIndex=100
var sum=0

while startIndex<=endIndex{
    sum+=startIndex
    startIndex+=1
}

print(sum)

var num1=2
sum=0
while num1 <= 100{
    sum+=num1
    num1+=2
}

print(sum)

print("Enter an integer(0 ~ 9) :",terminator: " ")
let input=Int(readLine()!)
var repNum=0
var remainder=0
var sumNo=0

if let _:Int = input{
    repNum=input!
    while repNum != 0{
        remainder=repNum%10
        sumNo+=remainder
        repNum/=10
    }
    print("Sum of digits = \(sumNo)")
}else{
    print("Input value is wrong!")
}


