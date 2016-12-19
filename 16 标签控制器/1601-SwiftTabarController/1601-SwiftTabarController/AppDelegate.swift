//
//  AppDelegate.swift
//  1601-SwiftTabarController
//
//  Created by Meng Fan on 16/12/13.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UITabBarControllerDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //初始化window
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        
        
        let homeVC = HomeViewController()
        let messageVC = MessageViewController()
        let searchVC = SearchViewController()
        let settingVC = SettingViewController()
        
        
        var viewControllers = [homeVC, messageVC, searchVC, settingVC]
        
        //创建更多控制器
        for index in 0...4 {
            let vc = UIViewController()
            
            vc.view.backgroundColor = UIColor(red: CGFloat(arc4random() % 255 / 255) , green: CGFloat(arc4random() % 255 / 255), blue: CGFloat(arc4random() % 255 / 255) , alpha: 1)
            vc.title = "控制器\(index)"
            viewControllers.append(vc)
        }
        
        //创建一个标签控制器
        let tabVC = UITabBarController()
        //设置代理
        tabVC.delegate = self
        //设置标签控制器管理的子控制器
        tabVC.viewControllers = viewControllers
        self.window?.rootViewController = tabVC
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //MARK: UITabBarControllerDelegate
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print(viewController)
    }


}

