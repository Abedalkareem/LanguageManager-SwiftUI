//
//  SplashView.swift
//  Example
//
//  Created by abedalkareem omreyh on 09/04/2021.
//

import SwiftUI

struct SplashView: View {
  
  // MARK: - body
  
  var body: some View {
    VStack {
      Spacer()
      Image("logo")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 150, height: 100)
      Spacer()
      Text("Welcome!")
      Spacer()
    }
  }
}

// MARK: - Previews

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    SplashView()
  }
}
