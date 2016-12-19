//
//  RootViewController.swift
//  1605-Swift三级结构storyboard
//
//  Created by Meng Fan on 16/12/13.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController, UINavigationControllerDelegate {
    
    let width = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height
    
    //自定义tabbarView
    var tabbarView: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //创建自定义标签工具视图
        self.setUpCusetomTabbar()
        
        //设置导航栏代理
        for nav:UINavigationController in self.viewControllers as! [UINavigationController] {
            nav.delegate = self;
        }
        
    }
    
    // MARK: 创建自定义标签工具视图
    func setUpCusetomTabbar() {
        
        //1、隐藏系统tabbar
        self.tabBar.isHidden = true
        
        //2、创建自定义tabbar视图
        tabbarView = UIImageView(frame: CGRect(x: 0, y: height - 49, width: width, height: 49))
        tabbarView.isUserInteractionEnabled = true
        self.view.addSubview(tabbarView)
        
        //2.1、设置tabbar背景图片
        var  img = UIImage(named: "mask_navbar.png")
        UIGraphicsBeginImageContext(CGSize(width: width, height: 49))
        img?.draw(in: CGRect(x: 0, y: 0, width: width, height: 49))
        img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        tabbarView.image = img
        
        //3、设置自定义Item
        //3.1、创建选中样式的图片
        let arrowImg = UIImageView(image: UIImage(named: "home_bottom_tab_arrow"))
        arrowImg.tag = 123
        arrowImg.frame = CGRect(x: 0, y: 0, width: 64, height: 45)
        tabbarView.addSubview(arrowImg)
        
        let imgNames = ["home_tab_icon_1.png","home_tab_icon_2.png","home_tab_icon_3.png","home_tab_icon_4.png","home_tab_icon_5.png"]
        
        
        for index in 0...imgNames.count - 1 {
            let imgName = imgNames[index]
            let itemWidth = width / CGFloat(imgNames.count)
            
            //初始化Item Button
            let btn = UIButton(type: UIButtonType.custom)
            btn.tag = 100 + index
            //点击按钮发光
            btn.showsTouchWhenHighlighted = true
            btn.setImage(UIImage(named: imgName), for: UIControlState.normal)
            btn.frame = CGRect(x: itemWidth * CGFloat(index), y: 0, width: itemWidth, height: 49)
            btn.addTarget(self, action: #selector(btnAction(sender:)), for: UIControlEvents.touchUpInside)
            tabbarView.addSubview(btn)
            
            //对齐选中样式的图片
            if index == 0 {
                arrowImg.center = btn.center
            }
        }
    }
    
    //MARK: action
    func btnAction(sender: UIButton) {
        
        //获取点击按钮的tag值
        self.selectedIndex = sender.tag - 100
        
        //动画－移动
        let arrowImg = tabbarView.viewWithTag(123)
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            arrowImg?.center = sender.center
        })
    }
    
    //  MARK: UINavigationControllerDelegate
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        //push隐藏tabbar
        if navigationController.viewControllers.count == 2 {
            UIView.animate(withDuration: 0.25, animations: { () -> Void in
                self.tabbarView?.frame.origin.x = -self.width
            })
        }else if navigationController.viewControllers.count == 1 {
            UIView.animate(withDuration: 0.25, animations: { () -> Void in
                self.tabbarView?.frame.origin.x = 0
            })
        }
    }
    
    // MARK:
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
