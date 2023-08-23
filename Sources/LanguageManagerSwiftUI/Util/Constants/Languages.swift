//
//  Languages.swift
//  LanguageManagerSwiftUI
//
//  Created by abedalkareem omreyh on 06/04/2021.
//

import Foundation

public struct Languages: Equatable {
  public static let ar = Languages(rawValue: "ar")
  public static let en = Languages(rawValue: "en")
  public static let nl = Languages(rawValue: "nl")
  public static let ja = Languages(rawValue: "ja")
  public static let ko = Languages(rawValue: "ko")
  public static let vi = Languages(rawValue: "vi")
  public static let ru = Languages(rawValue: "ru")
  public static let sv = Languages(rawValue: "sv")
  public static let fr = Languages(rawValue: "fr")
  public static let es = Languages(rawValue: "es")
  public static let pt = Languages(rawValue: "pt")
  public static let it = Languages(rawValue: "it")
  public static let de = Languages(rawValue: "de")
  public static let da = Languages(rawValue: "da")
  public static let fi = Languages(rawValue: "fi")
  public static let nb = Languages(rawValue: "nb")
  public static let tr = Languages(rawValue: "tr")
  public static let el = Languages(rawValue: "el")
  public static let id = Languages(rawValue: "id")
  public static let ms = Languages(rawValue: "ms")
  public static let th = Languages(rawValue: "th")
  public static let hi = Languages(rawValue: "hi")
  public static let hu = Languages(rawValue: "hu")
  public static let pl = Languages(rawValue: "pl")
  public static let cs = Languages(rawValue: "cs")
  public static let sk = Languages(rawValue: "sk")
  public static let uk = Languages(rawValue: "uk")
  public static let hr = Languages(rawValue: "hr")
  public static let ca = Languages(rawValue: "ca")
  public static let ro = Languages(rawValue: "ro")
  public static let he = Languages(rawValue: "he")
  public static let ur = Languages(rawValue: "ur")
  public static let fa = Languages(rawValue: "fa")
  public static let ku = Languages(rawValue: "ku")
  public static let arc = Languages(rawValue: "arc")
  public static let sl = Languages(rawValue: "sl")
  public static let ml = Languages(rawValue: "ml")
  public static let am = Languages(rawValue: "am")
  public static let enGB = Languages(rawValue: "en-GB")
  public static let enAU = Languages(rawValue: "en-AU")
  public static let enCA = Languages(rawValue: "en-CA")
  public static let enIN = Languages(rawValue: "en-IN")
  public static let frCA = Languages(rawValue: "fr-CA")
  public static let esMX = Languages(rawValue: "es-MX")
  public static let ptBR = Languages(rawValue: "pt-BR")
  public static let zhHans = Languages(rawValue: "zh-Hans")
  public static let zhHant = Languages(rawValue: "zh-Hant")
  public static let zhHK = Languages(rawValue: "zh-HK")
  public static let es419 = Languages(rawValue: "es-419")
  public static let ptPT = Languages(rawValue: "pt-PT")
  public static let deviceLanguage = Languages(rawValue: "")
  
  public let rawValue: String
  
  public init(rawValue: String) {
    self.rawValue = rawValue
  }
}
