//
//  ContentView.swift
//  Shared
//
//  Created by Spencer Lee on 2/5/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var quadCalculator = QuadraticEquations()
    
    @State var aText = "1.0"
    @State var bText = "1.0"
    @State var cText = "1.0"
    @State var normQuadMinusText = "1.0"
    @State var normQuadPlusText = "1.0"
    @State var weirdQuadMinusText = "1.0"
    @State var weirdQuadPlusText = "1.0"
    var body: some View {
        VStack{
            
            Text("a")
                .padding()
            
            TextField("aText", text: $aText)
                .padding()
            
            Text("b")
                .padding()
            
            TextField("bText" , text: $bText)
                .padding()
            
            Text("c")
                .padding()
            
            TextField("cText", text: $cText)
                .padding()
            
            Text("Normal Quadratic Answers")
                .padding()
            HStack{
                VStack{
                    Text("Minus")
                    
                    TextField("normQuadMinusText", text: $normQuadMinusText)
                        .padding()
                    
                }
                VStack{
                    Text("Plus")
                    TextField("normQuadPlusText", text: $normQuadPlusText)
                        .padding()
                }
            }
            
            Text("Weird Quadratic Answers")
                .padding()
            HStack{
                VStack{
                    
                    Text("Minus")
                    TextField("weirdQuadMinusText", text: $weirdQuadMinusText)
                        .padding()
                    
                }
                VStack{
                    Text("Plus")
                    TextField("weirdQuadPlusText", text: $weirdQuadPlusText)
                        .padding()
                }
            }
        }
        
        HStack {
            
            Button("Calculate", action: calculate)
                .padding()
        }
        
        .padding()
    }
    func  calculate () {
        
        quadCalculator.a = Double(aText)!
        quadCalculator.b = Double(bText)!
        quadCalculator.c = Double(cText)!
        
        let weirdQuadPlus = quadCalculator.weirdQuadPlusCalculator()
        weirdQuadPlusText =  "\(weirdQuadPlus)"
        
        let weirdQuadMinus = quadCalculator.weirdQuadMinusCalculator()
        weirdQuadMinusText =  "\(weirdQuadMinus)"
        
        let normQuadPlus = quadCalculator.normQuadPlusCalculator()
        normQuadPlusText = "\(normQuadPlus)"
        
        let normQuadMinus = quadCalculator.normQuadMinusCalculator()
        normQuadMinusText = "\(normQuadMinus)"    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
