//
//  IDScanViewController.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI
import UIKit
import Microblink

struct IDScanViewController: UIViewControllerRepresentable {
    @Binding var scannedIDResult: MBBlinkIdRecognizerResult?
    
    var blinkIdRecognizer = MBBlinkIdRecognizer()
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        
        
        self.blinkIdRecognizer.returnFullDocumentImage = true
        
        /** Create BlinkID settings */
        let settings = MBBlinkIdOverlaySettings()
        
        /** Crate recognizer collection */
        let recognizerList = [self.blinkIdRecognizer]
        let recognizerCollection = MBRecognizerCollection(recognizers: recognizerList)
        
        /** Create your overlay view controller */
        let blinkIdOverlayViewController = MBBlinkIdOverlayViewController(
            settings: settings,
            recognizerCollection: recognizerCollection,
            delegate: context.coordinator
        )
        
        /** Create recognizer view controller with wanted overlay view controller */
        let recognizerRunnerViewController = MBViewControllerFactory.recognizerRunnerViewController(
            withOverlayViewController: blinkIdOverlayViewController
        )!
        
        return recognizerRunnerViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
   
    }
    
    class Coordinator: NSObject, MBBlinkIdOverlayViewControllerDelegate {
        
        var parent: IDScanViewController
        var controllers = [UIViewController]()
        
        init(_ idScanViewController: IDScanViewController) {
            self.parent = idScanViewController
        }
        
        func blinkIdOverlayViewControllerDidFinishScanning(_ blinkIdOverlayViewController: MBBlinkIdOverlayViewController, state: MBRecognizerResultState) {
            switch state {
            case .valid:
                let result = self.parent.blinkIdRecognizer.result
                
                print("Valid!!: \(result)")
            default:
                fatalError()
            }
        }
        
        func blinkIdOverlayViewControllerDidTapClose(_ blinkIdOverlayViewController: MBBlinkIdOverlayViewController) {
            //TODO
        }
    }
}
