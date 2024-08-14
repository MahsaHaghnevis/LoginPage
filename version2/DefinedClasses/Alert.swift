//
//  Alert.swift
//  version2
//
//  Created by Mahsa on 8/14/24.
//

import Foundation
import UIKit

struct Alert{
    
    static func showBasicAlert(on vc : ViewController , with title : String , message : String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        vc.present(alert, animated: true)
        
    }
}
