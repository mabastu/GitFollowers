//
//  GFFollowerItemVC.swift
//  GitFollowers
//
//  Created by Mabast on 10/2/22.
//

import UIKit

protocol GFFollowerItemVCDelegate: AnyObject {
    func didTapGithubFollowers(for user: User)
}

class GFFollowerItemVC: GFItemInfoVC {
    
    weak var delegate: GFFollowerItemVCDelegate!
    
    init(user: User, delegate: GFFollowerItemVCDelegate!) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
