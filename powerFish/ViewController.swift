//
//  ViewController.swift
//  powerFish
//
//  Created by Pat Phillips on 26/9/19.
//  Copyright © 2019 dap apps. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer!
    
    let soundArray = ["blokes","brothel","catch","chook","couple","dog","goodFuck","look"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func buttonPressed(sender: UIButton){
    
    playSound(soundFileName: soundArray[sender.tag - 1])
        
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
    
    
    
    @IBAction func home(_ sender: UIButton) {
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    
    }



