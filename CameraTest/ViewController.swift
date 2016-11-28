//
//  ViewController.swift
//  CameraTest
//
//  Created by Yan Malinovsky on 25.11.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cameraAction(_ sender: UIBarButtonItem) {
        imagePicker.sourceType = UIImagePickerControllerSourceType.camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    

    @IBAction func photoAction(_ sender: UIBarButtonItem) {
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image: UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = image
        
        self.dismiss(animated: true, completion: nil)
    }
}

