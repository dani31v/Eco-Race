//
//  ViewRouter.swift
//  Eco-Race
//
//  Created by Daniela Valencia on 06/02/24.
//

import SwiftUI



class ViewRouter: ObservableObject {
@Published var selectedView: String? = "WorldView"
@Published var selectedViewDecision: String? = "WorldView"
@Published var showAler: Bool = false
@Published var showhistory: Bool = false
}
#Preview {
    ViewRouter() as! any View
}
