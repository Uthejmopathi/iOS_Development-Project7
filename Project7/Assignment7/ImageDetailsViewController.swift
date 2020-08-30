//
//  ImageDetailsViewController.swift
//  Assignment7
//
//  Created by Uthej Mopathi on 8/29/20.
//  Copyright © 2020 Uthej Mopathi. All rights reserved.
//

import UIKit

class ImageDetailsViewController: UIViewController {

    
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var detailedImage: UIImageView!
    var image : UIImage?
    var textOnLabel : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        detailedImage.image = image
        descriptionText.text = textOnLabel

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
