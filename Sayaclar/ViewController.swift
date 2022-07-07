//
//  ViewController.swift
//  Sayaclar
//
//  Created by AHMET on 5.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    var timer = Timer()
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        kalanZaman = 15
        Label.text = " Zaman: \(kalanZaman)"
        
       

    }

    @IBAction func baslattiklandi(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
        
    }
   
    @objc func timerFonksiyonu() {
        
        Label.text = "Zaman : \(kalanZaman)"
        
        kalanZaman = kalanZaman - 1
        
        if kalanZaman == 0 {
            Label.text = "Süre bitti"
            timer.invalidate()
            kalanZaman = 15
        }
        
        
        
    }
}

