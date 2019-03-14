//
//  Schools.swift
//  Northwest-KC-App
//
//  Created by rayaan on 14/03/19.
//  Copyright © 2019 Northwest. All rights reserved.
//

import Foundation

class Schools{
    
    static var shared = Schools()
    
    private var schools:[School]
    private convenience init(){
        self.init(schools:[])
    }//end of convenience initializer
    private init(schools:[School]){
        self.schools = schools
    }//end of initializer
    
    subscript(index:Int)->School{
        
        return schools[index]
    }
    
    
    func numSchools()->Int{
        return schools.count
    }//end of method numSchools
    
    func add(school:School){
        schools.append(school)
    }//end of method add
    
    func delete(school:School){
        if schools.count != 0{
            for i in 0..<schools.count{
                if school.name == schools[i].name
                {
                    schools.remove(at: i)
                    return
                }
                
            }//end of for loop
        }//end of in statement
    }//end of method delete
    
}//end of class Schools

class School{
    var name:String
    var coach:String
    var teams:[Team]
    
    init(name:String, coach:String, teams:[Team]){
        self.name = name
        self.coach = coach
        self.teams = teams
    }//end of initializer
    
    func addTeam(name:String,students:[String]){
        let team = Team(name:name, students:students)
        self.teams.append(team)
    }//end of method addTeam
    
    
}//end of class School


class Team{
    var name:String
    var students:[String]
    
    init(name:String, students:[String]){
        self.name = name
        self.students = students
    }//end of initializer
    
}//end of class Team
