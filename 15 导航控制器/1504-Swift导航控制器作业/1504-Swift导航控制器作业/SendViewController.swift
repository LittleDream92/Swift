//
//  SendViewController.swift
//  Swift15-4
//
//  Created by keyzhang on 15/8/7.
//  Copyright © 2015年 keyzhang. All rights reserved.
//

import UIKit

class SendViewController: UIViewController, UITextViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "写微博";
        //改背景颜色
        var img = UIImage(named: "bj.jpg")
        UIGraphicsBeginImageContext(CGSize(width: screenWidth, height: screenHeight))
        img?.draw(in: UIScreen.main.bounds)
        img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.view.backgroundColor = UIColor(patternImage: img!)
        let backBtn = UIButton(type: .custom)
        backBtn.frame = CGRect(x: 0, y: 0, width: 68, height: 33)
        backBtn.setTitle("返回", for: .normal)
        backBtn.addTarget(self, action: #selector(backAction(btn:)), for: .touchUpInside)
        backBtn.setBackgroundImage(UIImage(named: "back"), for: .normal)
        backBtn.setBackgroundImage(UIImage(named: "back_on"), for: .highlighted)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backBtn)

        //文本编辑框
        let textView = UITextView(frame: CGRect(x: 10, y: 10, width: screenWidth - 20, height: 100))
        textView.delegate = self
        textView.font = UIFont.systemFont(ofSize: 16)

        //弹出键盘
        textView.becomeFirstResponder()
        self.view.addSubview(textView)
    }
    
    func backAction(btn: UIButton) {
        //关闭模态视图
        self.dismiss(animated: true, completion: nil)
    }
}
