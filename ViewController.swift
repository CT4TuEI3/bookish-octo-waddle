//
//  ViewController.swift
//  TinkoffCalculator
//
//  Created by CT4TuEI3 on 12.05.2024.
//


import UIKit

final class ViewController: UIViewController {
    
    // MARK: - UI Elements
    
    private lazy var comaButton = CustomCalculatorButton(type: .number, title: ",")
    private lazy var zeroButton = CustomCalculatorButton(type: .number, title: "0")
    private lazy var equalButton = CustomCalculatorButton(type: .algebraic, title: "=")
    
    private lazy var oneButton = CustomCalculatorButton(type: .number, title: "1")
    private lazy var twoButton = CustomCalculatorButton(type: .number, title: "2")
    private lazy var threeButton = CustomCalculatorButton(type: .number, title: "3")
    private lazy var plusButton = CustomCalculatorButton(type: .algebraic, title: "+")
    
    private lazy var fourButton = CustomCalculatorButton(type: .number, title: "4")
    private lazy var fiveButton = CustomCalculatorButton(type: .number, title: "5")
    private lazy var sixButton = CustomCalculatorButton(type: .number, title: "6")
    private lazy var minusButton = CustomCalculatorButton(type: .algebraic, title: "-")
    
    private lazy var sevenButton = CustomCalculatorButton(type: .number, title: "7")
    private lazy var eightButton = CustomCalculatorButton(type: .number, title: "8")
    private lazy var nineButton = CustomCalculatorButton(type: .number, title: "9")
    private lazy var multiplyButton = CustomCalculatorButton(type: .algebraic, title: "×")
    
    private lazy var resetButton = CustomCalculatorButton(type: .reset, title: "C")
    private lazy var divideButton = CustomCalculatorButton(type: .algebraic, title: "/")
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
    }
    
    
    // MARK: - Private properties
    
    private func setupUI() {
        view.addSubviews(comaButton,
                         zeroButton,
                         equalButton,
                         oneButton,
                         twoButton,
                         threeButton,
                         plusButton,
                         fourButton,
                         fiveButton,
                         sixButton,
                         minusButton,
                         sevenButton,
                         eightButton,
                         nineButton,
                         multiplyButton,
                         resetButton,
                         divideButton)
        
        setupConstraints()
    }
}


// MARK: - Constraints

private
extension ViewController {
    func setupConstraints() {
        NSLayoutConstraint.activate([
            comaButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            comaButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            comaButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            comaButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            zeroButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5),
            zeroButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            zeroButton.leadingAnchor.constraint(equalTo: comaButton.trailingAnchor),
            zeroButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            equalButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            equalButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            equalButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            equalButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            oneButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            oneButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            oneButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            oneButton.bottomAnchor.constraint(equalTo: comaButton.topAnchor),
            
            twoButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            twoButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            twoButton.leadingAnchor.constraint(equalTo: oneButton.trailingAnchor),
            twoButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
            
            threeButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            threeButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            threeButton.trailingAnchor.constraint(equalTo: plusButton.leadingAnchor),
            threeButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
            
            plusButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            plusButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            plusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            plusButton.bottomAnchor.constraint(equalTo: equalButton.topAnchor),
            
            fourButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            fourButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            fourButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            fourButton.bottomAnchor.constraint(equalTo: oneButton.topAnchor),
            
            fiveButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            fiveButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            fiveButton.leadingAnchor.constraint(equalTo: fourButton.trailingAnchor),
            fiveButton.bottomAnchor.constraint(equalTo: twoButton.topAnchor),
            
            sixButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            sixButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            sixButton.trailingAnchor.constraint(equalTo: minusButton.leadingAnchor),
            sixButton.bottomAnchor.constraint(equalTo: threeButton.topAnchor),
            
            minusButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            minusButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            minusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            minusButton.bottomAnchor.constraint(equalTo: plusButton.topAnchor),
            
            sevenButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            sevenButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            sevenButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sevenButton.bottomAnchor.constraint(equalTo: fourButton.topAnchor),
            
            eightButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            eightButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            eightButton.leadingAnchor.constraint(equalTo: sevenButton.trailingAnchor),
            eightButton.bottomAnchor.constraint(equalTo: fiveButton.topAnchor),
            
            nineButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            nineButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            nineButton.trailingAnchor.constraint(equalTo: multiplyButton.leadingAnchor),
            nineButton.bottomAnchor.constraint(equalTo: sixButton.topAnchor),
            
            multiplyButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            multiplyButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            multiplyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            multiplyButton.bottomAnchor.constraint(equalTo: minusButton.topAnchor),
            
            resetButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.75),
            resetButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            resetButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            resetButton.bottomAnchor.constraint(equalTo: sevenButton.topAnchor),
            
            divideButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25),
            divideButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.13),
            divideButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            divideButton.bottomAnchor.constraint(equalTo: multiplyButton.topAnchor),
        ])
    }
}
