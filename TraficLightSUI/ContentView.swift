//
//  ContentView.swift
//  TraficLightSUI
//
//  Created by Антон Заричный on 19.10.2022.
//

import SwiftUI

struct ContentView: View {
  @State  var currentLight: Color = .white
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                
                CircleView(color: .red, opacity: currentLight == .red ? 1 : 0.2)
                CircleView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.2)
                CircleView(color: .green, opacity: currentLight == .green ? 1 : 0.2)
                
                Spacer()
                
                ChangeColorButton(title: currentLight == .white ? "START" : "NEXT") {
                    changeColor()
                }
            }
            .padding()
        }
    }
    
    private func changeColor() {
        switch currentLight {
        case .white: currentLight = .red
            
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        default: currentLight = .red
        }
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
