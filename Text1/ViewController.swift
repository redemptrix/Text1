//
//  ViewController.swift
//  Text1
//
//  Created by Seth Du on 15/8/9.
//  Copyright © 2015年 Seth Du. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var textLabel1: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var Imageview: UIImageView!
    @IBOutlet weak var ratingControl: ratingcontrol!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField1.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ClickButton1(sender: UIButton) {
        textLabel1.text = textField1.text
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField1.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        textLabel1.text = textField1.text
    }
    @IBAction func openselection(sender: UITapGestureRecognizer) {
        textField1.resignFirstResponder()
        let pickcontrol = UIImagePickerController()
        pickcontrol.sourceType = .PhotoLibrary
        pickcontrol.delegate = self
        presentViewController(pickcontrol, animated: true, completion: nil)
        
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let selectedone = info[UIImagePickerControllerOriginalImage] as! UIImage
        Imageview.image = selectedone
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    


}

