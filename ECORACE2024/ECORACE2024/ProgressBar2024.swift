//
//  ProgressBar2024.swift
//  ECORACE2024
//
//  Created by Daniela Valencia on 07/02/24.
//

import Foundation
import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var maxProgress: CGFloat

    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(.darkGray))
                .cornerRadius(10)

            Rectangle()
                .frame(width: (progress / maxProgress) * 350, height: 4) // Ajusta el ancho según el progreso y el máximo progreso
                .foregroundColor(Color(.red))
                .cornerRadius(10)
        }
    }
}
