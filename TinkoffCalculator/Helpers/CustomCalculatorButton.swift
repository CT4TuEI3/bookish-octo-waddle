//
//  CustomCalculatorButton.swift
//  TinkoffCalculator
//
//  Created by CT4TuEI3 on 12.05.2024.
//


import UIKit

enum CustomButtonType {
    case number
    case algebraic
    case reset
}

final class CustomCalculatorButton: UIButton {
    
    // MARK: - Private properties
    
    private let type: CustomButtonType
    
    
    // MARK: - Lifecycle
    
    init(type: CustomButtonType, title: String) {
        self.type = type
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Private properties
    
    private func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.font = .boldSystemFont(ofSize: 30)
        switch type {
            case .number:
                backgroundColor = .darkGray
            case .algebraic:
                backgroundColor = .systemBlue
            case .reset:
                backgroundColor = .gray
        }
    }
    
    
    // MARK: - Actions
    
    @objc
    private func buttonPressed(_ sender:  UIButton) {
        print(sender.currentTitle ?? "")
    }
}
