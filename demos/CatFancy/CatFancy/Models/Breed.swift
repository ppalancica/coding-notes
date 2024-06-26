//
//  Breed.swift
//  CatFancy
//
//  Created by Pavel Palancica on 07.04.2024.
//

import Foundation

struct Breed: Decodable {
  let name: String
  let knownFor: String
  let popularity: Int
  let photoUrl: URL
  let infoUrl: URL
  let credit: String
  let license: License
  let description: String
}
