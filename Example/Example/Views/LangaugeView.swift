//
//  LangaugeView.swift
//  Example
//
//  Created by abedalkareem omreyh on 09/04/2021.
//

import SwiftUI
import LanguageManagerSwiftUI

struct LangaugeView: View {

  // MARK: - Properties

  @EnvironmentObject var languageSettings: LanguageSettings

  // MARK: - body

  var body: some View {
    VStack {
      Text("Select a language")
        .fontWeight(.bold)
        .padding()
      Button("Arabic") {
        withAnimation {
          languageSettings.selectedLanguage = .ar
        }
      }
      Button("English") {
        withAnimation {
          languageSettings.selectedLanguage = .en
        }
      }
    }
    .buttonStyle(AppButtonStyle())
  }
}

// MARK: - Previews

struct LangaugeView_Previews: PreviewProvider {
  static var previews: some View {
    LangaugeView()
  }
}
