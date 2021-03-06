//
//  AppDelegate.swift
//  ComplexityProject
//
//  Created by Billings, Spencer on 12/4/18.
//  Copyright © 2018 Billings, Spencer. All rights reserved.
//

import UIKit

@UIApplicationMain
public class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        // Override point for customization after application launch.
        return true
    }

    public func applicationWillResignActive(_ application: UIApplication) -> Void
    {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    public func applicationDidEnterBackground(_ application: UIApplication) -> Void
    {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    public func applicationWillEnterForeground(_ application: UIApplication) -> Void
    {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    public func applicationDidBecomeActive(_ application: UIApplication) -> Void
    {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    public func applicationWillTerminate(_ application: UIApplication) -> Void
    {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

