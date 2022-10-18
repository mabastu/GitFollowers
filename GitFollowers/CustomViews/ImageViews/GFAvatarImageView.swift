//
//  GFAvatarImageView.swift
//  GitFollowers
//
//  Created by Mabast on 9/21/22.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache = NetworkManager.shared.cache
    let imagePlaceholder = Images.imagePlaceholder
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = imagePlaceholder
        translatesAutoresizingMaskIntoConstraints = false 
    }
}
 
