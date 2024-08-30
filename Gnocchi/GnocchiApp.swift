import SwiftUI

@main
struct GnocchiApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ notification: Notification) {
        self.showNotchView()
    }

    func showNotchView() {
        let contentView = NotchView()
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 300, height: 70),
            styleMask: [.borderless, .nonactivatingPanel],
            backing: .buffered, defer: false)
        
        window.isOpaque = false // Macht den Fensterhintergrund transparent
        window.alphaValue = 1.0
        window.hasShadow = false
        window.backgroundColor = .clear // Setzt den Fensterhintergrund auf transparent
        window.level = .statusBar
        window.isMovableByWindowBackground = false
        window.collectionBehavior = [.canJoinAllSpaces, .stationary]
        
        window.setFrameTopLeftPoint(NSPoint(x: (NSScreen.main!.frame.width - 300) / 2, y: NSScreen.main!.frame.height))
        
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }

}
