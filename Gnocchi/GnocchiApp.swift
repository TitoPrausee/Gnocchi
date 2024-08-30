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
            contentRect: NSRect(x: 0, y: 0, width: 200, height: 50), // Die gleiche Größe wie in NotchView
            styleMask: [.borderless, .nonactivatingPanel],
            backing: .buffered, defer: false)
        
        window.isOpaque = false
        window.alphaValue = 1.0
        window.hasShadow = false
        window.backgroundColor = .clear // Hintergrund transparent
        window.level = .screenSaver // Setzt das Fenster über die Menüleiste
        window.isMovableByWindowBackground = false
        window.collectionBehavior = [.canJoinAllSpaces, .stationary, .ignoresCycle]
        
        if let screenFrame = NSScreen.main?.frame {
            window.setFrameTopLeftPoint(NSPoint(x: (screenFrame.width - 200) / 2, y: screenFrame.height))
        }
        
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }

}
