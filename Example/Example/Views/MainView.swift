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
      Image("logo")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 240, height: 100)
      Text("Hello")
        .fontWeight(.bold)
        .padding()
      Text("About")
        .padding()
      Button("Change the language") {
        isPresented = true
      }
    }
    .buttonStyle(AppButtonStyle())
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
