//
//  imgShowVC.swift
//  DisplayImg&Txt
//
//  Created by Rabeeh KP on 21/11/17.
//  Copyright © 2017 Rabeeh KP. All rights reserved.
//

import UIKit

class imgShowVC: UIViewController {
 var uDefault = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imgData = uDefault.object(forKey: "image") as? NSData
        {
            if let image = UIImage(data: imgData as Data)
            {
                //set image in UIImageView imgSignature
                self.imgView.image = image
                //remove cache after fetching image data
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    //MARK: -Outlets
    
    @IBOutlet weak var backBttn: UIBarButtonItem!
    @IBOutlet weak var imgView: UIImageView!
    //MARK: -Action
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        dismiss(animated: false, completion: nil)
          uDefault.removeObject(forKey: "image")
    }
}
