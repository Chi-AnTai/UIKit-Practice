//
//  AppDelegate.swift
//  UIKit Practice
//
//  Created by 戴其安 on 2017/7/28.
//  Copyright © 2017年 戴其安. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
// swiftlint:disable line_length
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ViewController()
        viewController.view.backgroundColor = UIColor.white
        window!.rootViewController = viewController
        window!.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {

    }
    func applicationDidEnterBackground(_ application: UIApplication) {

    }
    func applicationWillEnterForeground(_ application: UIApplication) {

    }
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
}
