

// Created on: September-28-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for circumference 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLable = UILabel()
    let radiusLable = UILabel()
    let radiusTextField = UITextField()
    let circumfenceLable = UILabel()
    let answerButton = UIButton()
    let PI : Float = 3.14 
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter the radius of a circle & we will calculate the circumference in cm."
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        radiusLable.text = "Enter radius"
        view.addSubview(radiusLable)
        radiusLable.translatesAutoresizingMaskIntoConstraints = false
        radiusLable.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 10).isActive = true
        radiusLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        radiusTextField.borderStyle = UITextBorderStyle.roundedRect
        radiusTextField.placeholder = "Put a whole number in cm    "
        view.addSubview(radiusTextField)
        radiusTextField.translatesAutoresizingMaskIntoConstraints = false
        radiusTextField.topAnchor.constraint(equalTo: radiusLable.bottomAnchor, constant: 5).isActive = true
        radiusTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Answer", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(calculateCircumfence), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: radiusTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        circumfenceLable.text = nil
        view.addSubview(circumfenceLable)
        circumfenceLable.translatesAutoresizingMaskIntoConstraints = false
        circumfenceLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        circumfenceLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func calculateCircumfence() {
        // show answers 
        let radius : Float =  Float(Int(radiusTextField.text!)!)
        
        let circumfence = 2.00 * PI * radius
        
        circumfenceLable.text = "The circumference is : \(circumfence) cm."
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
