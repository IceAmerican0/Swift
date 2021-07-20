//
//  main.swift
//  Day05
//
//  Created by 박성준 on 2021/07/20.
//

import Foundation

struct Sample{
    var sampleProperty:Int = 10
    let fixedSampleProperty:Int = 100
    
    func instanceMethod(){
        print("instance method")
    }
    
    static func typeMethod(){
        print("type method")
    }
}

var samp:Sample=Sample()
print(samp.sampleProperty)
samp.sampleProperty=100
print(samp.sampleProperty)

var samp1=Sample()
print(samp1.sampleProperty)

Sample.typeMethod()
//print(Sample.typeProperty)

struct Student{
    var name:String="unknown"
    var `class` :String = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입입니다.")
    }
    
    func selfIntroduce(){
        print("저는 \(`class`)반 \(name)입니다.")
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce()

var student:Student=Student()
student.name="James"
student.class="스위프트"
student.selfIntroduce()

let cathy:Student=Student()
//cathy.name="abc"
cathy.selfIntroduce()

struct Student1{
    var name:String="unknown"
    var `class` :String = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입입니다.")
    }
    
    func selfIntroduce(){
        print("저는 \(`class`)반 \(name)입니다.")
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student1.selfIntroduce()
var student1:Student1=Student1()

class Shape{
    
    var radius=0.0
    var border=0.0
    
    func input(_ x:Double){
        radius = x * 3.14 * 3.14
        border = 2 * x * 3.14
        
        printResult()
    }
    
    func input(_ x:Double, _ y:Double){
        radius=x*y
        border=x*y*2
        
        printResult()
    }
    
    func input(_ x:Double, _ y:Double, _ z:Double){
        radius=x*y/2
        border=x+y+z
        
        printResult()
    }
    
    func printResult(){
        Swift.print("radius = \(Int(radius)), border=\(Int(border))")
    }
}

let sh1:Shape=Shape()
let sh2:Shape=Shape()
let sh3:Shape=Shape()

sh1.input(5)
sh2.input(5,6)
sh3.input(5,6,8)

class Shape1{
    var area=0.0
    var border=0.0
    var pi=3.1415
    
    init(){
        print("계산 시작")
    }
    
    init(radius:Double){
        area=radius*radius*pi
        border=radius*2*pi
        calc()
    }
    
    func input(r:Double){
        area=r*r*pi
        border=2*r*pi
        calc()
    }
    
    init(x:Double,y:Double){
        area=x*y
        border=x*y*2
        
        calc()
    }
    
    init(_ x:Double, _ y:Double, _ z:Double){
        area=x*y/2
        border=x+y+z
        
        calc()
    }
    
    func calc(){
        print("면적은 \(Int(area))이고 둘레는 \(Int(border))입니다.")
    }
}

let sh4:Shape1=Shape1()
sh4.input(r:5.0)

let sh5:Shape1=Shape1(x: 5.0, y:5.0)

// Extension
// 구조체, 클래스, 프로토콜 타입에 새로운 기능을 추가할수 있는 기능
// 기존에 존재하는 기능은 재정의 할 수 없다.

extension Int{
    var isEven:Bool{
        return self%2==0
    }
    var isOdd:Bool{
        return self%2==1
    }
}

print(1.isEven)

//Closure

func sumFunction(a:Int, b:Int) -> Int{
    return a+b
}

var sumResult:Int=sumFunction(a: 10, b: 20)
print(sumResult)

var sumClosure:(Int,Int) -> Int = {(a:Int,b:Int) -> Int in
    return a+b
}

sumResult=sumClosure(10,20)
print(sumResult)

func genNum() ->String{
    return String(Int.random(in: 1..<10))
}

print(genNum())
print(genNum())
