//
//  Lexer.swift
//  
//
//  Created by Peyton Casper on 2/15/20.
//

import Foundation

enum LexerError: Error {
    case tokenizationError
}

struct Token {
    let value: String
}

public class Lexer {
    var fsm: FiniteStateMachine
    var file: [Character]
    var cursor: Int
    
    public init(fsm: FiniteStateMachine, file: String) {
        self.fsm = fsm
        self.file = Array(file)
        self.cursor = 0
    }
    
    func nextToken() throws -> Token {
        var t: Token? = nil
                
        repeat {
            t = fsm.next(input: String(file[cursor]))
            self.cursor += 1
        } while t == nil
        
        
        // The Lexer should continue iterating its FSM until a Token is returned.
        // However, if we reach EOF without an unrecognized token or t is somehow nil
        // Throw a tokenizationError
        //
        // TODO: Clean this up
        // Add proper logging
        guard let token = t else {
            throw LexerError.tokenizationError
        }
        
        return token
    }
}
