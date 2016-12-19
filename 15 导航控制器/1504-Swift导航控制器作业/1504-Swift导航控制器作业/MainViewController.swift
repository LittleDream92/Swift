//
//  MainViewController.swift
//  1504-Swift导航控制器作业
//
//  Created by Meng Fan on 16/12/19.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Jobs weibo"
        
        //设置背景图片
        var img = UIImage(named: "bj.jpg")
        UIGraphicsBeginImageContext(CGSize(width: screenWidth, height: screenHeight))
        img?.draw(in: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: img!)
        
        //自定义左边的按钮
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 44))
        leftView.backgroundColor = UIColor.clear
        let editorBtn = UIButton(type: .custom)
        editorBtn.frame = CGRect(x: 5, y: 5, width: 33, height: 32)
        editorBtn.setImage(UIImage(named: "write.png"), for: UIControlState.normal)
        editorBtn.setImage(UIImage(named: "write_on.png"), for: UIControlState.highlighted)
        editorBtn.addTarget(self, action: #selector(sendAction(btn:)), for: .touchUpInside)
        leftView.addSubview(editorBtn)
        
        let searchBtn = UIButton(type: .custom)
        searchBtn.frame = CGRect(x: 45, y: 5, width: 33, height: 32)
        searchBtn.setImage(UIImage(named: "btn_search"), for: .normal)
        searchBtn.addTarget(self, action: #selector(searchAction(btn:)), for: .touchUpInside)
        leftView.addSubview(searchBtn)
        
        let leftItem = UIBarButtonItem(customView: leftView)
        self.navigationItem.leftBarButtonItem = leftItem

        //右侧按钮
        let refreshBtn = UIButton(type: .custom)
        refreshBtn.frame = CGRect(x: 0, y: 0, width: 33, height: 32)
        refreshBtn.setImage(UIImage(named: "刷新"), for: .normal)
        refreshBtn.setImage(UIImage(named: "刷新选中"), for: .highlighted)
        let rightItem = UIBarButtonItem(customView: refreshBtn)
        self.navigationItem.rightBarButtonItem = rightItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func sendAction(btn: UIButton) {
        let sendVC = SendViewController()
        let nav = UINavigationController(rootViewController: sendVC)
        
        var img = UIImage(named: "navbar_bg_normal.png")
        UIGraphicsBeginImageContext(CGSize(width: screenWidth, height: 64))
        img?.draw(in: CGRect(x: 0, y: 0, width: screenWidth, height: 64))
        img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        nav.navigationBar.setBackgroundImage(img, for: .default)
        self.present(nav, animated: true, completion: nil)
    }
    
    func searchAction(btn: UIButton) {
        let imgVC = ImageViewViewController()
        self.navigationController?.pushViewController(imgVC, animated: true)
    }

}
