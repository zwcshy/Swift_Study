//
//  main.swift
//  Swift_类型选择
//
//  Created by caoxu on 2017/3/6.
//  Copyright © 2017年 BJWenTianXia. All rights reserved.
//

import Foundation

//类型选择
func test() {
    
    class MediaItem {
        
    }
    
    class Movie: MediaItem {
        
    }
    
    class Song: MediaItem {
        
    }
    
    let array = [Song(), Movie()]
    
    //is测试 类型判断
    for item in array {
        if item is Movie {
            print("Movie构建")
        } else if item is Song {
            print("Song构建")
        }
    }
    
    //as测试 类型转换
    for item in array {
        if let movie = item as? Movie {
            print("可转换为Movie: '\(movie)'")
        } else if let song = item as? Song {
            print("可转换为Song: '\(song)'")
        }
    }
    
    //AnyObject可以是任何类型的一个实例 值类型或引用类型
    let someObjects: [AnyObject] = [Movie(), 1 as AnyObject, "33" as AnyObject]
    print(someObjects)
    
    //Any任何类型数据 还可以是函数 闭包等
    var things = [Any]()
    things.append(0) //值类型
    things.append(Movie()) //引用类型
    things.append({ (name: String) -> String in "Hello, \(name)" }) // 闭包
}

test()

