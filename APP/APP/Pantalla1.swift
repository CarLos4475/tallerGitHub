import SwiftUI

struct Pantalla1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Fondo degradado
                LinearGradient(colors: [.indigo, .purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Text("👾")
                        .font(.system(size: 80))
                    
                    Text("SWIFT")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    
                    HStack(spacing: 20) {
                        Text("EL CASI JUEGO")
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                            .bold()
                        
                    }
                    .padding()
                    .glassEffect()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    NavigationLink {
                        Pantalla2()
                    } label: {
                        
                        Text("Toca para empezar")
                            .foregroundStyle(.gray)
                            .padding()
                            .glassEffect(.regular)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding()
                    }
                    
                   
                }
            }
            .navigationTitle("INICIO")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// AQUÍ ESTABA EL ERROR:
#Preview {
    Pantalla1()
}
