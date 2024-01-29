//
//  Checkpoint4.swift
//  
//
//  Created by Михаил Медведев on 29.01.2024.
//

import Foundation

enum sqrtErrors: Error {
    case outOfBounds, noRoot
}
func handmadeSQRT (for number: Int) throws -> String {
    if number < 1 || number > 10000 {
        throw sqrtErrors.outOfBounds
    }
    for i in 1...100 {
        if number == i * i {
            return "Square root for \(number) is \(i)"
        }
    }
        throw sqrtErrors.noRoot
    }
    
var sqrtOption = 25
do {
    var sqrt1Option = try handmadeSQRT(for: sqrtOption)
    print(sqrt1Option)
} catch sqrtErrors.noRoot {
    print("Number \(sqrtOption) hasn't got a square root")
} catch sqrtErrors.outOfBounds {
    print("Number \(sqrtOption) is out of bounds")
}

            
    for i in 1...10000 {
        do {
            let sqrtAns = try handmadeSQRT(for: i)
            print(sqrtAns)
        } catch {
            print(error)
        }
    }
