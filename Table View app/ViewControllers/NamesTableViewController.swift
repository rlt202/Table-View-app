//
//  NamesTableViewController.swift
//  Table View app
//
//  Created by Даниил Никулин on 03.11.2020.
//

import UIKit

class NamesTableViewController: UITableViewController {

    let persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Names"
    }
        
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
        let accessoryTypes: [UITableViewCell.AccessoryType] = [.disclosureIndicator]
        cell.accessoryType = accessoryTypes[indexPath.row % accessoryTypes.count]
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surname

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier != "info" { return }
        if let indexPath = tableView.indexPathForSelectedRow {
            let infoVC = segue.destination as! InfoViewController
            infoVC.persons = persons[indexPath.row]
        }
    }


}
