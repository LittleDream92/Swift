//
//  main.swift
//  0902-Swift类ARC
//
//  Created by Meng Fan on 16/12/19.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Foundation

//初始化老师对象
var teacher: Teacher? = Teacher(name: "张三")

//初始化学生对象
var student: Student? = Student(name: "Jack", teacher: teacher!)

teacher!.student = student  //T中的S->ARC+1
//student!.teacher = teacher!  //S中的T->ARC+1


teacher = nil   //T->ARC-1,但不等于0,造成内存泄漏
student = nil   //S->ARC-1,但不等于0,造成内存泄漏


/*解决方法：
 将Teacher中的student对象设成弱引用，或者将Student中的teacher对象设成弱引用
 
 或者设为无主引用！使用关键字unowned
 */

