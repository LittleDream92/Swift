//
//  Base.swift
//  0601-Swift初始化
//
//  Created by Meng Fan on 16/12/12.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Cocoa

class Base: NSObject {
    
    var name: String?
    
    init(name: String) {
        self.name = name
    }
    
    
    deinit {
        print("base - deinit")
    }
    
}
