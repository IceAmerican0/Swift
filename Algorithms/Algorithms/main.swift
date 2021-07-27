//
//  main.swift
//  Algorithms
//
//  Created by 박성준 on 2021/07/16.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum=0
    
    for i in 0..<absolutes.count{
        if signs[i]{
            sum+=absolutes[i]
        }else{
            sum-=absolutes[i]
        }
    }
    
    return sum
}

print(solution([4,7,12],[true,false,true]))


