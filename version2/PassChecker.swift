//
//  PassChecker.swift
//  version2
//
//  Created by Mahsa on 8/14/24.
//


import Foundation

class CheckPass{
    
    var pass : String
        
    init(pass : String){
        self.pass = pass
    }
    
    func checkNumberOfChars() -> Bool{
        if !self.pass.isEmpty && self.pass.count >= 8 {
            return true
        }else{
            return false
        }
    }
    
    func checkUpperCase() -> Bool{
       outerLoop: for char in pass {
            if char.isUppercase {
                return true
               
            }
        }
        return false
        
    }
  
