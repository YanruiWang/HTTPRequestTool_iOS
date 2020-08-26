//
//  AppDelegate.swift
//  RequestTool
//
//  Created by 王彦睿 on 8/26/20.
//  Copyright © 2020 王彦睿. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let rootViewController = ViewController()
        window?.rootViewController = rootViewController
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle



}

