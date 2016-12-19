//
//  HomeViewController.swift
//  1603-Swift标签控制器
//
//  Created by Meng Fan on 16/12/13.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "home"
        self.view.backgroundColor = UIColor.cyan
        
        let btn = UIButton(type: UIButtonType.custom)
        btn.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action: #selector(btnClick(sender:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        
    }
    
    func btnClick(sender: UIButton) {
        let detailVC = detailViewController()
        
        self.navigationController?.pushViewController(detailVC, animated: true)
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
