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
        
        let name = DataManager.data.names
        let surname = DataManager.data.surnames
        let email = DataManager.data.emails
        let phone = DataManager.data.phones
        
        for person in 0..<10 {
            let person = Person(name: name[person], surname: surname[person], email: email[person], phone: phone[person])
            
            persons.append(person)
        }
        return persons
    }
}
    





