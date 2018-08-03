//
//  MenuViewController.swift
//  MisterHotPot
//
//  Created by ruijia lin on 8/1/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit
import WebKit

class MenuViewController: UIViewController {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let menuURL = URL(string: brooklynMenuURL) else { return }
        let menuRequest = URLRequest(url: menuURL)
        webView.load(menuRequest)
        
    }
}

extension MenuViewController: WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        // disable clicking event
        webView.evaluateJavaScript("document.documentElement.style.webkitUserSelect='none'")
        webView.evaluateJavaScript("document.documentElement.style.webkitTouchCallout='none'")
        webView.evaluateJavaScript("var elems = document.getElementsByTagName('a'); for (var i = 0; i < elems.length; i++) { elems[i]['href'] = 'javascript:(void)'; }")
    }
}


