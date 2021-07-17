//
//  DetailView.swift
//  HAXOR N3WZ
//
//  Created by Abdelrahman Adel on 11/5/20.
//  Copyright © 2020 Abdelrahman Adel. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url : String?
    
    var body: some View {
        WebView(url: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url : "www.google.com")
    }
}
