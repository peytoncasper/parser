//
//  NFA.swift (Non-deterministic Finite State Automaton)
//
//
//  Created by Peyton Casper on 2/9/20.
//

import Foundation

class NFA {
//    var nfa: FiniteStateMachine
    
    init() {
//        fsm = FiniteStateMachine()
    }
    
    func convertFSMToNFA(fsm: FiniteStateMachine) {
        
        guard let start = fsm.states["START"] else {
            return
        }
        
        expandExpression(state: start)

    }
    
    func expandExpression(state: State) {
//        for state in state.transitions {
//            if state.key
//        }
    }
}
