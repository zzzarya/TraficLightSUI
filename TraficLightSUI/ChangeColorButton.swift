//
//  ChangeColorButton.swift
//  TraficLightSUI
//
//  Created by Антон Заричный on 19.10.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
        }
        .frame(width: 140, height: 50)
        .font(.system(size: 30, weight: .bold, design: .default))
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(15)
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "", action: {})
    }
}
