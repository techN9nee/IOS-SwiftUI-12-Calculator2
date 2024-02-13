//
//  CustomTextField.swift
//  CalculatorApp
//
//  Created by Aytek Özgül on 13.02.2024.
//

import SwiftUI

struct CustomTextField: View {
    var title : String
    @Binding var text : String
    
    var body: some View {
        VStack{
            TextField(title, text: $text)
                .keyboardType(.decimalPad)
                .padding()
                .background(Color(red:0.9,green: 0.9,blue: 0.9))
                .cornerRadius(10)
        }
    }
}

