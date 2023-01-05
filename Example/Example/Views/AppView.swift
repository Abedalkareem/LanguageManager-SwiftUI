//
//  AppView.swift
//  Example
//
//  Created by abedalkareem omreyh on 09/04/2021.
//

import SwiftUI

struct AppView: View {

  // MARK: - State properties

  @State var showMainScreen = false

  // MARK: - body

  var body: some View {
    Group {
      if showMainScreen {
        MainView()
      } else {
        SplashView()
      }
    }
    .onAppear(perform: onAppear)
  }

  // MARK: -

  private func onAppear() {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      showMainScreen = true
    }
  }
}

// MARK: - Previews

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
