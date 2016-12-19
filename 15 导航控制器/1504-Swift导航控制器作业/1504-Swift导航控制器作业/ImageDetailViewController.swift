//
//  ImageDetailViewController.swift
//  Swift15-4
//
//  Created by keyzhang on 15/8/7.
//  Copyright © 2015年 keyzhang. All rights reserved.
//

import UIKit

class ImageDetailViewController: UIViewController {
    
    var _img: UIImage?
    var img: UIImage{
        get{
            return _img!
        }
        set{
            _img = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "无限图片";
        
        //改背景颜色
        var img = UIImage(named: "bj.jpg")
        UIGraphicsBeginImageContext(CGSize(width: screenWidth, height: screenHeight))
        img?.draw(in: UIScreen.main.bounds)
        img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.view.backgroundColor = UIColor(patternImage: img!)
        //设置导航栏半透明
        self.navigationController!.navigationBar.isTranslucent = true;
        
        //创建全屏button
        let imgBtn = UIButton(type: .custom)
        imgBtn.backgroundColor = UIColor.clear
        imgBtn.frame = UIScreen.main.bounds
        imgBtn.setBackgroundImage(self.img, for: .normal)
        imgBtn.setBackgroundImage(self.img, for: .highlighted)
        imgBtn.addTarget(self, action: #selector(imgBtnClick(btn:)), for: .touchUpInside)
        self.view.addSubview(imgBtn)
    }
    
    func imgBtnClick(btn: UIButton) {
        UIApplication.shared.setStatusBarHidden(!(self.navigationController?.isNavigationBarHidden)!, with: UIStatusBarAnimation.fade)
        self.navigationController?.setNavigationBarHidden(!(self.navigationController?.isNavigationBarHidden)!, animated: true)
    }
    
    //视图即将消失的时候
    override func viewWillDisappear(_ animated: Bool) {
        //设置导航栏不透明
        self.navigationController?.navigationBar.isTranslucent = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
