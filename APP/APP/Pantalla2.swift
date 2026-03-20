//
//  Pantalla2.swift
//  APP
//
//  Created by Carlos Emilianon Segura Loera on 19/02/26.
//

import SwiftUI

struct Pantalla2: View {
    
    
    
    @State private var score: Int = 0
    
    let grad1 = LinearGradient(colors: [.cyan, .gray], startPoint: .top, endPoint: .bottom)
    
    var body: some View{
        ZStack{
            LinearGradient(colors: [.blue, .black], startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea()
            if score >= 10 {
                VStack{
                    Text("¡GANASTE!")
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 50))
                        .padding(20)
                        .background(grad1)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    
                    Text("🥳")
                        .font(.system(size: 50))
                }.transition(.scale)
                    
            } else {
                VStack(spacing: 30){
                    Text("PARTIDA")
                        .padding()
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .glassEffect()
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    
                    HStack{
                        Text("Puntaje:  \(score)")
                    }
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .padding()
                    .glassEffect()
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    
                    Text("PRESIONA EL BOTON PARA COMENZAR A PUNTUAR")
                        .font(.system(size: 20))
                        .foregroundStyle(.white)
                        .fontWeight(.heavy)
                        .padding()
                        .background(grad1)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                    Spacer()
                    
                    Button("PUNTUA"){
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6)){
                            
                            score += 1
                        }
                    }
                    .foregroundStyle(.white)
                    .padding()
                    .buttonStyle(.glass)
                    .fontWeight(.bold)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .padding(.bottom, 50)
                    
                    
                    
                    
                }.transition(.slide)
            }
            
        }
    }
}
// AQUÍ ESTABA EL ERROR:
#Preview {
    Pantalla2()
}
