//
//  ViewController.swift
//  Goat
//
//  Created by Alperen KARACA on 15.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var is2016 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        
        if is2016 == true {
            imageView.image = UIImage(named: "messi-sportstiger-7-1671628632212-original")
            myLabel.text = "Messi in 2024"
            is2016 = false
        }
        else {
            imageView.image = UIImage(named: "messi-argentina-copa-america_3321871")
            myLabel.text = "Messi in 2016"
            is2016 = true
        }
        
        
    }


}

