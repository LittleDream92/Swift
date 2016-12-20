//
//  ViewController.swift
//  Swift12-8
//
//  Created by keyzhang on 15/7/26.
//  Copyright © 2015年 keyzhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //初始化用来装7个view的数组
    var views = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for _ in 0...6 {
            let view = UIView(frame: CGRect(x: 50, y: 50, width: 220, height: 220))
            //设置背景颜色(随机)
            view.backgroundColor = UIColor(red: CGFloat(CGFloat(arc4random()).truncatingRemainder(dividingBy: 10) * 0.1), green: CGFloat(CGFloat(arc4random()).truncatingRemainder(dividingBy: 10) * 0.1), blue: CGFloat(CGFloat(arc4random()).truncatingRemainder(dividingBy: 10) * 0.1), alpha: 1)
            self.view.addSubview(view)
            
            
            //取得上一次创建的view
            if let lastView: UIView = self.views.last as? UIView {
                //当前视图的尺寸，在上一个视图的基础上缩小0.8
                view.transform = lastView.transform.scaledBy(x: 0.8, y: 0.8)
            }
            //将视图添加到数组中
            self.views.append(view)
        }
        
        

        //创建btn
        let button = UIButton(type: UIButtonType.contactAdd)
        button.addTarget(self, action: #selector(ViewController.btnClick(_:)), for: UIControlEvents.touchUpInside)
        button.frame = CGRect(x: 200, y: 400, width: 100, height: 40)
        self.view.addSubview(button)
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timeAction(_:)), userInfo: nil, repeats: true)
        
    }
    
    func timeAction(_ timer: Timer) {
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            for subView in self.views as! [UIView] {
                //设置背景颜色(随机)
                subView.backgroundColor = UIColor(red: CGFloat(CGFloat(arc4random()).truncatingRemainder(dividingBy: 10) * 0.1), green: CGFloat(CGFloat(arc4random()).truncatingRemainder(dividingBy: 10) * 0.1), blue: CGFloat(CGFloat(arc4random()).truncatingRemainder(dividingBy: 10) * 0.1), alpha: 1)

                subView.transform = subView.transform.rotated(by: CGFloat(M_PI / 8))
            }
        }) 
    }
    
    
    //缩小
    func btnClick(_ btn: UIButton) {
        
        for subView in self.views as! [UIView] {
            subView.transform = subView.transform.scaledBy(x: 0.8, y: 0.8)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

