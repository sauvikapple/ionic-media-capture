import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(MediaCapturePlugin)
public class MediaCapturePlugin: CAPPlugin {
    private let implementation = MediaCapture()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    @objc func captureAudio(_ call: CAPPluginCall) {
        let duration = call.getDouble("duration") ?? 0.0
        let audioCaptureVC = AudioCaptureViewController(duration: duration)
        self.bridge?.viewController?.present(audioCaptureVC, animated: true, completion: nil)
        call.resolve([
            "sessionSuccess": true
        ])
    }
}
