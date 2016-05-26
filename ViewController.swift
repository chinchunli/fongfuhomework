//
//  ViewController.swift
//  Dachun first button
//
//  Created by HsuFu-Chun on 2016/5/22.
//  Copyright © 2016年 Li Chin-Chun. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationBarDelegate, UIImagePickerControllerDelegate {
    var label : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.blueColor()
        let secondViewController:UIViewController = UIViewController()
        
        label = UILabel(frame: CGRect(x: 160,y: 100, width: 200, height: 70))
        label.text = "峰傅智慧"
        label.font = UIFont.boldSystemFontOfSize(30)
        label.textColor = UIColor.whiteColor()
        
        let babyfaceimageview: UIImageView = UIImageView (frame: CGRectMake(-40, 65, 512, 512))
        let babyfaceimage = UIImage (named: "babyface2")
        babyfaceimageview.image = babyfaceimage
        
        
        let singinTextField: UITextField = UITextField(frame: CGRectMake(125, 500, 200, 25))
        singinTextField.text = "              請輸入帳號"
        singinTextField.textColor = UIColor.blackColor()
        singinTextField.backgroundColor = UIColor.whiteColor()
        
        let singinpassTextField: UITextField = UITextField(frame: CGRectMake(125, 550, 200, 25))
        singinpassTextField.text = "              請輸入密碼"
        singinpassTextField.textColor = UIColor.blackColor()
        singinpassTextField.backgroundColor = UIColor.whiteColor()
 
        
        let singinButton = UIButton()
        singinButton.setTitle("登入", forState: .Normal)
        singinButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        singinButton.frame = CGRectMake(15, 350, 300, 500)
        let singoutButton = UIButton()
        singoutButton.setTitle("取消", forState: .Normal)
        singoutButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        singoutButton.frame = CGRectMake(115, 350, 300, 500)
        let withoutsinginButton = UIButton()
        withoutsinginButton.setTitle("不登入直接使用", forState: .Normal)
        withoutsinginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        withoutsinginButton.frame = CGRectMake(65, 400, 300, 500)
        //withoutsinginButton.addTarget(self, action: "viweController", forControlEvents: UIControlEvents.TouchUpInside)
        withoutsinginButton.tag = 22;
        //addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        let cameratestButton = UIButton()
        cameratestButton.setTitle("拍照測試", forState: .Normal)
        cameratestButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        cameratestButton.frame = CGRectMake(65, 450, 300, 500)
        //cameratestButton.addTarget(self, action: "viweController", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
        self.view.addSubview(label)
        self.view.addSubview(babyfaceimageview)
        self.view.addSubview(singinButton)
        self.view.addSubview(singoutButton)
        self.view.addSubview(withoutsinginButton)
        self.view.addSubview(singinTextField)
        self.view.addSubview(singinpassTextField)
        self.view.addSubview(cameratestButton)

        
        func loadViewController(){
        let newview = UIViewController(nibName: "ViewController", bundle: nil)
            self.presentViewController(newview, animated: true, completion: nil)

           
        }
    }
    
           override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

