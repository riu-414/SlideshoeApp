//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 大杉祐弥 on 2021/08/14.
//

import UIKit

class ViewController: UIViewController {

    //outletの接続
    @IBOutlet weak var returnButton: UIButton!
    @IBOutlet weak var netxButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    //カウンター
    var counter: Int = 0
    
    //タイマー
    var timer: Timer!
    
    //タイマーの時間用の変数
    var timer_sec: Float = 0
    
    //配列に指定するindex
    var nowIndex = 0
    
    //画像
    var imageArray:[UIImage] = [UIImage(named:"001")!, UIImage(named:"002")!, UIImage(named:"003")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    //再生ボタン
    @IBAction func slideShowButton(_ sender: Any) {
        if (timer == nil) {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            startButton.setTitle("停止", for: .normal)
            
            //ボタンの無効
            returnButton.isEnabled = false
            netxButton.isEnabled = false
        
        } else {
            //停止時の処理
            timer.invalidate()
            
            timer = nil
            startButton.setTitle("再生", for: .normal)
            
            //ボタンの有効
            returnButton.isEnabled = true
            netxButton.isEnabled = true
        }
        
    }
    
    @objc func changeImage() {
        //indexを増やして表示する画像を切り替える
        nowIndex += 1
        
        if (nowIndex == imageArray.count) {
            nowIndex = 0
        }
        
        imageView.image = imageArray[nowIndex]
        
    }
    
    //戻るボタン
    @IBAction func returnButton(_ sender: Any) {
        counter = counter - 1
        
        if (counter < 0) {
            counter = 2
        }
        
        imageView.image = imageArray[counter]
        
    }
    
    
    //進むボタン
    @IBAction func nextButton(_ sender: Any) {
        counter = counter + 1
        
        if (counter > 2) {
            counter = 0
        }
        
        imageView.image = imageArray[counter]
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if timer != nil {
            timer.invalidate()
            timer = nil
            
            startButton.setTitle("再生", for: .normal)
            returnButton.isEnabled = true
            netxButton.isEnabled = true
        }
        
        //segueから遷移先のResultViewControllerを取得する
        let resultViewController = segue.destination as! ResultViewController
        
        //遷移先に画像を渡す
        resultViewController.image = imageView.image
        
    }
    
    
func tapAction(_ sender: Any) {
        self.performSegue(withIdentifier: "", sender: nil)
        
    }
    
    //segueを使って戻ってきたときに呼ばれる
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }
    
}

