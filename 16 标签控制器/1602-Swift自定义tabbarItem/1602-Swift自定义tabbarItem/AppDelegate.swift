//
//  AppDelegate.swift
//  1602-Swift自定义tabbarItem
//
//  Created by Meng Fan on 16/12/13.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let width = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //初始化window
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        
        //初始化tabbar控制器
        let home = UIViewController()
        let message = UIViewController()
        let search = UIViewController()
        let setting = UIViewController()
        let viewControllers = [home, message, search, setting]
        
        let tabbarContrl = UITabBarController()
        tabbarContrl.viewControllers = viewControllers
        self.window?.rootViewController = tabbarContrl
        
        
        //设置系统的tabbarItem
        let tabItem1 = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.favorites, tag: 1)
        home.tabBarItem = tabItem1
        
        let tabItem2 = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.bookmarks, tag: 2)
        message.tabBarItem = tabItem2
        
        //设置自定义的图片、标题TabbarItem
        let tabItem3 = UITabBarItem(title: "搜索", image: UIImage(named: "search_H"), tag: 1)
        search.tabBarItem = tabItem3
        
        let tabItem4 = UITabBarItem(title: "设置", image: UIImage(named: "setting_H"), tag: 1)
        setting.tabBarItem = tabItem4
        
        
        //设置tabbar工具栏
        /**
         *  swift 3.0中放弃 make函数，只能使用构造方法创建
         *  例如：CGSizeMake(width, 49）改成CGSize(width: width, height: 49)
         */
        //修改图片
        var img = UIImage(named: "nav")
        UIGraphicsBeginImageContext(CGSize(width: width, height: 49))
        img?.draw(in: CGRect(x: 0, y: 0, width: width, height: 49))
        img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        //获取tabbar
        let tabbar = tabbarContrl.tabBar
        
        //设置tabbar背景图片
        tabbar.backgroundImage = img
        
        //设置item的选中图片颜色
        tabbar.tintColor = UIColor.red
        
        //设置item的选中效果
        tabbar.selectionIndicatorImage = UIImage(named: "select")
        
        //设置item左上的小图标
        tabItem1.badgeValue = "new"
        
        
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


}

