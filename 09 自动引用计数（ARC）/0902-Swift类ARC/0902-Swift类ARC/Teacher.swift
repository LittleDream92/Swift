//
//  Teacher.swift
//  0902-Swift类ARC
//
//  Created by Meng Fan on 16/12/19.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Cocoa

class Teacher: NSObject {

    var tName: String
    var student: Student?   //学生对象，初始值为nil
    
    init(name: String) {
        tName = name
        print("\(tName)实例初始化完成")
    }
    
    func getName() -> String {
        return tName
    }
    
    deinit {
        print("\(tName)实例反初始化完成")
    }
}
