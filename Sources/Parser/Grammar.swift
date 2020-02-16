//
//  File.swift
//  
//
//  Created by Peyton Casper on 2/9/20.
//

import Foundation

struct GrammarRule {
    var token: String
    var rule: String
}

class Grammar {
    var rules: [GrammarRule]
    
    init() {
        rules = []
    }
    
    func parseGrammar(grammar: [String]) {
        var tokens: [String: String] = [:]
        for rule in grammar {
            let ruleComponents = rule.split(separator: ":")
            if ruleComponents.count == 2 {
                let token = ruleComponents[0].trimmingCharacters(in: .whitespacesAndNewlines)
                let rule = ruleComponents[1].trimmingCharacters(in: .whitespacesAndNewlines)
                
                tokens[token] = rule
            }
//            rules.append(GrammarRule(from: <#T##String#>, to: <#T##String#>, condition: <#T##String#>))
        }
//        
//        for rule in tokens {
//            
//        }
    }
}
