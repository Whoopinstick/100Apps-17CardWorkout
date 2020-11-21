//
//  ViewController.swift
//  x04 - Workout
//
//  Created by Kevin Paul on 11/21/20.
//

import UIKit

class ViewController: UIViewController {
    
    var deck: [UIImage] = Deck.allCards
    var timer: Timer!
    
    @IBOutlet var cardImage: UIImageView!
    @IBOutlet var stopButton: UIButton!
    @IBOutlet var restartButton: UIButton!
    @IBOutlet var rulesButton: UIButton!
    
    @IBOutlet var buttons: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        for button in buttons {
            button.layer.cornerRadius = 8.0
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        stopTimer()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    func stopTimer() {
        timer.invalidate()
    }
    
    @objc func showRandomCard() {
        cardImage.image = deck.randomElement() ?? UIImage(named: "2D")
    }
    

    @IBAction func stopButtonTapped(_ sender: UIButton) {
        stopTimer()
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        stopTimer()
        startTimer()
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
    
    

}

