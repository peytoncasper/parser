//
//  File.swift
//
//
//  Created by Peyton Casper on 2/9/20.
//

import Foundation

class State {
    var id: String
    var name: String
    var transitions: [Character: State]
    init(id: String, name: String) {
        self.id = id
        self.name = name
        self.transitions = [:]
    }
}


class FiniteStateMachine {
    var states: [String: Vertex]
    var transitions: [Transition]
    var currentState: Vertex
    
    init() {
        states = [
            "start": Vertex(name: "start", token: "", hasRegex: false),
            "whitespace": Vertex(name: "whitespace", token: "WHITESPACE", hasRegex: false),
            "left_brace": Vertex(name: "left_brace", token: "LEFT_BRACE", hasRegex: false),
            "right_brace": Vertex(name: "right_brace", token: "RIGHT_BRACE", hasRegex: false),
            "colon": Vertex(name: "colon", token: "COLON", hasRegex: false),
            "line_feed": Vertex(name: "line_feed", token: "LINE_FEED", hasRegex: false),
            "carriage_return": Vertex(name: "carriage_return", token: "CARRIAGE_RETURN", hasRegex: false),
            "tab": Vertex(name: "tab", token: "TAB", hasRegex: false),
            "string": Vertex(name: "string", token: "STRING", hasRegex: true)
        ]
        
        transitions = [
            Transition(from: "start", to: "whitespace", condition: " ", type: "exact"),
            Transition(from: "whitespace", to: "whitespace", condition: " ", type: "exact"),
            Transition(from: "start", to: "left_brace", condition: "{", type: "exact"),
            Transition(from: "start", to: "right_brace", condition: "}", type: "exact"),
            Transition(from: "start", to: "colon", condition: ":", type: "exact"),
            Transition(from: "start", to: "line_feed", condition: "\n", type: "exact"),
            Transition(from: "start", to: "carriage_return", condition: "\r", type: "exact"),
            Transition(from: "start", to: "tab", condition: "\t", type: "exact"),
            Transition(from: "start", to: "string", condition: "\"", type: "exact"),
            Transition(from: "string", to: "string", condition: "[^\"\\]", type: "regex"),
        ]
        
        for transition in transitions {
            states[transition.from]?.transitions[transition.condition] = states[transition.to]
        }

        currentState = states["start"]!
    }
    
    func next(input: String) -> String? {

        if let nextState = currentState.transitions[input] {
            currentState = nextState
            return nil
        } else {
//            for rule in currentState.transitions {
//                if rule.
//            }
            
            
            let token = currentState.token
            currentState = states["start"]!
            
            return token
        }
    }
}

public struct Parser {
    let fsm: FiniteStateMachine
    
    public init() {
        fsm = FiniteStateMachine()
    }
    
    public func parseFileRegex(file: String) {
        
    }
    
    public func parseFile(file: String) {

        var offset: Int = 0
        
//        let iterator = file.makeIterator()
        
        var tokenStart: Int = 0
        var tokenLength: Int = 0
        
        while offset < file.count {
            let i = file.index(file.startIndex, offsetBy: offset)
            let char: String = String(file[i])

            if let t = fsm.next(input: char) {
                let token: Token = Token(
                    value: t,
                    length: offset - tokenStart
                )
                tokenStart = offset
                if token.length > 1 {
                    offset -= 1
                }
                

//                print(token)
            }
//            print("Offset: " + String(offset) + " Character: " + char)
            
            offset += 1
        }

    }
}
