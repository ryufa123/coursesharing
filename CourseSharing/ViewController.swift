//
//  ViewController.swift
//  CourseSharing
//
//  Created by apple for ldh on 2017/12/5.
//  Copyright © 2017年 apple for ldh. All rights reserved.
//

import UIKit




class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate,UIWebViewDelegate,UITextFieldDelegate{
    
    @IBOutlet weak var loading: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var termView: UIView!
    @IBOutlet weak var PickerView: UIpickerView!
    @IBOutlet weak var button: UIButton!
 
    let list = ["第一周","第二周","第三周","第四周","第五周","第六周","第七周","第八周","第九周","第十周","第十一周","第十二周","第十三周","第十四周","第十五周","第十六周","第十七周","第十八周"]
    //the selection of pickerview
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        webView.delegate = self
        //web view delegate
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.addSubview(termView)
        termView.translatesAutoresizingMaskIntoConstraints = false
        termView.heightAnchor.constraint(equalToConstant: 128).isActive = true
        termView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        termView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
    let a = termView.bottomAnchor.constraint(equalTo:view.bottomAnchor,constant:128)
    a.identifier = "bottom"
    a.isActive = true
    
        termView.layer.cornerRadius = 10
    //transform the size of my term select view
        super.viewWillAppear(ture)
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row]
    }
    }
    
func doneClick(_ sender: Any) {
        let title = list[pickerView,selectedRow(inComponent: 0)]
        button.setTitle(title,for: .normal)
        displayPickerView(false)
        //get the title of picker selection
    }
    
func selectTermClick(_ sender: Any) {
        displayPickerView(true)
       
    }
    func displayPickerView(_ show: Bool){
        for a in view.constraints{
            if a.identifier == "bottom"{
                a.constant = (show) ? -10:128
                break
            }
        }
        UIView.animate(withDuration: 0.5){
            self.view.layoutIfNeeded()
        }
}
        


