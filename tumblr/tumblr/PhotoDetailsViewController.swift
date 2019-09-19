//
//  PhotoDetailsViewController.swift
//  tumblr
//
//  Created by Elijah Baird on 9/18/19.
//  Copyright © 2019 Elijah Baird. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    
    var image: URL!
    @IBOutlet weak var photoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoView.af_setImage(withURL: image!)

//        imageView.image = image
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
