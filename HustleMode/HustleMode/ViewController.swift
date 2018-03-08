//
//  ViewController.swift
//  HustleMode
//
//  Created by dinesh danda on 3/8/18.
//  Copyright © 2018 dinesh danda. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var darkblueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var onLabel: UILabel!
    
    @IBOutlet weak var hustleLable: UILabel!
    @IBOutlet weak var cloudHolder: UIView!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Bruno Mars - 24K magic", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkblueBG.isHidden = true
        powerBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
        }) { (finished) in
            self.hustleLable.isHidden = false
            self.onLabel.isHidden = false
        }
    }
    
    
}
