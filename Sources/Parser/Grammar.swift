//
//  File.swift
//  
//
//  Created by Peyton Casper on 2/9/20.
//

import Foundation

struct GrammarRule {
    var from: String
    var to: String
    var condition: String
}

class Grammar {
    var rules: [GrammarRule]
    
    init() {
        rules = []
    }
    
    func parseGrammar(file: [String]) {
        for rule in file {
            rules.append(GrammarRule(from: <#T##String#>, to: <#T##String#>, condition: <#T##String#>))
        }
    }
}
