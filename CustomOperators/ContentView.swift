//
//  ContentView.swift
//  CustomOperators
//
//  Created by Ramill Ibragimov on 17.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear() {
                print("\(√9)")
                print("\(√25)")
                print("\(42 © 69)")
                print("\(42%)")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Prefix
prefix operator √
prefix func √(number: Double) -> Double {
    return sqrt(number)
}

// Infix
infix operator ©
func ©(num1: Double, num2: Double) -> Double {
    return num1 * num1 + num2 * num2
}

// Postfix
postfix operator %
postfix func %(number: Float) -> Float {
    return number / 100
}
