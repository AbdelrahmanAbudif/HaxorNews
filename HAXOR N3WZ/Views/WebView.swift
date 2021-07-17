//
//  WebView.swift
//  HAXOR N3WZ
//
//  Created by Abdelrahman Adel on 11/5/20.
//  Copyright © 2020 Abdelrahman Adel. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView : UIViewRepresentable {
    let url : String?
    
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = url{
            if let url = URL(string: safeURL){
            let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
