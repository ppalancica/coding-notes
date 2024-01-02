//
//  RootViewController.swift
//  NotesApp-iOS-UIKit-MVC
//
//  Created by Pavel Palancica on 01.01.2024.
//

import UIKit

public class RootViewController: UIViewController {
    
    private var notes: [String] = [
        "Note 1",
        "Note 2",
        "Note 3"
    ]

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

private extension RootViewController {
    func setupUI() {}
}
