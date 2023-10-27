//
//  ScaledButtonStyle.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 27/10/23.
//

import SwiftUI

struct ScaledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.94 : 1)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}
