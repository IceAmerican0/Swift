//
//  main.swift
//  Algorithms
//
//  Created by 박성준 on 2021/07/16.
//

import Foundation

print("Hello, World!")


func solution(_ arr:[Int]) -> [Int] {
    var arr2=arr
    if let first=arr.firstIndex(of: arr.min()!){
        arr2.remove(at: first)
    }
    if arr2.count==0{
        arr2.append(-1)
    }
    return arr2
}

print(solution([6,5,1,3,4]))




