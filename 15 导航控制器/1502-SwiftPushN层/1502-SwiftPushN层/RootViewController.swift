//
//  RootViewController.swift
//  1502-SwiftPushN层
//
//  Created by Meng Fan on 16/12/19.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "根控制器"
        self.view.backgroundColor = UIColor.white
        
        let pushBtn = UIButton(type: .custom)
        pushBtn.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        pushBtn.setTitle("push", for: .normal)
        pushBtn.setTitleColor(UIColor.black, for: .normal)
        pushBtn.addTarget(self, action: #selector(pushAction(sender:)), for: .touchUpInside)
        self.view.addSubview(pushBtn)
        
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
    
    func pushAction(sender: UIButton) {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }

}
