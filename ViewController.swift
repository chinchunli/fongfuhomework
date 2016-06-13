//
//  ViewController.swift
//  all in
//
//  Created by 李志峻 on 2016/6/8.
//  Copyright © 2016年 李志峻. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    //var imagePickerCrop = UIImagePickerController!
    var selectImage:UIImage = UIImage()
    
    
    @IBOutlet weak var Camera: UIButton!
    
    func imageWasSavedSuccessfully(image: UIImage, didFinishSavingWithError error: NSError!, context: UnsafeMutablePointer<()>){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func CameraAction(sender: UIButton) {
       
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
            imagePicker.mediaTypes = [kUTTypeImage as String]
            self.presentViewController(imagePicker, animated: true, completion: nil)
        } else {
            let alertController = UIAlertController(title: "無照相裝置", message: "本機無照相裝置，故無法照相！", preferredStyle: .Alert)
            let sureAction = UIAlertAction(title: "確定", style: .Default,handler:nil)
            alertController.addAction(sureAction)
            self.presentViewController(alertController, animated: true, completion: nil)
        }

    }
    @objc func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: AnyObject]) {
        selectImage = info[UIImagePickerControllerOriginalImage] as! UIImage!
        UIImageWriteToSavedPhotosAlbum(selectImage, nil, nil , nil)
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    

}

