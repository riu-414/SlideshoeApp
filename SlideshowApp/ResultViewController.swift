//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 大杉祐弥 on 2021/08/15.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultImageView: UIImageView!
    
    //画像
    var imageArray:[UIImage] = [UIImage(named:"001")!, UIImage(named:"002")!, UIImage(named:"003")!]
    
    //受け取るカウンターの変数
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        resultImageView.image = imageArray[counter]
        
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
