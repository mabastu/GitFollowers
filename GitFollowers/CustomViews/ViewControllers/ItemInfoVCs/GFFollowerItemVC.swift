//
//  GFFollowerItemVC.swift
//  GitFollowers
//
//  Created by Mabast on 10/2/22.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(setItemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(setItemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, tilte: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGithubFollowers(for: user)
    }
}
