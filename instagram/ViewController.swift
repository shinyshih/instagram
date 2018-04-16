//
//  ViewController.swift
//  instagram
//
//  Created by 施馨檸 on 16/04/2018.
//  Copyright © 2018 施馨檸. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let label: UILabel = {
        let label = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        label.text = "嗨嗨"
        label.backgroundColor = UIColor.yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(white: 0, alpha: 0.03)
        textField.borderStyle = .roundedRect

        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor(white: 0, alpha: 0.03)
        return textField
    }()
    
    func setUpTextFields () {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 15
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            stackView.heightAnchor.constraint(equalToConstant: 100)
            ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(label)
        
        //label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        label.anchor(top: view.topAnchor, left: view.centerXAnchor, paddingTop: 100, paddingLeft: 50)
        setUpTextFields()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
    }
}

