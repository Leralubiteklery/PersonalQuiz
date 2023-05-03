//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Lera Savchenko on 30.04.23.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    

}
