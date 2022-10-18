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
}
