//
//  LanguageSettings.swift
//  LanguageManagerSwiftUI
//
//  Created by abedalkareem omreyh on 06/04/2021.
//

import Combine
import SwiftUI

public class LanguageSettings: ObservableObject {
  
  // MARK: - Properties
  
  public var local: Locale {
    Locale(identifier: selectedLanguage.rawValue)
  }
  
  ///
  /// The device preferred language.
  /// The device language is deffrent than the app language,
  /// to get the app language use `selectedLanguage`.
  ///
  public var deviceLanguage: Languages? {
    get {
      guard let deviceLanguage = Bundle.main.preferredLocalizations.first else {
        return nil
      }
      return Languages(rawValue: deviceLanguage)
    }
  }

  /// The diriction of the language.
  public var layout: LayoutDirection {
    isRightToLeft ? .rightToLeft : .leftToRight
  }
  
  /// The diriction of the language as boolean.
  public var isRightToLeft: Bool {
    get {
      return isLanguageRightToLeft(language: selectedLanguage)
    }
  }
  
  /// A unique id used to refresh the view.
  var uuid: String {
    get {
      return UUID().uuidString
    }
  }
  
  // MARK: - State properties
  
  ///
  /// The current app selected language.
  ///
  @Published public var selectedLanguage: Languages = .deviceLanguage
  
  
  // MARK: - Private properties

  private var bag = Set<AnyCancellable>()

  @AppUserDefault(.selectedLanguage, defaultValue: nil)
  private var _language: String?
  
  // MARK: - init

  public init(defaultLanguage: Languages) {
    if _language == nil {
      _language = (defaultLanguage == .deviceLanguage ? deviceLanguage : defaultLanguage).map { $0.rawValue }
    }
    
    selectedLanguage = Languages(rawValue: _language!)!
    
    observeForSelectedLanguage()
  }
  
  // MARK: - Methods
  
  private func observeForSelectedLanguage() {
    $selectedLanguage
      .map({ $0.rawValue })
      .sink { [weak self] value in
        self?._language = value
    }
    .store(in: &bag)
  }

  private func isLanguageRightToLeft(language: Languages) -> Bool {
    return Locale.characterDirection(forLanguage: language.rawValue) == .rightToLeft
  }
}
