//
//  NotesViewController.swift
//  NotesApp-iOS-UIKit-MVC
//
//  Created by Pavel Palancica on 03.01.2024.
//

import UIKit

public final class NotesViewController: UIViewController {

    private var notes: [String] = [
        "Note 1",
        "Note 2",
        "Note 3"
    ]
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .lightGray
    }
}
