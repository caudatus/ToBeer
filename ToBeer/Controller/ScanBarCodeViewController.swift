//
//  ScanBarCodeViewController.swift
//  myToBeer
//
import UIKit
import AVFoundation

class ScanBarCodeViewController: UIViewController {
    
<<<<<<< HEAD
    @IBOutlet private weak var barcodeView : UIView! //바코드 인식 카메라 화면 뷰
=======
    @IBOutlet private weak var barcodeView : UIView! //바코드 인식 카메라 화면
>>>>>>> 999cb54e5917b4654bdd8e8e72d080b5dc8eb9cb
    
    let device = AVCaptureDevice.default(for: AVMediaType.video) // device 인스턴스 생성
    let captureSession = AVCaptureSession() // captureSession 인스턴스 생성
    let captureSessionQueue = DispatchQueue(label: AVCaptureSession.self.description(),
                                            attributes: [], target: nil) // DispatchQueue 생성
    var barcode: String? //바코드 저장 프로퍼티
<<<<<<< HEAD
    var previewLayer: AVCaptureVideoPreviewLayer? // 바코드 뷰
=======
    var previewLayer: AVCaptureVideoPreviewLayer? //바코드 뷰
>>>>>>> 999cb54e5917b4654bdd8e8e72d080b5dc8eb9cb
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< HEAD
        cameraOpen()
    }
    
    //MARK: MetaData 설정
    // 바코드 정보를 읽어오는 카메라 화면 오픈
    /// metadata의 input, output과 previewLayer 설정
    func cameraOpen() {
        
        // captureSession에 출력을 추가, 제거, sessionPreset을 변경하거나
        // 개별 캡처 입력 또는 출력 속성을 구성
=======
                cameraOpen()
    }
    
    //바코드 정보를 읽어오는 카메라 화면 오픈
    /// metadata의 input, output과 previewLayer 설정
    func cameraOpen() {
        
        //captureSession에 출력을 추가, 제거, sessionPreset을 변경하거나
        //개별 캡처 입력 또는 출력 속성을 구성
>>>>>>> 999cb54e5917b4654bdd8e8e72d080b5dc8eb9cb
        captureSession.beginConfiguration()
        
        let metadataInput = try? AVCaptureDeviceInput(device: device!)
        let metadataOutput = AVCaptureMetadataOutput()
        
        // captureSession에 metadataInput을 추가 할 수 있다면
        // metadataInput을 metadataInput을 넣어 준다.
        if self.captureSession.canAddInput(metadataInput!) {
            self.captureSession.addInput(metadataInput!)
        }
        
        // previewLayer 카메라의 레이아웃 설정
        self.previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        if let videoPreviewLayer = self.previewLayer {
            videoPreviewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
            videoPreviewLayer.frame = barcodeView.bounds
            
            barcodeView.layer.addSublayer(videoPreviewLayer)
            
            self.previewLayer?.connection?.videoOrientation = .portrait
        }
        
        // captureSession에 metadataOutput을 추가 할 수 있다면
        // metadataInput을 metadataInput을 넣어 준다.
        if self.captureSession.canAddOutput(metadataOutput) {
            self.captureSession.addOutput(metadataOutput)
            
            metadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            metadataOutput.metadataObjectTypes = [AVMetadataObject.ObjectType.ean13, AVMetadataObject.ObjectType.ean8, AVMetadataObject.ObjectType.qr]
        }
        
<<<<<<< HEAD
        // beginConfiguration과 commitConfiguration 사이에 작성한 내용을 적용
        captureSession.commitConfiguration()
    }
    
    //MARK: Session Running 설정
=======
        //beginConfiguration과 commitConfiguration 사이에 작성한 내용을 적용
        captureSession.commitConfiguration()
    }
    
    // 뷰가 시작하기 전에 AVCaptureSession 인스턴스에 연결된 데이터의 흐름을 시작하는 데 사용
    // 대기열에서 기다리지 않도록 captureSessionQueue의 async에 넣어 세션 설정을 수행하도록 합니다.
>>>>>>> 999cb54e5917b4654bdd8e8e72d080b5dc8eb9cb
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 대기열에서 기다리지 않도록 captureSessionQueue의 async에 넣어 세션 설정을 수행하도록 합니다.
        captureSessionQueue.async {

            // 뷰가 시작하기 전에 AVCaptureSession 인스턴스에 연결된 데이터의 흐름을 시작
            self.captureSession.startRunning()
        }
    }
    
    // 뷰가 끝나기 전에 AVCaptureSession 인스턴스에 연결된 데이터의 흐름을 중지하는 데 사용
    // 대기열에서 기다리지 않도록 captureSessionQueue의 async에 넣어 세션 설정을 수행하도록 합니다.
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // 대기열에서 기다리지 않도록 captureSessionQueue의 async에 넣어 세션 설정을 수행하도록 합니다.
        captureSessionQueue.async {
            // 뷰가 끝나기 전에 AVCaptureSession 인스턴스에 연결된 데이터의 흐름을 중지
            self.captureSession.stopRunning()
        }
    }
}

<<<<<<< HEAD
//MARK: AVCaptureMetadataOutputObjectsDelegate 설정
=======

>>>>>>> 999cb54e5917b4654bdd8e8e72d080b5dc8eb9cb
// 바코드 데이터가 들어 왔을 시
// barcode의 데이터를 DiscoverdViewController의 inputBarcode로 넘겨 준다.
extension ScanBarCodeViewController: AVCaptureMetadataOutputObjectsDelegate {
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        
<<<<<<< HEAD
        // metadata의 StringValue를 barcode로 전달해 준다.
=======
        //metadata의 StringValue를 barcode로 전달해 준다.
>>>>>>> 999cb54e5917b4654bdd8e8e72d080b5dc8eb9cb
        for metadata in metadataObjects {
            let readMetadata = metadata as! AVMetadataMachineReadableCodeObject
            self.barcode = readMetadata.stringValue
            
            break
        }
        
<<<<<<< HEAD
      // DiscoverdViewController로 barcode 값을 전달해 준다.
      let nextVC = storyboard?.instantiateViewController(withIdentifier: "DiscoverdViewController") as! DiscoverdViewController
      nextVC.inputBarcode = barcode
      
      self.present(nextVC, animated: true)
=======
        //DiscoverdViewController로 barcode 값을 전달해 준다.
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "DiscoverdViewController") as! DiscoverdViewController
        nextVC.inputBarcode = barcode
        
        self.present(nextVC, animated: true)
>>>>>>> 999cb54e5917b4654bdd8e8e72d080b5dc8eb9cb
    }
}

