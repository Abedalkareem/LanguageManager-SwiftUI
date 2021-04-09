//
//  File.swift
//  
//
//  Created by abedalkareem omreyh on 09/04/2021.
//

import SwiftUI

public extension String {
  ///
  /// Returns localized key for the string.
  ///
  var localizedKey: LocalizedStringKey {
    return LocalizedStringKey(self)
  }
}
