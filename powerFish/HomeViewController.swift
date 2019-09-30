//
//  HomeViewController.swift
//  powerFish
//
//  Created by Pat Phillips on 28/9/19.
//  Copyright © 2019 dap apps. All rights reserved.
//

import UIKit
import AVFoundation

class HomeViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    var randomAudio = 0
    
    let soundArray = ["blokes","brothel","catch","chook","couple","dog","goodFuck","look"]
    
    @IBAction func homeButton(_ sender: Any) {
       
        randomAudio = Int.random(in: 0...7)
        playSound(soundFileName: soundArray[randomAudio])
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func playSound(soundFileName : String){
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
            
        catch {
            print(error)
        }
        audioPlayer.play()
    }

 
    @IBAction func SoundButton(_ sender: UIButton) {
         performSegue(withIdentifier: "segue", sender: self)
    }
    

}
