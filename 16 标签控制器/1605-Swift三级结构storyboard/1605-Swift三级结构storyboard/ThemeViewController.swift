//
//  ThemeViewController.swift
//  1605-Swift三级结构storyboard
//
//  Created by Meng Fan on 16/12/14.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class ThemeViewController: UIViewController {
    
    
    let width = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height
    
    var checkImg: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "我的主题"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "backcolor")!)
        
        self.setUpViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    ///setUpViews
    ///
    /// -parameter  参数1: 说明
    /// -parameter  参数2: 说明
    func setUpViews() {
        
        //初始化选中视图
        let topImg = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: 160))
        topImg.image = UIImage(named: "topbg")
        self.view.addSubview(topImg)
        
        checkImg = UIImageView(image: UIImage(named: "checkmark.png"))
        
        //循环创建按钮
        for index in 0...7 {
            let btn = UIButton(type: UIButtonType.custom)
            btn.tag = index + 100
            btn.setBackgroundImage(UIImage(named: "\(index+1).png"), for: .normal)
            btn.addTarget(self, action: #selector(btnAction(sender:)), for: .touchUpInside)
            self.view.addSubview(btn)
            
            //设置frame
            if index % 2 == 0 { //偶数
                btn.frame = CGRect(x: (width/2 - 160)/2, y: CGFloat(180 + 80*Int((CGFloat(index) / 2))), width: 160, height: 62)
            }else {
                btn.frame = CGRect(x: (width/2 - 160)/2 + width/2, y: CGFloat(180 + 80*Int((CGFloat(index) / 2))), width: 160, height: 62)
            }
            
            //初始化选中标记图片
            //标记图片可以初始化一个，随着点击的按钮变化，也可以每个按钮都初始化一个，根据点击隐藏喝显示
            if index == 0 {
                checkImg.frame = CGRect(x: btn.frame.maxX - 20, y: btn.frame.maxY - 20, width: 36/2, height: 36/2);
            }
            self.view.addSubview(checkImg)
        }
    }
    
    func btnAction(sender: UIButton) {
        //动画
        UIView.animate(withDuration: 0.3) { () -> Void in
            self.checkImg.frame = CGRect(x: sender.frame.maxX - 20, y: sender.frame.maxY - 20, width: 36/2, height: 36/2);
        }
    }
    
    
    //MARK: viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.isTranslucent = false;
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black;
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController!.navigationBar.barStyle = UIBarStyle.default;
        self.navigationController!.navigationBar.isTranslucent = true;
    }
    
}
