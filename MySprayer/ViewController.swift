//
//  ViewController.swift
//  MySprayer
//
//  Created by Areeba Turabi on 1/14/19.
//  Copyright © 2019 Areeba Turabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageDisplay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Navigation Buttons
    @IBAction func ToCamPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MainToCam", sender: self)
    }
    
    @IBAction func ToPredictPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MainToPredict", sender: self)
    }
    
    @IBAction func ToAboutPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MainToAbout", sender: self)
    }
    
    @IBAction func AboutToMainPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "AboutToMain", sender: self)
    }
    
    @IBAction func PredictToMainPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "PredictToMain", sender: self)
    }
    
    // camera functions
    @IBAction func TakePhoto(_ sender: UIButton) {
        let picker = UIImagePickerController()
        
        picker.sourceType = .camera
        
        present(picker, animated:true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
    didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        ImageDisplay.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage;
        dismiss(animated: true, completion: nil)
    }
    
}

