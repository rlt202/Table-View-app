//
//  ContactsTableViewController.swift
//  Table View app
//
//  Created by Даниил Никулин on 04.11.2020.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var persons = Person.getPerson()
    
    override func viewDidLoad() {
        
        self.title = "Contacts"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.name + " " + person.surname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phone
        
        return cell
    }
}
