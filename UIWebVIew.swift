//
//  UIWebVIew.swift
//  course sharing
//
//  Created by apple for ldh on 2017/12/31.
//  Copyright © 2017年 apple for ldh. All rights reserved.
//

import UIKit

class UIWebVIew
{
    
    func loadUrl(url: String, web: UIWebView){
        //load request
        let aUrl = NSURL(String: ("https://") + url)
        let urlRequest = NSURLRequest(URL:aUrl)
        web.loadRequest(urlRequest)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        loadUrl(url: textField.text!, web: WebVIew)
        textField.resignFirstResponder()
        return true
        //keyboard action
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        loadUrl.startAnimation()
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    //activity over
    func webViewDidFinishLoad(_ webView: UIWebView) {
        loadUrl.stopAnimating()
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
}

