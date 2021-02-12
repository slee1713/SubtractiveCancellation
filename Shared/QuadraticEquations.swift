//
//  QuadraticEquations.swift
//  SubtractiveCancellation
//
//  Created by Spencer Lee on 2/5/21.
//

import Foundation
class QuadraticEquations: NSObject, ObservableObject {
    @Published var a = Double (2.0)
    @Published var b = Double (-7.0)
    @Published var c = Double (3.0) 
    @Published var normQuadMinus = 1.0
    @Published var normQuadPlus = 1.0
    @Published var weirdQuadMinus = 1.0
    @Published var weirdQuadPlus = 1.0
    
    func weirdQuadPlusCalculator() -> Double
    {
        weirdQuadPlus = (-2.0 * c) / (b + sqrt(pow(b,2.0) - 4.0 * a * c))
        return( weirdQuadPlus )
    }
    func weirdQuadMinusCalculator() -> Double
    {
        weirdQuadMinus = (-2.0 * c) / (b - sqrt(pow(b,2.0) - 4.0 * a * c))
        return( weirdQuadMinus )
    }
    
    func normQuadPlusCalculator() -> Double
    {
        normQuadPlus = ( -b + sqrt(pow(b,2.0) - 4 * a * c)) / ( 2 * a )
        return( normQuadPlus )
    }
    
    func normQuadMinusCalculator() -> Double
    {
        normQuadMinus = ( -b - sqrt(pow(b,2.0) - 4 * a * c)) / ( 2 * a )
        return( normQuadMinus )
    }
    
}

