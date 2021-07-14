//
//  main.swift
//  Day01
//
//  Created by 박성준 on 2021/07/14.
//

import Foundation

print("Hello, World!")


let age:Int=10
print("저는 \(age)살 입니다.")
print("저의 형은 \(age+4)살입니다.")

var name1="유비"
var age1=34
var gender1="남자"

print("회원의 이름은 \(name1)이고 나이는 \(age1)이며 성별은 \(gender1)입니다.")

var someInt:Int = -100
someInt=100_000

var someFloat:Float = 3.314

var someDouble:Double = 3.12

let doubleNum = 4.9999999
print(Int(doubleNum))
print(Int(doubleNum.rounded()))

var someCharacter:Character = "a"
someCharacter = "😀"
print(someCharacter)

var someString:String = "☠️🙌"
print(someString)

let temp="b"
print(type(of: temp))

var someMultiString="""
    1234
    abcd
    가나다라
"""

print(someMultiString)

print("aa\tbb\ncc")

var name:String
var size:Int
var weight:Double
var bag:Bool
var color:Character

name="맥북프로"
size=16
weight=2.56
bag=false
color="은"

print("이름 : \(name)")
print("크기 : \(size)")
print("무게 : \(weight)")
print("가방 : \(bag)")
print("색상 : \(color)")

var variableString="Horse"
variableString+=" and carriage"
print(variableString)

var string1="hello"
var string2=" there"
var welcome=string1+string2
print(welcome)

string1.append(string2)
print(string1)

let str="12345,67890"
print("str has\(str.count) characters")

if str.count==0{
    print("Data가 없습니다.")
}else{
    print("Data는 \(str)입니다.")
}

var someAny:Any = 100
someAny="Type"
print(someAny)
someAny=123.12
print(someAny)

var someDouble1:Double=111.1
print(someAny as! Double + someDouble1)

var someNil:String?
someNil=nil

var dialCode=82
var isoCode="KR"
var countryName="Korea"

print(dialCode,isoCode,countryName)

var country=(82,"KR","Korea")
print(country.0,country.1,country.2)

var country1=(dialCode1:82,isoCode1:"KR",countryName1:"Korea")
print(country1.dialCode1,country1.isoCode1,country1.countryName1)

typealias  MyInt = Int
let age2:MyInt=20

typealias person = (name:String,height:Int,marriage:Bool)

var p1:person=("유비",180,true)
print(p1.name)

typealias Rectangle = (name:String,width:Int,height:Int,area:Int,border:Int)
var r1:Rectangle=("직사각형",5,6,0,0)
r1.area=r1.width*r1.height
r1.border=(r1.width+r1.height)*2
print(r1)

let(x1,y1)=(1,"Kim")
print(x1)

print(10/3)
print(10.0/3.0)

let one=1
let miusone= -one
