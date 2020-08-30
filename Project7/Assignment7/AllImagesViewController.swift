//
//  AllImagesViewController.swift
//  Assignment7
//
//  Created by Uthej Mopathi on 8/29/20.
//  Copyright © 2020 Uthej Mopathi. All rights reserved.
//

import UIKit

class AllImagesViewController: UIViewController {

    @IBOutlet weak var TajMahalImage: UIButton!
    @IBOutlet weak var ColosseumImage: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TajMahalSegue"{
        let destinationVC = segue.destination as! ImageDetailsViewController
            destinationVC.image = UIImage (named: "TajMahal")
                destinationVC.textOnLabel = "Taj Mahal - India"
        }
       
        else if segue.identifier == "ColosseumSegue"{
        let destinationVC = segue.destination as! ImageDetailsViewController
            destinationVC.image = UIImage (named: "Colosseum")
                destinationVC.textOnLabel = "Colosseum - Italy"
        }
        
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
