//
//  SceneDelegate.swift
//  GitFollowers
//
//  Created by Mabast on 9/16/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        UINavigationBar.appearance().tintColor = .systemGreen
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = GFTabBarController()
        window?.makeKeyAndVisible()
    }
}

