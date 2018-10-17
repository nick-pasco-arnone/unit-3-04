// Created on: October 16
// Created by: Nicholas Pasco-Arnone
// Created for: ICS3U
// This program checks to see if a year is a leap year 

import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let instructionLabel = UILabel()
    let yearTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter a year to see if it is a leap year or not"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        yearTextField.borderStyle = UITextBorderStyle.roundedRect
        yearTextField.placeholder = "Enter # "
        view.addSubview(yearTextField)
        yearTextField.translatesAutoresizingMaskIntoConstraints = false
        yearTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        yearTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Calculate", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(leapYear), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: yearTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    
    @objc func leapYear() {
        let year : Int = Int(yearTextField.text!)!
        if year % 4 == 0 {
            if year % 100 == 0 {
                if year % 400 == 0 {
                     answerLabel.text = "It is a leap year"
                }
                    else { answerLabel.text = "it is not a leap year"}
        
            }
            else { answerLabel.text = "It is a leap year"}
        }
        else { answerLabel.text = "it is not a leap year"}
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
