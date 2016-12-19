//
//  RootViewController.swift
//  1501-Swift导航控制器基础
//
//  Created by Meng Fan on 16/12/19.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "第一个控制器"
        
        //初始化button
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        btn.setTitle("push到下一级", for: .normal)
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action: #selector(btnAction(sender:)), for: .touchUpInside)
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
    
    func btnAction(sender: UIButton) {
        let detailVC = DetailViewController()
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

}
