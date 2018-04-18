//
//  ViewController.swift
//  PickViewTest
//
//  Created by D7703_13 on 2018. 4. 18..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var myLable: UILabel!
    @IBOutlet weak var myLabel: UILabel! //레이블 지정
    @IBOutlet weak var myPickView: UIPickerView! //피커뷰 지정
    
    var color = ["white","black","red"]
    var feeling = ["1","2","3","4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickView.delegate=self
        myPickView.dataSource=self
        // Do any additional setup after loading the view, typically from a nib.
        //UiPickerViewDataSource 메소드(세로 나눔 기준)
        
    }
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 2 //피커를 세로 2개로 나눈다.
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if component == 0 {
                return 3 //1번째 피커에 3개
            } else {
                return 4 //2번째 피커에 100개
            }
        }
        //메소드에 값을 넣어주는 구문(딜리게이트에 존재)
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            
            
            if component == 0 {
                return color[row]
            } else {
                return feeling[row]
            }
            
            
            
            
            
//            let myString = "\(row), \(component)"
//            myLabel.text = myString
//           return myString
        }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            myLabel.text = color[row]
        } else {
            myLable.text = feeling[row]
        }
    
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

