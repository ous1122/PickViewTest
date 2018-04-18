//
//  ViewController.swift
//  PickViewTest
//
//  Created by D7703_13 on 2018. 4. 18..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var myLable: UILabel! //레이블지정
    @IBOutlet weak var myLabel: UILabel! //레이블 지정
    @IBOutlet weak var myPickView: UIPickerView! //피커뷰 지정
    
    var color = ["white","black","red"] //메소드에 들어갈 객체들을 선언해준다.
    var feeling = ["1","2","3","4"] //이하동문
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickView.delegate=self
        myPickView.dataSource=self
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
                return color[row] //위에서 선언해준 컬러를 메소드에 입력해준다.
            } else {
                return feeling[row] //위에서 선언해준 feeling을 메소드에 입력해준다.
            }
            
            
            
            
            
//            let myString = "\(row), \(component)"
//            myLabel.text = myString
//           return myString
        }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            myLabel.text = color[row] //데이터 피커에 적힌 메소드를 텍스트에 넣어준다.
        } else {
            myLable.text = feeling[row] //이하동문
        }
    
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

