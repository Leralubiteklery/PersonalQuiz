//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Lera Savchenko on 30.04.23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}
    
    // MARK: - Private Methods
extension ResultViewController {
    private func updateResult() {
        var frequencyOfAnimals: [AnimalType : Int] = [:]
        let animals = answers.map { $0.animal }
        
        for animal in animals {
            frequencyOfAnimals[animal, default: 0] += 1
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: AnimalType) {
        animalTypeLabel.text = "Вы - \(animal.rawValue)"
        descriptionLabel.text = animal.definition
    }
}
