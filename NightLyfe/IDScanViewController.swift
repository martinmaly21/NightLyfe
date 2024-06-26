//
//  IDScanViewController.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI
import UIKit
import BlinkID

struct IDScanViewController: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var shouldNavigate: Bool
    @Binding var scannedIDResult: ScannedID?
    
    
    var blinkIdRecognizer = MBBlinkIdSingleSideRecognizer()
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        self.blinkIdRecognizer.returnFullDocumentImage = true
        self.blinkIdRecognizer.returnFaceImage = true
        
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
                
                parent.scannedIDResult = ScannedID(
                    photo: result.faceImage!.image!,
                    age: result.age,
                    address: result.address?.description ?? "",
                    firstName: result.firstName?.description ?? "",
                    lastName: result.lastName?.description ?? "",
                    birthday: result.dateOfBirth?.date ?? Date(),
                    expirationDate: result.dateOfExpiry!.date!
                )
                parent.shouldNavigate = true
                
                parent.presentationMode.wrappedValue.dismiss()

            default:
                fatalError()
            }
        }
        
        func blinkIdOverlayViewControllerDidTapClose(_ blinkIdOverlayViewController: MBBlinkIdOverlayViewController) {
            //TODO
        }
        
    }
}
