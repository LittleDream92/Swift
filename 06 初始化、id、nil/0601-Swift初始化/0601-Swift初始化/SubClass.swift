//
//  SubClass.swift
//  0601-Swift初始化
//
//  Created by Meng Fan on 16/12/12.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Cocoa

//继承自base
class SubClass: Base {
    
    var age: Int?
    init(name: String, age: Int) {
        super.init(name: name)
        self.age = age
    }
    
    //反初始化 －》 实例在被释放之前，反初始化函数立即调用
    deinit {
        print("SubClass - deinit")
    }

}
