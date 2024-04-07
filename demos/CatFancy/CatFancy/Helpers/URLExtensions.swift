//
//  URLExtensions.swift
//  CatFancy
//
//  Created by Pavel Palancica on 07.04.2024.
//

import Foundation

extension URL {
  static func couldNotInit(urlString: String) -> String {
    "Could not initialize URL from \(urlString)."
  }
}
