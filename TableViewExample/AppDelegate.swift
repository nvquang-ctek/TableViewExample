//
//  AppDelegate.swift
//  TableViewExample
//
//  Created by Quang on 8/1/20.
//  Copyright © 2020 quang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ListPokemonsVC()
        window?.makeKeyAndVisible()
        
        return true
    }
}
