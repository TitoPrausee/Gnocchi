import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            NotchView() // Abgerundete Notch-Ansicht einfügen
                .frame(width: 300, height: 70)
                .padding(.top, 10)
            
            HStack {
                Text("Gnocchi Knotenleiste")
                    .font(.headline)
                    .padding()
                Spacer()
            }
            .frame(height: 50)
            .background(Color.blue.opacity(0.8))
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.1))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
