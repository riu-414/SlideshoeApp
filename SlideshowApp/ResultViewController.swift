//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 大杉祐弥 on 2021/08/15.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultImageView: UIImageView!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        resultImageView.image = image
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
        
    }
    

}
