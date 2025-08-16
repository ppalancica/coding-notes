//
//  RootViewController.swift
//  NotesApp-iOS-UIKit-MVC
//
//  Created by Pavel Palancica on 01.01.2024.
//

import UIKit

public final class RootViewController: UIViewController {
    
    private lazy var notesVC: NotesViewController = {
        let vc = NotesViewController()
        return vc
    }()
   
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

private extension RootViewController {
    func setupUI() {}
    
    @IBAction func goToAllNotesTapped() {
        if let nc = navigationController {
            nc.pushViewController(notesVC, animated: true)
        }
    }
}
