//
//  MoreViewController.swift
//  1605-Swift三级结构storyboard
//
//  Created by Meng Fan on 16/12/13.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func chooseTheme(_ sender: Any) {
        let themeVC = ThemeViewController()
        self.navigationController?.pushViewController(themeVC, animated: true)
    }

}
