//
//  Names.swift
//  Table View app
//
//  Created by Даниил Никулин on 03.11.2020.
//

struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    static func getPerson() -> [Person] {
       
        var persons: [Person] = []
        
        let name = DataManager.data.names.shuffled()
        let surname = DataManager.data.surnames.shuffled()
        let email = DataManager.data.emails.shuffled()
        let phone = DataManager.data.phones.shuffled()
        
        for person in 0..<name.count {
            let person = Person(name: name[person], surname: surname[person], email: email[person], phone: phone[person])
            
            persons.append(person)
        }
        return persons
    }
    
}
    





