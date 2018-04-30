//
//  ViewController.swift
//  ToBeer
//
//  Created by Seo JaeHyeong on 24/03/2018.
//  Copyright © 2018 Seo Jaehyeong. All rights reserved.
//

import UIKit
import BarcodeScanner
import Firebase

class MainViewController: UIViewController {
   
   
   @IBOutlet weak var backGroundIMG: UIImageView!
   @IBOutlet weak var actionToBarcode: UIButton!
   
   var ref: DatabaseReference!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      ref = Database.database().reference()
   }
   
   
   @IBAction func handleScannerPresent(_ sender: UIButton) {
      let viewController = makeBarcodeScannerViewController()
      viewController.title = "ToBeer Scanner"
      
      present(viewController, animated: true, completion: nil)
   }
   
   
   private func makeBarcodeScannerViewController() -> BarcodeScannerViewController {
      let viewController = BarcodeScannerViewController()
      viewController.codeDelegate = self
      viewController.errorDelegate = self
      viewController.dismissalDelegate = self
      return viewController
   }
   
}



// MARK: - BarcodeScannerCodeDelegate
extension MainViewController: BarcodeScannerCodeDelegate {
   func scanner(_ controller: BarcodeScannerViewController, didCaptureCode code: String, type: String) {
      print("Barcode Data: \(code)")
      print("Symbology Type: \(type)")
      
      let beerInfo = Beer()
      
      ref.child(code).observeSingleEvent(of: .value) { snapShot in
         if let beerInfoDic = snapShot.value as? Dictionary<String, AnyObject> {
            beerInfo.setValuesForKeys(beerInfoDic)
            
            controller.dismiss(animated: true, completion: nil)

            // DiscoverdViewController로 맥주정보를 전달해 준다.
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "DiscoverdViewController") as! DiscoverdViewController
            nextVC.info = beerInfo
            
            self.present(nextVC, animated: true)
         }
      }
      
      DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
         controller.resetWithError()
      }
   }
}

// MARK: - BarcodeScannerErrorDelegate
extension MainViewController: BarcodeScannerErrorDelegate {
   func scanner(_ controller: BarcodeScannerViewController, didReceiveError error: Error) {
      print(error)
   }
}

// MARK: - BarcodeScannerDismissalDelegate
extension MainViewController: BarcodeScannerDismissalDelegate {
   func scannerDidDismiss(_ controller: BarcodeScannerViewController) {
      controller.dismiss(animated: true, completion: nil)
   }
}
