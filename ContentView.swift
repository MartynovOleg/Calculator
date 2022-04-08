//
//  ContentView.swift
//  Calculator
//
//  Created by mac on 21.03.2022.
//

import SwiftUI

enum CalcButtons: String {
    
    case zero, one, two, three, four, five, six, seven, eight, nine, dot
    case equals, plus, minus, multiply, divide
    case ac, plusMinus, percent
    
    var backgroundColor: Color {
        switch self {
        case .equals, .plus, .minus, .multiply, .divide:
            return Color(.orange)
        case .ac, .plusMinus, .percent:
            return Color(.lightGray)
            
        default:
            return Color(.darkGray)
        }
        }
    var titleOfButtons: String {
        switch self {
        case .zero:
            return "0"
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .dot:
            return "."
        case .equals:
            return "="
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiply:
            return "x"
        case .divide:
            return "/"
        case .ac:
            return "AC"
        case .plusMinus:
            return "+/-"
        default:
            return "%"
        }
    }
}

let buttons: [[CalcButtons]] = [[.ac, .plusMinus, .percent, .divide,],
                                [.seven, .eight, .nine, .multiply],
                                [.four, .five, .six, .minus],
                                [.one, .two, .three, .plus],
                                [.zero, .zero, .dot, .equals]]

struct ContentView: View {
    var body: some View {
        ZStack (alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
    
            VStack (spacing: 15) {
                        
                        HStack {
                            Spacer()
                            Text("0").foregroundColor(.white)
                                .font(.system(size: 64))
                                .bold()
                        }.padding()
                        
                        ForEach (buttons, id: \.self) { row in
                            
                            HStack (spacing: 15) {
                                
                                ForEach (row, id: \.self) { button in
                                    Text(button.titleOfButtons)
                                                    .font(.system(size: 30)).bold()
                                                    .foregroundColor(.white)
                                                    .frame(width: 70, height: 70)
                                                    .background(button.backgroundColor)
                                                    .cornerRadius(35)
                                }
                            }
                        }
                    }
            }
        
        }
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
        }
     }

