//
//  ScanBarCodeViewController.swift
//  ToBeer
//
//  Created by Seo JaeHyeong on 24/03/2018.
//  Copyright © 2018 Seo Jaehyeong. All rights reserved.
//
import UIKit
import BarcodeScanner

class ScanBarCodeViewController: UIViewController {
   
   
   @IBOutlet private weak var barcodeView : UIView! //바코드 인식 카메라 화면 뷰
   
   var barcode: String? //바코드 저장 프로퍼티
   
   override func viewDidLoad() {
      super.viewDidLoad()
   }
   
}


