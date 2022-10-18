//
//  GFRepoItemVC.swift
//  GitFollowers
//
//  Created by Mabast on 10/2/22.
//

import UIKit

protocol GFRepoItemVCDelegate: AnyObject {
    func didTabGithubProfile(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemVCDelegate!
    
    init(user: User, delegate: GFRepoItemVCDelegate!) {
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
        itemInfoViewOne.set(setItemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(setItemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, tilte: "Github Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTabGithubProfile(for: user)
    }
}
