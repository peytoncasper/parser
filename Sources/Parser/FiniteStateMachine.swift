//
//  File.swift
//
//
//  Created by Peyton Casper on 2/9/20.
//

import Foundation

struct Token {
    let value: String
}

class State {
    var name: String
    var transitions: [String: State]
    var tokens: [String: Token]
    init(name: String) {
        self.name = name
        self.transitions = [:]
        self.tokens = [:]
    }
}

public class FiniteStateMachine {
    var states: [String: State]
    var currentState: State
    
    public init(def: FiniteStateMachineDefinition) {
        
        // START and END are reserved keywords indicating the start and end states for a FSM.
        // START and END are both necessary states for an FSM to function properly and are created in
        // a static fashion. This is also necessary to keep currentState from having to be an optional
        // which would require unwrapping in a slightly less elegant way.
        let start = State(name: "START")
        let end = State(name: "END")
        
        states = ["START": start, "END": end]
        currentState = start
        
        for vertex in def.vertices {
            addState(name: vertex)
        }
        
        for edge in def.edges {
            addTransition(edge: edge)
        }

    }
    
    func addState(name: String) {
        states[name] = State(name: name)
    }
    
    func addTransition(edge: Edge) {
        if states[edge.from] != nil && states[edge.to] != nil  {
            states[edge.from]?.transitions[edge.rule] = states[edge.to]
        }
        // TODO: Add error handling for state not found
    }
    
    func next(input: String) -> Token? {
        let previousState = currentState
        
        
        // TODO: Refactor this to be more "elegant". Ideally, this will get simplified when NFA/DFA logic is implemented.
        if let nextState = currentState.transitions[input] {
            currentState = nextState
            if currentState.name == "END" {
                return previousState.tokens[input]
            }
        } else {
            if let notState = currentState.transitions["^"] {
                currentState = notState
                if currentState.name == "END" {
                    return previousState.tokens["^"]
                }
            } else {
                return Token(value: "UNRECOGNIZED")
            }
        }
        
        return nil
    }
}

