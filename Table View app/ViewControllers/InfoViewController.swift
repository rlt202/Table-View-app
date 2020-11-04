//
//  InfoViewController.swift
//  Table View app
//
//  Created by Даниил Никулин on 04.11.2020.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var persons: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = persons.name + " " + persons.surname
        emailLabel.text = "Mail: \(persons.email)"
        phoneLabel.text = "Phone: \(persons.phone)"
    }
    

}
