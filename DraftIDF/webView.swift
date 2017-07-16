//
//  webView.swift
//  DraftIDF
//
//  Created by Avi Parshan on 7/6/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.
//

import UIKit

class webView: UIViewController, UIWebViewDelegate{
    
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }

    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
//    func sayHello(sender: UIBarButtonItem) {
//        if webView.canGoBack
//        {
//            webView.goBack()
//            
//        }
//    }
    
    var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

//        let rf = UIBarButtonItem(barButtonSystemItem: .rewind, target: self, action: #selector(sayHello(sender:)))
//        self.navigationItem.leftBarButtonItem = rf
    
            webView = UIWebView(frame: UIScreen.main.bounds)
            webView.delegate = self
            webView.scalesPageToFit = true

//            webView.keyboardDisplayRequiresUserAction = true
     
        
            view.addSubview(webView)
        
            if let url = Bundle.main.url(forResource: "contactAPP", withExtension: "html")
            {
                let request = URLRequest(url: url)
                webView.loadRequest(request)
        }

//            if let url = URL(string: "https://lonesoldiercenter.com/contact-us/") {
//                let request = URLRequest(url: url)
//                webView.loadRequest(request)
        }
    }

