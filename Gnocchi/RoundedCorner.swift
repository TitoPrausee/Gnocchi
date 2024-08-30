import SwiftUI

struct RoundedCorners: Shape {
    var radius: CGFloat = 0.0
    var corners: [Corner] = [.bottomLeft, .bottomRight]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: radius, height: radius))
        return path
    }
}

enum Corner {
    case topLeft, topRight, bottomLeft, bottomRight
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: [Corner]) -> some View {
        clipShape(RoundedCorners(radius: radius, corners: corners))
    }
}
 
