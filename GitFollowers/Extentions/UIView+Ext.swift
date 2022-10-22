//
//  UIView+Ext.swift
//  GitFollowers
//
//  Created by Mabast on 10/18/22.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
    
    func pinToEdges(of superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: superView.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: superView.bottomAnchor)
        ])
    }
}
