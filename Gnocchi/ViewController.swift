import AppKit

class ViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let notchWidth: CGFloat = 200
        let notchHeight: CGFloat = 50
        let screenWidth = NSScreen.main?.frame.width ?? 0

        let roundedNotch = RoundedNotchView(frame: CGRect(x: (screenWidth - notchWidth) / 2, y: 50, width: notchWidth, height: notchHeight))
        self.view.addSubview(roundedNotch)
    }
}
