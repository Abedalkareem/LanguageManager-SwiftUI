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
        .frame(width: 240, height: 100)
      Spacer()
      Text("Welcome!")
        .fontWeight(.bold)
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
