//
//  DetailViewController.swift
//  1501-Swift导航控制器基础
//
//  Created by Meng Fan on 16/12/19.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "第二个控制器"
        self.view.backgroundColor = UIColor.white
        
        //初始化返回按钮
        let btn = UIButton(type: .custom)
        btn.setTitle("返回", for: .normal)
        btn.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        btn.backgroundColor = UIColor.cyan
        btn.addTarget(self, action: #selector(backAction(sender:)), for: .touchUpInside)
        self.view.addSubview(btn)
        
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
    
    func backAction(sender: UIButton) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    deinit {
        print("detailVC deInit")
    }

}
