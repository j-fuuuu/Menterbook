//
//  menter.swift
//  Menterbook
//
//  Created by 藤井玖光 on 2022/08/26.
//

import UIKit

class Menter{
    var name: String! //メンター名
    var course: String! //コース名
    var imagename: String! //顔写真
    
    //初期化
    init(name:String, imagename:String, course:String){
        self.name = name
        self.course = course
        self.imagename = imagename
    }
    func getImage() -> UIImage{
        return UIImage(named: imagename)!
    }
}

