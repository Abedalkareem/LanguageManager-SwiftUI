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
      LanguageManagerView {
        ContentView()
      }
    }
  }
}
