//
//  File.swift
//  
//
//  Created by Peyton Casper on 2/9/20.
//

import Foundation

public class LALR {
//    var lexer: Lexer
//    var dfa: DeterministicFiniteStateAutomaton
    
    public init(fsmDefinition: FiniteStateMachineDefinition) {
//        _ = FiniteStateMachine(def: fsmDefinition)
        
    }
}
//public struct Parser {
//    let fsm: FiniteStateMachine
//
//    public init() {
//        fsm = FiniteStateMachine()
//    }
//
//    public func parseFileRegex(file: String) {
//
//    }
//
//    public func parseFile(file: String) {
////
////        var offset: Int = 0
////
//////        let iterator = file.makeIterator()
////
////        var tokenStart: Int = 0
////        var tokenLength: Int = 0
////
////        while offset < file.count {
////            let i = file.index(file.startIndex, offsetBy: offset)
////            let char: String = String(file[i])
////
////            if let t = fsm.next(input: char) {
////                let token: Token = Token(
////                    value: t,
////                    length: offset - tokenStart
////                )
////                tokenStart = offset
////                if token.length > 1 {
////                    offset -= 1
////                }
////
////
//////                print(token)
////            }
//////            print("Offset: " + String(offset) + " Character: " + char)
////
////            offset += 1
////        }
//
//    }
//}
