import AppKit

class RoundedNotchView: NSView {
    override init(frame: NSRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.black.cgColor // Farbe der Notch
        self.layer?.cornerRadius = 10 // Hier die Rundung einstellen
        self.layer?.masksToBounds = true
    }
}
