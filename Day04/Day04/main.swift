//
//  main.swift
//  Day04
//
//  Created by 박성준 on 2021/07/19.
//

import Foundation

print("Hello, World!")


func interSum(a:Int,b:Int) -> Int{
    return a + b
}

print(interSum(a:5,b:8))

func greet(person:String)->String{
    let greeting="Hello, \(person)"
    return greeting
}

print(greet(person: "Anna"))

func sayHelloWorld() -> String{
    return "Hello, world!"
}

func buildAddress(_ name:String, address:String, city:String, 우편번호 zipCode:String, country:String?="USA") -> String{
    return """
        \(name)
        \(address)
        \(city)
        \(zipCode)
        \(country ?? "")
        """
}

print(buildAddress("유비", address: "중국", city: "상하이", 우편번호: "123", country: "China"))
print(buildAddress("장비", address: "중국", city: "북경", 우편번호: "123"))
print(buildAddress("유비", address: "중국", city: "상하이", 우편번호: "123", country: nil))

func sayHelloFriends(me:String, friend:String...) -> String{
    return "Hello \(friend)! I'm \(me)."
}

print(sayHelloFriends(me: "초선", friend: "손견","손책","장양"))

func getCountry() -> (dialCode:Int, isoCode:String, name:String){
    let country=(dialCode:82,isoCode:"KR", name:"Korea")
    return country
}

let ret=getCountry()
print(ret.dialCode)

func addRange(start:Int,end:Int)->String{
    var sum=0
    var i=0
//    for i in start..<end+1{
//        sum+=i
//    }
    while i<end+1{
        sum+=i
        i+=1
    }
    
    return "\(start)부터 \(end)까지의 합은 \(sum)입니다."
}


print(addRange(start:1, end:100))

//원
func shape(_ r:Double){
    let pi=3.14
    let area=pi*r*r
    let border=2*pi*r
    print("원 : \(area), \(border)")
}

//직사각형
func shape(_ w:Int, _ h:Int){
    let area = w*h
    let border = (w+h) * 2
    print("직사각형 : \(area), \(border)")
}

//직각 삼각형
func shape(_ w:Int, _ h:Int, _l:Int){
    let area = w*h/2
    let border = 0
    print("직각 삼각형 : \(area), \(border)")
}

shape(5)


/*
 Class: 전통적인 OOP관점에서의 클래스
 - property
 - constructor
 - method
 - 참조 타입 선언(Call by reference)
 
 Struct
 - 상속 불가
 - property
 - constructor
 - method
 - 값 타입 선언(Call by value)
 */

struct ValueType{
    var property=1
}

class ReferenceType{
    var property=1
}

let firstStructInstance: ValueType=ValueType()
var secondStructInstance=firstStructInstance
secondStructInstance.property = 2

print("first :  \(firstStructInstance.property)")
print("second : \(secondStructInstance.property)")

let firstClassInstance=ReferenceType()
var secondClassInstace=firstStructInstance
secondStructInstance.property=2

print("first : \(secondStructInstance.property)")
print("second : \(secondStructInstance.property)")
