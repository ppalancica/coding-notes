//
//  ViewController.swift
//  CatFancy
//
//  Created by Pavel Palancica on 07.04.2024.
//

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    Task {
      do {
        let breeds = try await BreedsLoader.loadBreeds()
        print("BreedsLoader retrieved \(breeds.count) breed(s).")
      } catch {
        print("An error happened during breed loading.")
      }
    }
  }
}
