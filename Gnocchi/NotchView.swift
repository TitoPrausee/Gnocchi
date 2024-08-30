import SwiftUI

struct NotchView: View {
    var body: some View {
        VStack {
            // Notch Leiste
            HStack {
                Text("Gnocchi Notch")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.leading, 20)
                Spacer()
            }
            .frame(height: 30)
            .background(Color.black.opacity(0.8))
            .cornerRadius(15)
            .padding(.top, 10)

            Spacer() // Füllt den restlichen Platz
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.clear) // Hintergrund der App
    }
}

struct NotchView_Previews: PreviewProvider {
    static var previews: some View {
        NotchView()
    }
}
