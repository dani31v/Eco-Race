//
//  AnswerRow.swift
//  Eco-Race
//
//  Created by Daniela Valencia on 06/02/24.


import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State private var isSelected = false
    
    var green = Color(.green)
    var red = Color(.red)
    
    var body: some View {
        
        HStack(spacing: 20){
            Image(systemName: "circle.fill")
                .font(.caption)
            Text(answer.text)
                .bold()
            if isSelected{
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
        }
        .padding()
        .frame(width:350, height: 80, alignment: .leading)
        .foregroundColor(isSelected ? Color(.orange) : .black)
        .background(
        
            .ultraThinMaterial
        )
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray, radius: 5, x:0.5, y: 0.5)
        .onTapGesture {
            isSelected = true
        }
        
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrect: false))
    }
}
