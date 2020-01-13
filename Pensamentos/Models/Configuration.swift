//
//  Configuration.swift
//  Pensamentos
//
//  Created by cedro_nds on 09/01/20.
//  Copyright © 2020 cedro. All rights reserved.
//

import Foundation

class Configuration {
    
    enum UserDefaultsKeys: String {
        case timeInterval = "timeInterval"
        case colorScheme = "colorScheme"
        case autorefresh = "autorefresh"
    }
    
    let defaults = UserDefaults.standard
    static var shared: Configuration = Configuration()
    
    var timeInterval: Double {
        get{
            return defaults.double(forKey: UserDefaultsKeys.timeInterval.rawValue)
        }set{
            defaults.set(newValue, forKey: UserDefaultsKeys.timeInterval.rawValue)
        }
    }
    
    var colorScheme: Int {
        get{
            return defaults.integer(forKey: UserDefaultsKeys.colorScheme.rawValue)
        }set{
            defaults.set(newValue, forKey: UserDefaultsKeys.colorScheme.rawValue)
        }
    }
    
    var autorefresh: Bool {
           get{
               return defaults.bool(forKey: UserDefaultsKeys.autorefresh.rawValue)
           }set{
               defaults.set(newValue, forKey: UserDefaultsKeys.autorefresh.rawValue)
           }
       }
    
    
    private init(){
        
    }
    
}
