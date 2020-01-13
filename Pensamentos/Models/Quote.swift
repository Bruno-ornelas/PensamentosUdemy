//
//  Quotes.swift
//  Pensamentos
//
//  Created by cedro_nds on 09/01/20.
//  Copyright © 2020 cedro. All rights reserved.
//

import Foundation


struct Quote: Codable {
    
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String{
        return "〝" + quote + "〞"
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
    
    
}
