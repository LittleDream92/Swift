//
//  RootViewController.swift
//  1603-Swift标签控制器
//
//  Created by Meng Fan on 16/12/13.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {
    
    
    //计算设备屏幕宽高
    let width = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height
    
    var selectedImgView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建子视图
        self.setUpTabbarView()
        
        //创建子控制器
        self.setUpViewControllers()
    }
    
    //MARK: item触发方法
    func buttonAction(btn: UIButton) {
        //通过修改selectedIndex,实现子控制器之间的切换显示
        self.selectedIndex = btn.tag - 100
        self.selectedIndex = Int(btn.center.x/(width/5))
        //选中视图移动的动画效果
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.selectedImgView.center = btn.center
        }
    }
    
    //MARK: 创建子视图
    func setUpTabbarView() {
        //定制自己的tabbar视图
        
        //1、隐藏系统tabbar工具栏
        self.tabBar.isHidden = true
        
        //2、创建自定义tabbar工具栏视图
        let tabbarView = UIImageView(frame: CGRect(x: 0, y: height - 49, width: width, height: 49))
        tabbarView.isUserInteractionEnabled = true
        tabbarView.image = UIImage(named: "navbg.png")
        
        self.view.addSubview(tabbarView)
        
        
        //3、创建自定义Item
        let array = ["1.png", "2.png", "3.png", "4.png", "5.png"]
        for index in 0...array.count-1 {
            let btn = UIButton(type: UIButtonType.custom)
            btn.frame = CGRect(x: width/CGFloat(array.count) * CGFloat(index), y: 0, width: width / CGFloat(array.count), height: 49)
            btn.tag = 100 + index
            btn.setImage(UIImage(named: array[index]), for: UIControlState.normal)
            //添加点击事件
            btn.addTarget(self, action: #selector(buttonAction(btn:)), for: .touchUpInside)
            tabbarView.addSubview(btn)
        }
        
        selectedImgView = UIImageView(image: UIImage(named: "选中.png"))
        selectedImgView.frame = CGRect(x: (width / CGFloat(array.count) - 53)/2, y: (49 - 45)/2, width: 53, height: 45)
        
        tabbarView.addSubview(selectedImgView)
        
    }
    
    //MARK: 创建子控制器
    func setUpViewControllers() {
        let homeVC = HomeViewController()
        let messageVC = MessageViewController()
        let searchVC = SearchViewController()
        let settingVC = SettingViewController()
        
        let vcs = [homeVC, messageVC, searchVC, settingVC]
        self.viewControllers = vcs
    }
    
    

    
    
    //MARK:
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
