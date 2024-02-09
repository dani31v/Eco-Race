//
//  QuestionView2024.swift
//  ECORACE2024
//
//  Created by Daniela Valencia on 07/02/24.
//

import SwiftUI
struct AirQuestion{
    var text: String
    var options: [Answer]
}
struct AirQuestionView2024: View {
    @State private var progress: CGFloat = 0
    @State private var currentQuestionIndex = 0
    
    let questions = [
        AirQuestion(text: "Pregunta 1", options: [
            Answer(text: "Respuesta A", isCorrect: true),
            Answer(text: "Respuesta B", isCorrect: false),
            Answer(text: "Respuesta C", isCorrect: false),
            Answer(text: "Respuesta D", isCorrect: false)
        ]),
        AirQuestion(text: "Pregunta 2", options: [
            Answer(text: "Respuesta A", isCorrect: false),
            Answer(text: "Respuesta B", isCorrect: true),
            Answer(text: "Respuesta C", isCorrect: false),
            Answer(text: "Respuesta D", isCorrect: false)
        ]),
        AirQuestion(text: "Pregunta 3", options: [
            Answer(text: "Respuesta A", isCorrect: false),
            Answer(text: "Respuesta B", isCorrect: true),
            Answer(text: "Respuesta C", isCorrect: false),
            Answer(text: "Respuesta D", isCorrect: false)
        ]),
        AirQuestion(text: "Pregunta 4", options: [
            Answer(text: "Respuesta A", isCorrect: false),
            Answer(text: "Respuesta B", isCorrect: true),
            Answer(text: "Respuesta C", isCorrect: false),
            Answer(text: "Respuesta D", isCorrect: false)
        ]),
        AirQuestion(text: "Pregunta 5", options: [
            Answer(text: "Respuesta A", isCorrect: false),
            Answer(text: "Respuesta B", isCorrect: true),
            Answer(text: "Respuesta C", isCorrect: false),
            Answer(text: "Respuesta D", isCorrect: false)
        ])
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            ProgressBar(progress: progress, maxProgress: CGFloat(questions.count * 20))
                .padding(.horizontal)
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.ultraThinMaterial)
                .frame(width: 500, height: 150)
                .padding()
                .overlay(
                    Text(questions[currentQuestionIndex].text)
                        .padding()
                )
            
            // Organiza las respuestas en dos columnas
            HStack {
                VStack(spacing: 10) {
                    AnswerRow(answer: questions[currentQuestionIndex].options[0], isSelected: false) { isCorrect in
                        handleAnswer(isCorrect: isCorrect)
                    }
                    AnswerRow(answer: questions[currentQuestionIndex].options[1], isSelected: false) { isCorrect in
                        handleAnswer(isCorrect: isCorrect)
                    }
                }
                
                VStack(spacing: 10) {
                    AnswerRow(answer: questions[currentQuestionIndex].options[2], isSelected: false) { isCorrect in
                        handleAnswer(isCorrect: isCorrect)
                    }
                    AnswerRow(answer: questions[currentQuestionIndex].options[3], isSelected: false) { isCorrect in
                        handleAnswer(isCorrect: isCorrect)
                    }
                }
            }
            
            Spacer()
        }
        
    }
    
    func handleAnswer(isCorrect: Bool) {
        if isCorrect {
            progress += 20
        }
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        }
    }
}
#Preview {
    AirQuestionView2024()
}
