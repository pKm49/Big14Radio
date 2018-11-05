//
//  WebViewController.swift
//  Big14Radio
//
//  Created by admin on 05/11/18.
//  Copyright © 2018 big14. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController,   WKUIDelegate {

    @IBOutlet weak var myNavBar: UINavigationBar!
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        
        view = webView
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "http://big14radio.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
