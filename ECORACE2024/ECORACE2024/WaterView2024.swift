//
//  FuegoView2024.swift
//  ECORACE2024
//
//  Created by Daniela Valencia on 07/02/24.
//

import SwiftUI

struct WaterView2024: View {
    var body: some View {
        ZStack{
            Image("waterf")
                .resizable()
                .frame(width:1500, height:860)
            VStack
            {
              
                    
                    Text("WATER")
                        .bold()
                        .font(Font.custom("Arial Rounded MT Bold", size:80))
                        .foregroundColor(.colorwater)
               
                
                Spacer()
                
                ZStack{
                    WaterQuestionView2024()
                }
                
                
            }
           
            .padding(450)
        }
    }
}


#Preview {
    WaterView2024()
}

