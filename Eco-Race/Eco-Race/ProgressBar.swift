//
//  ProgressBar.swift
//  ViewFuego
//
//  Created by iOS Lab on 05/02/24.
//

import SwiftUI

struct ProgressBar: View {
    var progress:CGFloat
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: 350,maxHeight: 14)
                .foregroundColor(Color(.white))
                .cornerRadius(20)
            
            Rectangle()
                .frame(width: progress,height: 14)
                .foregroundColor(Color(.red))
                .cornerRadius(20)
            
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
        //aqui se cambia cada cunto se avanza de acuerdo a la pregutna
    }
}

