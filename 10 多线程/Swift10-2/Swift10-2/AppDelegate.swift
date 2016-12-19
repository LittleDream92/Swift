//
//  AppDelegate.swift
//  Swift10-2
//
//  Created by keyzhang on 15/7/16.
//  Copyright © 2015年 keyzhang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var imgView: UIImageView?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //手动构建UI
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.yellow
        window?.makeKeyAndVisible()
        
        let vc = ViewController()
        vc.view.backgroundColor = UIColor.clear
        window?.rootViewController = vc
        
        imgView = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        imgView?.backgroundColor = UIColor.red
        window?.addSubview(imgView!)
        
        
        
        //使用 NSOperation 和 NSOperationQueue
        
        //    初始化一个操作/队列或者线程池
        let queue: OperationQueue = OperationQueue()
        //往队列中添加一个操作
        queue.addOperation { () -> Void in
            self.run()
        }
        
        //创建线程对象
//        let psOperation: PersonOperation = PersonOperation()
//        
//        queue.addOperation(psOperation)

        for index in 0...100 {
            print("主线程---\(index)")
        }

        
        
        
        return true
    }

    
    func run() {
//        for index in 0...100 {
//            print("run线程---\(index)")
//        }
        
        autoreleasepool { () -> () in
            let url = URL(string: "http://c.hiphotos.baidu.com/image/pic/item/7aec54e736d12f2ecbd3956e4dc2d562843568ed.jpg")
            let data = try? Data(contentsOf: url!)
            
            DispatchQueue.main.async { () -> Void in
                //UI操作回到主线程
                self.imgView?.image = UIImage(data: data!)
            }
            
            //多线程中使用定时器
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(AppDelegate.test), userInfo: nil, repeats: true)
            RunLoop.current.run()
        }
        
        

    }
    
    func test() {
        print("test")
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

