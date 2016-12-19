//
//  SecondViewController.swift
//  1502-SwiftPushN层
//
//  Created by Meng Fan on 16/12/19.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "第1个控制器"
        
        //创建push按钮
        let pushbtn = UIButton(type: .custom)
        pushbtn.backgroundColor = UIColor.black
        pushbtn.setTitle("push", for: .normal)
        pushbtn.frame = CGRect(x:100, y:100, width:100, height:30)
        pushbtn.addTarget(self, action: #selector(pushBtnClick(btn:)), for: .touchUpInside)
        self.view.addSubview(pushbtn)
        
        //创建pop按钮
        let popbtn = UIButton(type: .custom)
        popbtn.backgroundColor = UIColor.black
        popbtn.setTitle("pop", for: .normal)
        popbtn.frame = CGRect(x:100, y:200, width:100, height:30)
        popbtn.addTarget(self, action: #selector(popBtnClick(btn:)), for: .touchUpInside)
        self.view.addSubview(popbtn)
        
        
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
    
    
    func pushBtnClick(btn: UIButton) {
        
        let otherVC = OtherViewController()
        self.navigationController?.pushViewController(otherVC, animated: true)
        
    }
    func popBtnClick(btn: UIButton) {
        _ = self.navigationController?.popViewController(animated: true)
    }

}
