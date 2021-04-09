//
//  LanguageManagerView.swift
//  LanguageManagerSwiftUI
//
//  Created by abedalkareem omreyh on 06/04/2021.
//

import SwiftUI

struct LanguageManagerView<Content: View>: View {
  
  // MARK: Private properties
  
  private let content: Content
  @ObservedObject var settings: LanguageSettings
  
  // MARK: init
  
  init(_ defaultLanguage: Languages, content: () -> Content) {
    self.content = content()
    self.settings = LanguageSettings(defaultLanguage: defaultLanguage)
  }
  
  // MARK: body

  var body: some View {
    content
      .environment(\.locale, settings.local)
      .environment(\.layoutDirection, settings.layout)
      .id(settings.uuid)
      .environmentObject(settings)
  }
}

// MARK: Previews

struct LanguageManagerView_Previews: PreviewProvider {
  static var previews: some View {
    LanguageManagerView(.deviceLanguage) {
      Text("Hi")
    }
  }
}
