//
//  ImageViewViewController.swift
//  Swift15-4
//
//  Created by keyzhang on 15/8/7.
//  Copyright © 2015年 keyzhang. All rights reserved.
//

import UIKit

class ImageViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //修改标题
        self.navigationItem.title = "图片新闻"
        
        //改背景颜色
        var img = UIImage(named: "bj.jpg")
        UIGraphicsBeginImageContext(CGSize(width: screenWidth, height: screenHeight))
        img?.draw(in: UIScreen.main.bounds)
        img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.view.backgroundColor = UIColor(patternImage: img!)
        //返回按钮
        let backBtn = UIButton(type: .custom)
        backBtn.frame = CGRect(x: 0, y: 0, width: 68, height: 33)
        backBtn.setTitle("返回", for: .normal)
        backBtn.addTarget(self, action: #selector(backAction(btn:)), for: .touchUpInside)
        backBtn.setBackgroundImage(UIImage(named: "back"), for: .normal)
        backBtn.setBackgroundImage(UIImage(named: "back_on"), for: .highlighted)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backBtn)
        
        //两个按钮图片
        let btn1 = UIButton(type: .custom)
        btn1.tag = 101
        btn1.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        btn1.setImage(UIImage(named: "20120618100.jpg"), for: .normal)
        btn1.addTarget(self, action: #selector(imageAction(btn:)), for: .touchUpInside)
        self.view.addSubview(btn1)
        
        let btn2 = UIButton(type: .custom)
        btn2.tag = 102
        btn2.frame = CGRect(x: 120, y: 10, width: 100, height: 100)
        btn2.setImage(UIImage(named: "20120618101.jpg"), for: .normal)
        btn2.addTarget(self, action:#selector(imageAction(btn:)), for: .touchUpInside)
        self.view.addSubview(btn2)
    }
    
    func backAction(btn: UIButton) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    func imageAction(btn: UIButton) {
        let imgDetailVC = ImageDetailViewController()
        imgDetailVC.img = btn.image(for: .normal)!
        self.navigationController?.pushViewController(imgDetailVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
