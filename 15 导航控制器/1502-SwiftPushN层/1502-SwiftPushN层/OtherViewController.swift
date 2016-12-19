//
//  OtherViewController.swift
//  1502-SwiftPushN层
//
//  Created by Meng Fan on 16/12/19.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //随机色
        let red = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        let green = CGFloat( arc4random_uniform(255))/CGFloat(255.0)
        let blue = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        let colorRun = UIColor.init(red:red, green:green, blue:blue , alpha: 1)
        self.view.backgroundColor = colorRun
        
        //计算子控制器的个数
        let viewcontrollers = self.navigationController?.viewControllers
        self.title = "第\(viewcontrollers!.count - 1)个控制器"
        
        
        //创建push按钮
        let pushbtn = UIButton(type: .custom)
        pushbtn.backgroundColor = UIColor.black
        pushbtn.setTitle("push", for: .normal)
        pushbtn.frame = CGRect(x:100, y:100, width:100, height:30)
        pushbtn.addTarget(self, action: #selector(pushBtnClick(btn:)), for: .touchUpInside)
        self.view.addSubview(pushbtn)
        
        //创建pop按钮
        let popbtn1 = UIButton(type: .custom)
        popbtn1.tag = 100
        popbtn1.backgroundColor = UIColor.black
        popbtn1.setTitle("pop1", for: .normal)
        popbtn1.frame = CGRect(x:100, y:200, width:100, height:30)
        popbtn1.addTarget(self, action: #selector(popBtn1Click(btn:)), for:.touchUpInside)
        self.view.addSubview(popbtn1)
        
        let popbtn2 = UIButton(type: .custom)
        popbtn2.tag = 101
        popbtn2.backgroundColor = UIColor.black
        popbtn2.setTitle("pop2", for: .normal)
        popbtn2.frame = CGRect(x:100, y:300, width:100, height:30)
        popbtn2.addTarget(self, action: #selector(popBtn1Click(btn:)), for: .touchUpInside)
        self.view.addSubview(popbtn2)
        
        let popbtn3 = UIButton(type: .custom)
        popbtn3.tag = 102
        popbtn3.backgroundColor = UIColor.black
        popbtn3.setTitle("pop3", for: .normal)
        popbtn3.frame = CGRect(x:100, y:400, width:100, height:30)
        popbtn3.addTarget(self, action: #selector(popBtn1Click(btn:)), for: .touchUpInside)
        self.view.addSubview(popbtn3)

    }
    
    //MARK: Action
    func pushBtnClick(btn: UIButton) {
        let otherVC = OtherViewController()
        self.navigationController?.pushViewController(otherVC, animated: true)
    }
    
    func popBtn1Click(btn: UIButton) {
        if btn.tag == 100 {
            //pop1---直接返回上一级
            _ = self.navigationController?.popViewController(animated: true)
        }else if btn.tag == 101 {
            //pop2---返回首页
            _ =
                self.navigationController?.popToRootViewController(animated: true)
        }else if btn.tag == 102 {
            //pop3---返回指定界面
            let alertVC = UIAlertController(title: "提示", message: "请输入返回控制器的索引", preferredStyle: .alert)
            
            //添加输入框
            alertVC.addTextField(configurationHandler: { (textField: UITextField) in
                textField.keyboardType = .numberPad
                textField.textAlignment = .center
            })
            
            //初始化alertAction
            let alertAction = UIAlertAction(title: "确定", style: .default, handler: { (alertAction: UIAlertAction) -> Void in
                
                print("sure")
                //拿到输入框的内容
                let textField = alertVC.textFields?.last
                
                if let indexStr = textField?.text {
                    //拿到当前导航控制器的子控制器个数
                    let count = self.navigationController?.viewControllers.count
                    let index = Int(indexStr)
                    if index! >= count! || index! < 0 {
                        //不合法
                        print("输入错误")
                        return;
                    }
                    
                    //需要跳转到下标为index的控制器
                    let stepVC = self.navigationController!.viewControllers[index!] as UIViewController
                    _ = self.navigationController?.popToViewController(stepVC, animated: true)
                    
                }

            })
            
            alertVC.addAction(alertAction)
            self.present(alertVC, animated: true, completion: nil)

        }
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

}
