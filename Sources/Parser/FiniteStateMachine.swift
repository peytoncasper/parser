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
    var transitions: [String: State]
    init(id: String, name: String) {
        self.id = id
        self.name = name
        self.transitions = [:]
    }
}

struct Transition {
    let from: String
    let to: String
    let match: Character

}


class FiniteStateMachine {
    var states: [String: State]
    
    
//    var transitions: [Transition]

    
    init() {
        states = [:]
        
        
//        states = [
//            "start": Vertex(name: "start", token: "", hasRegex: false),
//            "whitespace": Vertex(name: "whitespace", token: "WHITESPACE", hasRegex: false),
//            "left_brace": Vertex(name: "left_brace", token: "LEFT_BRACE", hasRegex: false),
//            "right_brace": Vertex(name: "right_brace", token: "RIGHT_BRACE", hasRegex: false),
//            "colon": Vertex(name: "colon", token: "COLON", hasRegex: false),
//            "line_feed": Vertex(name: "line_feed", token: "LINE_FEED", hasRegex: false),
//            "carriage_return": Vertex(name: "carriage_return", token: "CARRIAGE_RETURN", hasRegex: false),
//            "tab": Vertex(name: "tab", token: "TAB", hasRegex: false),
//            "string": Vertex(name: "string", token: "STRING", hasRegex: true)
//        ]
//
//        transitions = [
//            Transition(from: "start", to: "whitespace", condition: " ", type: "exact"),
//            Transition(from: "whitespace", to: "whitespace", condition: " ", type: "exact"),
//            Transition(from: "start", to: "left_brace", condition: "{", type: "exact"),
//            Transition(from: "start", to: "right_brace", condition: "}", type: "exact"),
//            Transition(from: "start", to: "colon", condition: ":", type: "exact"),
//            Transition(from: "start", to: "line_feed", condition: "\n", type: "exact"),
//            Transition(from: "start", to: "carriage_return", condition: "\r", type: "exact"),
//            Transition(from: "start", to: "tab", condition: "\t", type: "exact"),
//            Transition(from: "start", to: "string", condition: "\"", type: "exact"),
//            Transition(from: "string", to: "string", condition: "[^\"\\]", type: "regex"),
//        ]
//
//        for transition in transitions {
//            states[transition.from]?.transitions[transition.condition] = states[transition.to]
//        }
//
//        currentState = states["start"]!
    }
    
    func addState(id: String, name: String) {
        var s = State(id: id, name: name)
        states[id] = s
    }
    
    func addTransition(id: String, transition: Transition) {
        states[id]?.transitions[transition.]
        
    }
    
    func next(input: String) -> String? {

//        if let nextState = currentState.transitions[input] {
//            currentState = nextState
//            return nil
//        } else {
////            for rule in currentState.transitions {
////                if rule.
////            }
//
//
//            let token = currentState.token
//            currentState = states["start"]!
//
//            return token
//        }
        return ""
    }
}

