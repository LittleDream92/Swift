//
//  HomeViewController.swift
//  1605-Swift三级结构storyboard
//
//  Created by Meng Fan on 16/12/13.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpNav()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: 初始化导航栏
    func setUpNav() {
        let leftBtn = UIButton(type: UIButtonType.custom)
        leftBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        leftBtn.setTitle("我的微博", for: UIControlState.normal)
        leftBtn.frame = CGRect(x: 0, y: 0, width: 100, height: 43)
        leftBtn.setBackgroundImage(UIImage(named: "button_title.png"), for: .normal)
        leftBtn.addTarget(self, action: #selector(btnAction(sender:)), for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBtn)
    }
    
    
    //MARK: action
    func btnAction(sender: UIButton) {
        let detailVC = DetailViewController()
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
}
