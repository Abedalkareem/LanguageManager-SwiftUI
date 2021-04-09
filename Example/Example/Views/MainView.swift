//
//  MainView.swift
//  Example
//
//  Created by abedalkareem omreyh on 09/04/2021.
//

import SwiftUI

struct MainView: View {
  
  // MARK: - State properties
  
  @State private var isPresented = false
  
  // MARK: - body
  
  var body: some View {
    VStack {
      Text("Hello")
        .padding()
      Text("About")
        .padding()
      Button("Change the language") {
        isPresented = true
      }
    }
    .fullScreenCover(isPresented: $isPresented) {
      LangaugeView()
    }
  }
}

// MARK: - Previews

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
