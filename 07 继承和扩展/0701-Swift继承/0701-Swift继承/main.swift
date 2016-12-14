//
//  main.swift
//  0701-Swift继承
//
//  Created by Meng Fan on 16/12/12.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Foundation


//父类
class Base {
    var baseName: String
    var baseTag: Int
    
    func getBaseName() -> String {
        return baseName
    }
    
    init() {
        baseName = "Base Class"
        baseTag = 1
    }
}

//子类
class SubClass: Base {
    
    //重写属性
    override var baseName: String {
        get {
            return super.baseName + " override"
        }
        
        set {
            super.baseName = newValue
        }
    }
    
    
    //重写方法
    override func getBaseName() -> String {
        return "sub " + super.getBaseName()
    }
    
}


//简单的类的使用
var base = Base()
base.baseName = "Base"
base.baseTag = 3
print("\(base.getBaseName()) --- \(base.baseTag)")


//继承
//因为继承了base，所以拥有Base类的所有属性和方法
var sub = SubClass()
//sub.baseName = "sub"
sub.baseTag = 9
print("\(sub.getBaseName()) --- \(sub.baseTag)")







