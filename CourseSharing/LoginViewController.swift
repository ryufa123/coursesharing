//
//  LoginViewController.swift
//  CourseSharing
//
//  Created by apple for ldh on 2017/12/8.
//  Copyright © 2017年 apple for ldh. All rights reserved.
//

import UIKit
class LoginViewController: UIViewController{
    
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    required init (coder: aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.eventable = LoginBussinessLogicController()
    }
    
    override func render(key: String!, value: NSObject!){
        switch (key){
        case "message":
            self.labelMessage.text = value as? String
        default:
            super.render(key, value: value)
        }
    }
    
    override func getValue(key: String!) -> NSObject{
        switch (key) {
        case "username":
            return self.textFieldUsername.text!
        case "password":
            return self.textFieldPassword.text!
        default:
            return super.getValue(key)
        }
        override func goToPage(PageName:String!){
            switch (PageName) {
            case "Home":
                self.performSegueWithIdentifier("HomeIdentifier",sender: self)
            default:
                super.goToPage(PageName)
            }
        }
        @IBOutlet func onLoginButtonPressed(sender: AnyObject) {
            self.eventable?.dispatchEvent("LoginButtonPressed", object_:nil)
        }
    }
}

