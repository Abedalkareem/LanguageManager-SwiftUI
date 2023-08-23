//
//  Languages.swift
//  LanguageManagerSwiftUI
//
//  Created by abedalkareem omreyh on 06/04/2021.
//

import Foundation

public struct Languages: Equatable {
  static let ar = Languages(rawValue: "ar")
  static let en = Languages(rawValue: "en")
  static let nl = Languages(rawValue: "nl")
  static let ja = Languages(rawValue: "ja")
  static let ko = Languages(rawValue: "ko")
  static let vi = Languages(rawValue: "vi")
  static let ru = Languages(rawValue: "ru")
  static let sv = Languages(rawValue: "sv")
  static let fr = Languages(rawValue: "fr")
  static let es = Languages(rawValue: "es")
  static let pt = Languages(rawValue: "pt")
  static let it = Languages(rawValue: "it")
  static let de = Languages(rawValue: "de")
  static let da = Languages(rawValue: "da")
  static let fi = Languages(rawValue: "fi")
  static let nb = Languages(rawValue: "nb")
  static let tr = Languages(rawValue: "tr")
  static let el = Languages(rawValue: "el")
  static let id = Languages(rawValue: "id")
  static let ms = Languages(rawValue: "ms")
  static let th = Languages(rawValue: "th")
  static let hi = Languages(rawValue: "hi")
  static let hu = Languages(rawValue: "hu")
  static let pl = Languages(rawValue: "pl")
  static let cs = Languages(rawValue: "cs")
  static let sk = Languages(rawValue: "sk")
  static let uk = Languages(rawValue: "uk")
  static let hr = Languages(rawValue: "hr")
  static let ca = Languages(rawValue: "ca")
  static let ro = Languages(rawValue: "ro")
  static let he = Languages(rawValue: "he")
  static let ur = Languages(rawValue: "ur")
  static let fa = Languages(rawValue: "fa")
  static let ku = Languages(rawValue: "ku")
  static let arc = Languages(rawValue: "arc")
  static let sl = Languages(rawValue: "sl")
  static let ml = Languages(rawValue: "ml")
  static let am = Languages(rawValue: "am")
  static let enGB = Languages(rawValue: "en-GB")
  static let enAU = Languages(rawValue: "en-AU")
  static let enCA = Languages(rawValue: "en-CA")
  static let enIN = Languages(rawValue: "en-IN")
  static let frCA = Languages(rawValue: "fr-CA")
  static let esMX = Languages(rawValue: "es-MX")
  static let ptBR = Languages(rawValue: "pt-BR")
  static let zhHans = Languages(rawValue: "zh-Hans")
  static let zhHant = Languages(rawValue: "zh-Hant")
  static let zhHK = Languages(rawValue: "zh-HK")
  static let es419 = Languages(rawValue: "es-419")
  static let ptPT = Languages(rawValue: "pt-PT")
  static let deviceLanguage = Languages(rawValue: "")
  
  public let rawValue: String
  
  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}
