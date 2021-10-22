//
//  ViewController.swift
//  NumberGuess
//
//  Created by Wögerbauer David on 01.10.21.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func GuessButton(_ sender: Any) {
        // TODO: Check input for not nill
        let guessedNumber = Int(textField.text!)!
        let text: String?
        switch model.compare(guess: guessedNumber) {
        case -1:
            text = "To small"
        case 1:
            text = "To high"
        default:
            text = "Done in \(model.countOfTries) tries - 🎉"
            model.countOfTries = 0
        }
        label.text = text;
    }
        
    
    
    @IBOutlet weak var guessMeButton: UIButton!
    @IBAction func onChangeTextField(_ sender: UITextField) {
        guessMeButton.isEnabled = model.isValid(guessValid: sender.text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int.random(in: 0..<100)
        print("Zu erratende Zahl \(model.numberToGuess)")
        // Do any additional setup after loading the view.
    }


}

