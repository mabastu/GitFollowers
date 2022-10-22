//
//  UITableView+Ext.swift
//  GitFollowers
//
//  Created by Mabast on 10/19/22.
//

import UIKit

extension UITableView {
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
