//
//  ViewController.swift
//  RequestTool
//
//  Created by 王彦睿 on 8/26/20.
//  Copyright © 2020 王彦睿. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController, RCTBridgeModule {
    
    var reactView: RCTRootView!
    
    static func moduleName() -> String! {
        return "RequestTool"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var url: URL!
        #if DEBUG
        url = URL(string: "http://10.0.0.7:8081/index.bundle?platform=ios")
        #else
        url = Bundle.main.url(forResource: "main", withExtension: "jsbundle")
        #endif
        reactView = RCTRootView(bundleURL: url, moduleName: "RequestTool", initialProperties: [:], launchOptions: [:])
        view.addSubview(reactView)
        reactView.translatesAutoresizingMaskIntoConstraints = false
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        NSLayoutConstraint.activate([reactView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     reactView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     reactView.topAnchor.constraint(equalTo: view.topAnchor),
                                     reactView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    
    static func requiresMainQueueSetup() -> Bool {
        return true
    }
}

