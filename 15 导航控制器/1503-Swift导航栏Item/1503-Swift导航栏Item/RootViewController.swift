//
//  RootViewController.swift
//  1503-Swift导航栏Item
//
//  Created by Meng Fan on 16/12/19.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let width = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "root"
        self.view.backgroundColor = UIColor.white
        
        //******************* 导航栏标题视图 *******************
//        //自定义标题视图
//        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
//        titleLabel.textAlignment = .center
//        titleLabel.backgroundColor = UIColor.gray
//        titleLabel.textColor = UIColor.red
//        titleLabel.font = UIFont.boldSystemFont(ofSize: 25)
//        titleLabel.text = "hehe"
//        self.navigationItem.titleView = titleLabel
        
        //自定义标题按钮
        let titleBtn = UIButton(type: .custom)
        titleBtn.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        titleBtn.backgroundColor = UIColor.gray
        titleBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        titleBtn.setTitleColor(UIColor.red, for: .normal)
        titleBtn.setTitle("click", for: .normal)
        titleBtn.addTarget(self, action: #selector(titleAction(btn:)), for: .touchUpInside)
        self.navigationItem.titleView = titleBtn
        
        
        //******************* 导航栏两侧按钮 *******************
        //第一种方式(系统)
        let leftItem1 = UIBarButtonItem(title: "systemItem", style: .done, target: self, action: #selector(itemAction1(sender:)))
//        self.navigationItem.leftBarButtonItem = leftItem1
        
        //第二种方式(系统)
        let leftItem2 = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(itemAction2(sender:)))
        self.navigationItem.leftBarButtonItems = [leftItem1, leftItem2]
        
        //第三种方式(自定义)
        let rightBtn = UIButton(type: .custom)
        rightBtn.frame = CGRect(x:0, y:0, width: 100, height: 44)
        rightBtn.setTitle("Item3", for: .normal)
        rightBtn.backgroundColor = UIColor.cyan
        rightBtn.addTarget(self, action: #selector(rightItem(btn:)), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    
        //******************* 导航栏背景 *******************
//        //设置导航栏隐藏(导航栏上面的按钮同样隐藏)
//        self.navigationController?.isNavigationBarHidden = true
        
//        //设置导航栏背景风格
//        self.navigationController?.navigationBar.barStyle = .default
        
        //设置导航栏的半透明效果，默认true
        self.navigationController?.navigationBar.isTranslucent = false
        
        //设置导航栏的背景颜色(必须有半透明效果)
//        self.navigationController?.navigationBar.backgroundColor = UIColor.red
        //将导航上所有的Label的字体变色
        self.navigationController?.navigationBar.tintColor = UIColor.red
        //设置图片作为导航栏的背景,设置了背景图片，导航栏就不透明
        var img = UIImage(named: "nav")
        UIGraphicsBeginImageContext(CGSize(width: width, height: 64))
        img?.draw(in: CGRect(x: 0, y: 0, width: width, height: 64))
        img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.navigationController?.navigationBar.setBackgroundImage(img, for: UIBarMetrics.default)
        
        //设置提示文本,通常用不上
        self.navigationItem.prompt = "正在保存";

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: action
    func titleAction(btn: UIButton) {
        print("title Button")
    }

    func itemAction1(sender: UIBarButtonItem) {
        print("systemItem")
    }
    
    func itemAction2(sender: UIBarButtonItem) {
        print("item2")
    }
    
    func rightItem(btn: UIButton) {
        print("item3")
    }
}
