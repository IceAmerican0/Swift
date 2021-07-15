//
//  main.swift
//  Day02
//
//  Created by 박성준 on 2021/07/15.
//

import Foundation

print("Hello, World!")

var str1:String
str1="Apple"
str1="Google"

print(str1)

var str2:String?
str2="Apple"
str2="123"
//str2=nil
print(str2!)

var int1:Int=Int(str2!)!
print(int1+10)

print(1==1)

print((1,"zebra")<(2,"apple"))
print((3,"apple")<(3,"bird"))

let contentHeight=40
let hasHeader=true

let rowHeight=contentHeight+(hasHeader ? 50:20)
print(rowHeight)

var sum:Int=0
for i in 1...10{
    sum+=i
}
print("1~10의 합계는 \(sum)입니다.")

for i in 1...9{
    print("5 X \(i) = \(i*5)")
}

for i in 1..<10{
    print("5 X \(i) = \(i*5)")
}


let names=["Anna","Alex","Brain","Jack"]

for i in 0..<names.count{
    print("Person \(i+1) is called \(names[i])")
}


//Optional
//값이 있을수도, 없을수도 있음
//nil값을 포함할수도, 안할수도 있음

var constantNum:Int?=100
constantNum=nil
var constantNum2:Int!=100
print(constantNum2!)
print(constantNum2+10)

//Optional Unwrapping

var myName:String?="James"

if let name:String=myName{
        print(name)
}else{
    print("myName is nil")
}

var youName:String?=nil

if let name:String=youName{
        print(name)
}else{
    print("yourName is nil")
}

var myName2:String?="James"
var yourName2:String?=nil

if let name=myName2,let friend=yourName2{
    print("\(name) and \(friend)")
}

//Force Unwrapping
print(myName2!)
myName2=nil
print(myName2 as Any)

//Collection : 여러값들을 묶어서 하나의 변수로 사용

/*
 Array : 순서가 있는 리스트 컬렉션
 Dictionary: Key와 Value의 쌍으로 이뤄진 컬렉션
 Set : 순서가 없고 멤버가 유일한 컬렉션, 집합연산
 */

//var intVariable:Array<Int>=Array<Int>()
//var intVariable:[Int]=[Int]()
var intVariable:[Int]=[]
intVariable.append(1)
intVariable.append(10)
intVariable.append(100)
intVariable.append(1000)

print(intVariable)
print(intVariable.contains(100))
print(intVariable.contains(90))

print(intVariable[0])
print(intVariable[0...2][0])
intVariable.remove(at: 0)
intVariable.removeLast()
print(intVariable)

intVariable=[]

var threeDouble=Array(repeating: 0.0, count: 3)
print(threeDouble)

var anotherDouble=Array(repeating: 2.5, count: 3)
var sixDouble=threeDouble+anotherDouble
print(sixDouble)

var intVariable2=[1,2,3]
print(type(of: intVariable2))
intVariable2.append(4)

var shoppingList=["Eggs","Milk"]

print(shoppingList.count)
if shoppingList.isEmpty{
    
}
shoppingList+=["Baking Powder"]
shoppingList+=["Chocolate","Cheese","Butter"]
print(shoppingList)

shoppingList[0...3]=["Banana1","Banana2","Banana3","Banana4","Banana5","Banana6"]
print(shoppingList)

shoppingList.insert("Apple", at: 0)
print(shoppingList)

for(index,value) in shoppingList.enumerated(){
    print("Item \(index+1): \(value)")
}

print(shoppingList.enumerated())

var tot=0.0
for i in sixDouble{
    tot+=i
}
print(tot)

print(sixDouble.max()!)
