//
//  SceneDelegate.swift
//  iOS
//
//  Created by Lucas Cesar on 25/08/20.
//  Copyright © 2020 Lucas Cesar. All rights reserved.
//

import UIKit
import Beagle

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        BeagleConfig.configDependencies()
        let beagleScreen = Beagle.screen(.remote(.init(url: "/login")))
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = beagleScreen
        window?.makeKeyAndVisible()
    }
}

