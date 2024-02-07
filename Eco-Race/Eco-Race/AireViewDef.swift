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
                Spacer()
                        .frame(height:400)
            }
            
            
        }
    }
}

#Preview {
    AireViewDef()
}
