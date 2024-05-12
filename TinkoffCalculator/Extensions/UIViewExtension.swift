//
//  UIViewExtension.swift
//  TinkoffCalculator
//
//  Created by CT4TuEI3 on 12.05.2024.
//


import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
