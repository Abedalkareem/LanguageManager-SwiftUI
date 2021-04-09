//
//  ExampleApp.swift
//  Example
//
//  Created by abedalkareem omreyh on 09/04/2021.
//

import SwiftUI
import LanguageManagerSwiftUI

@main
struct ExampleApp: App {
  var body: some Scene {
    WindowGroup {
      // The default language when the app starts for the first time.
      // it can be the `deviceLanguage`, `ar`, `en`, or any language.
      LanguageManagerView(.deviceLanguage) {
        AppView()
          .transition(.slide) // The animation that will be happening when the language change.
      }
    }
  }
}
