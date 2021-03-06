#Swift_类和结构体

---

[点击查看源码](https://github.com/XuBaoLoveEatFish/Swift_Study)

````
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

///类和结构体
class ClassesStructures: NSObject {
    
    func test() {
        //      self.testClassStruct()                            // 类和结构体
        //      self.testStructuresAndEnumerationsAreValueTypes() // 结构体和枚举是值类型
        //      self.testClassesAreReferenceTypes()               // 类是引用类型
        //      self.testIdentityOperators()                      // 恒等算子
    }
    
    //类和结构体测试
    func testClassStruct() {
        //初始化
        let someResolution = Resolution()
        let someVideoMode = VideoMode()
        
        //访问属性
        print("someResolution.width：\(someResolution.width)")
        print("someVideoMode.resolution.width：\(someVideoMode.resolution.width)")
        someVideoMode.resolution.width = 1280
        print("someVideoMode.resolution.width：\(someVideoMode.resolution.width)")
        
        //通过成员初始化结构体
        let vga = Resolution(width: 640, height: 480)
        print(vga)
        
        /*  print
         
         someResolution.width：0
         someVideoMode.resolution.width：0
         someVideoMode.resolution.width：1280
         Resolution(width: 640, height: 480)
         
         */
    }
    
    //结构体和枚举是值类型
    func testStructuresAndEnumerationsAreValueTypes() {
        //结构体测试
        let hd = Resolution(width: 1920, height: 1080)
        var cinema = hd
        cinema.width = 2048 //改变cinema的值 不会改变hd中的值
        print("cinema.width：\(cinema.width)")
        print("hd.width：\(hd.width)")
        
        //枚举测试
        enum CompassPoint {
            case north, south, east, west
        }
        var currentDirection = CompassPoint.west
        let rememberedDirection = currentDirection
        //改变currentDirection rememberedDirection的值不会变化
        currentDirection = .east
        print("\(rememberedDirection)")
        
        /*  print
         
         cinema.width：2048
         hd.width：1920
         west
         
         */
    }
    
    //类是引用类型
    func testClassesAreReferenceTypes() {
        let tenEighty = VideoMode()
        tenEighty.frameRate = 25.0
        // 引用tenEighty到alsoTenEighty 并改变alsoTenEighty中的值
        let alsoTenEighty = tenEighty
        alsoTenEighty.frameRate = 30.0
        print("tenEighty.frameRate：\(tenEighty.frameRate)")
        
        /*  print
         
         tenEighty.frameRate：30.0
         
         */
    }
    
    //恒等算子
    func testIdentityOperators() {
        //恒等算子是===或!==
        let tenEighty = VideoMode()
        let alsoTenEighty = tenEighty
        if tenEighty === alsoTenEighty {
            print("相同实例")
        }
        
        /*  print
         
         相同实例
         
         */
    }
}
````