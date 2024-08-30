import SwiftUI

struct NotchView: View {
    var body: some View {
        ZStack {
            CustomCorners(cornerRadius: 20, corners: [.bottomLeft, .bottomRight])
                .frame(width: 300, height: 70)
                .foregroundColor(.black)
            Text("Gnocchi Notch")
                .foregroundColor(.white)
                .padding(.top, 10)
        }
        .background(Color.clear)
    }
}

struct CustomCorners: Shape {
    var cornerRadius: CGFloat
    var corners: [Corner]

    enum Corner {
        case topLeft, topRight, bottomLeft, bottomRight
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let topLeft = corners.contains(.topLeft) ? cornerRadius : 0
        let topRight = corners.contains(.topRight) ? cornerRadius : 0
        let bottomLeft = corners.contains(.bottomLeft) ? cornerRadius : 0
        let bottomRight = corners.contains(.bottomRight) ? cornerRadius : 0

        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addArc(
            center: CGPoint(x: rect.minX + topLeft, y: rect.minY + topLeft),
            radius: topLeft,
            startAngle: Angle.degrees(180),
            endAngle: Angle.degrees(270),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: rect.maxX - topRight, y: rect.minY))
        path.addArc(
            center: CGPoint(x: rect.maxX - topRight, y: rect.minY + topRight),
            radius: topRight,
            startAngle: Angle.degrees(270),
            endAngle: Angle.degrees(0),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - bottomRight))
        path.addArc(
            center: CGPoint(x: rect.maxX - bottomRight, y: rect.maxY - bottomRight),
            radius: bottomRight,
            startAngle: Angle.degrees(0),
            endAngle: Angle.degrees(90),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: rect.minX + bottomLeft, y: rect.maxY))
        path.addArc(
            center: CGPoint(x: rect.minX + bottomLeft, y: rect.maxY - bottomLeft),
            radius: bottomLeft,
            startAngle: Angle.degrees(90),
            endAngle: Angle.degrees(180),
            clockwise: false
        )
        path.closeSubpath()

        return path
    }
}

struct NotchView_Previews: PreviewProvider {
    static var previews: some View {
        NotchView()
            .frame(width: 300, height: 70)
    }
}
