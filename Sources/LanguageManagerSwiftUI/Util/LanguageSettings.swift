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

  ///
  /// Current app local. It's passed to the views as `environment` so they can use it to localise strings.
  /// Also, you can use it to localise the currency or to use it with a `NSDateFormatter`.
  ///
  public var local: Locale {
    Locale(identifier: selectedLanguage.rawValue)
  }

  ///
  /// The device preferred language.
  /// The device language is deffrent than the app language, it's the language the user is using for his device.
  /// To get the app language use `selectedLanguage`.
  ///
  public var deviceLanguage: Languages? {
    guard let deviceLanguage = Bundle.main.preferredLocalizations.first else {
      return nil
    }
    return Languages(rawValue: deviceLanguage)
  }

  ///
  /// The direction of the language. You can expect one of these values, `rightToLeft` or `leftToRight`.
  ///
  public var layout: LayoutDirection {
    isRightToLeft ? .rightToLeft : .leftToRight
  }

  ///
  /// The diriction of the language as boolean.
  ///
  public var isRightToLeft: Bool {
    isLanguageRightToLeft(language: selectedLanguage)
  }

  ///
  /// A unique id used to refresh the view.
  ///
  var uuid: String {
    UUID().uuidString
  }

  // MARK: - State properties

  ///
  /// The current app selected language.
  /// Changing this value will refresh your views with the new selected language.
  /// The default language is the device language, so if the user device language is arabic,
  /// the app language will be arabic.
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
