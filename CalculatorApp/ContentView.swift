//
//  ContentView.swift
//  CalculatorApp
//
//  Created by Aytek Özgül on 13.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstNumber : String = ""
    @State private var secondNumber : String = ""
    @State private var operation : String = ""
    @State private var result : String = ""
    
    let calculator = Calculator()
    
    var body: some View {
        VStack(spacing:20) {
            CustomTextField(title: "First Number", text: $firstNumber)
            Picker("Picker", selection: $operation) {
                Text("+").tag("+")
                Text("-").tag("-")
                Text("*").tag("*")
                Text("/").tag("/")
            }.pickerStyle(SegmentedPickerStyle())
            
            CustomTextField(title: "Second Number", text: $secondNumber)
            Text(result)
                .font(.title)
                .foregroundStyle(.mint)
            Button{
                self.result = calculator.calculate(firstNumber: firstNumber, secondNumber: secondNumber, operation: operation)
            }label: {
                Text("Calculate")
            }.padding()
                .foregroundStyle(.white)
                .background(Color.blue)
                .cornerRadius(10)
            
        }
    }
}

class Calculator {
    func calculate(firstNumber: String , secondNumber:String, operation : String) -> String {
        let num1 = Int(firstNumber) ?? 0
        let num2 = Int(secondNumber) ?? 0
        
        switch operation {
        case "+":
            return String(num1 + num2)
        case "-":
            return String(num1 - num2)
        case "*":
            return String(num1 * num2)
        case "/":
            return String(num1 / num2)
        default:
            return "Invalid"
        }
    }
}
    
    #Preview {
        ContentView()
    }

