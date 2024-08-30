import SwiftUI

struct NotchView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 70)
                .foregroundColor(.black)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 4) // Optionaler Rahmen für Klarheit
                )
            Text("Gnocchi Notch")
                .foregroundColor(.white)
                .padding(.top, 10)
        }
    }
}

struct NotchView_Previews: PreviewProvider {
    static var previews: some View {
        NotchView()
            .frame(width: 300, height: 70)
    }
}
