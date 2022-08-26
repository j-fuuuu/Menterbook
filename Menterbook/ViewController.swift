//
//  ViewController.swift
//  Menterbook
//
//  Created by 藤井玖光 on 2022/08/26.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray:[Menter] = []

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンターの番号
    var index: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Menter(name:"ながた", imagename:"nagata.jpg", course:"iPhone"))
        mentorArray.append(Menter(name:"りょう", imagename:"ryo.jpg", course:"Unity"))
        mentorArray.append(Menter(name:"たいてぃ", imagename:"taithi.jpg", course:"WebS,WebD"))
        
        setUI()
       
    }
   
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        index = index - 1
        setUI()
    }

    @IBAction func ushiro(){
        index = index + 1
        setUI()
    }
        
}
