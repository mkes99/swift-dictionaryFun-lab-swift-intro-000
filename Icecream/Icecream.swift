//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var person: [String] = []
        
        for (name, iceCream) in favoriteFlavorsOfIceCream{
            if flavor == iceCream{
                person.append(name)
            }
        }
        
        return person
    }
    
    // 3.
    func count(forFlavor flavor: String) -> Int{
        var person: [String] = []
        
        for (name, iceCream) in favoriteFlavorsOfIceCream{
            if flavor == iceCream{
                person.append(name)
            }
        }
        
        return person.count
    }
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        var flavor: String? = ""
        
        for (name, iceCream) in favoriteFlavorsOfIceCream{
            if name == person{
                flavor = iceCream
            }
        }
        
        return flavor == "" ? nil : flavor
    }
    
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool{
        guard favoriteFlavorsOfIceCream[forPerson] != nil else {
            return false
        }
        
        favoriteFlavorsOfIceCream[forPerson] = flavor
        return true
    }
    
    // 6.
    func remove(person: String) -> Bool {
        guard favoriteFlavorsOfIceCream[person] != nil else {
            return false
        }
        
        favoriteFlavorsOfIceCream.removeValue(forKey: person)
        return true
    }
  
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool{
        guard favoriteFlavorsOfIceCream[person] == nil else {
            return false
        }
        
        favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
        return true
    }
    
    // 9.
    func attendeeList() -> String {
        let sorted = favoriteFlavorsOfIceCream.sorted(by: <)
        var sentence: String = ""
        
        for person in sorted{
            sentence +=  "\(person.key) likes \(person.value)\n"
        }
      
        return String(sentence.dropLast(1))
    }
}
