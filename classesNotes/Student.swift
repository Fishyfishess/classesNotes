//
//  Student.swift
//  classesNotes
//
//  Created by ALVIN WEI on 9/24/26.
//

import Foundation
@Observable//necessary for class variables to be @State variables
class student{
    var name: String
    var age: Int
    
    init(name: String, age:Int){
        self.name = name
        self.age = age
    }
    
    func getInfo()->String{
        return ("\(name), \(age)")
    }
    
    func increaseAge(){
        age += 1
    }
}
