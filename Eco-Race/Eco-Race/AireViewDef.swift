//
//  AireViewDef.swift
//  Eco-Race
//
//  Created by Daniela Valencia on 06/02/24.
//

import SwiftUI

struct AireViewDef: View {
    var body: some View {
        
        ZStack
        {
            Image("airef")
                .resizable()
                .frame(width:1500, height:860)
            VStack
            {
                Text("AIR")
                    .bold()
                    .font(Font.custom("Arial Rounded MT Bold", size:80))
                    .foregroundColor(.airletra)
             
                
             ZStack{
                 VStack{
                     HStack
                     {
                         RoundedRectangle(cornerRadius: 40)
                             .fill(.ultraThinMaterial)
                             .frame(width:800, height:80)
                         
                         
                         
                     }
                
                     HStack{
                         VStack{
                             Spacer()
                             HStack{
                                 AnswerRow(answer: Answer(text: "Verano",isCorrect: true))
                                 
                                 AnswerRow(answer: Answer(text: "Invierno",isCorrect: false))
                             }
                          
                             HStack{
                                 
                                 
                                 AnswerRow(answer: Answer(text: "Verano",isCorrect: true))
                                 
                                 AnswerRow(answer: Answer(text: "Invierno",isCorrect: false))
                             }
                         }
                     }
                     
                 }
                 
                 
                
                    
                }
             
                
                Spacer()
                
                
               
            }
            
            .padding(200)
            
            
        }
    }
}

#Preview {
    AireViewDef()
}
