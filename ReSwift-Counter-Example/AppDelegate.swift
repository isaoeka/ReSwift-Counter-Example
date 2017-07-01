//
//  AppDelegate.swift
//  ReSwift-Counter-Example
//
//  Created by Isao Kono on 2017/07/01.
//  Copyright © 2017年 isaoeka. All rights reserved.
//

import UIKit
import ReSwift

var mainStore = Store<AppState>(
    reducer: AppReducer.handleAction,
    state: AppState()
)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}

}

