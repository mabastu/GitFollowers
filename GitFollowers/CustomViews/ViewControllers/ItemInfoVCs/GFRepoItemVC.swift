//
//  GFRepoItemVC.swift
//  GitFollowers
//
//  Created by Mabast on 10/2/22.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {

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
