//
//  FiniteStateMachineDefinition.swift
//  
//  FiniteStateMachineDefinition defines a schema for any FiniteStateMachine that will be read or written from a JSON file.
//
//  Created by Peyton Casper on 2/15/20.
//

import Foundation

struct Vertex: Codable{
    var name: String
}

struct Edge: Codable {
    var from: String
    var to: String
    var rule: String
}

//extension Edge {
//    init(json: [String: Any]) throws {
//
//        // Parse from
//        guard let from = json["from"] as? String else {
//            throw SerializationError.missing("from")
//        }
//
//        // Parse to
//        guard let to = json["to"] as? String else {
//            throw SerializationError.missing("to")
//        }
//
//        // Parse rule
//        guard let rule = json["rule"] as? String else {
//            throw SerializationError.missing("rule")
//        }
//
//        // Initialize properties
//        self.from = from
//        self.to = to
//        self.rule = rule
//    }
//}

public struct FiniteStateMachineDefinition: Codable {
    var vertices: [String]
    var edges: [Edge]
}

//extension FiniteStateMachineDefinition {
//    public init(json: [String: Any]) throws {
//        let
////
////        print(json["vertices"])
////
//        // Parse Vertices
////        guard let vertices = json["vertices"] as? [String] else {
////            throw SerializationError.missing("vertices")
////        }
//
////        for v in
//
//        // Parse Edges
////        guard let edges = json["edges"] as? [String: Any] else {
////            throw SerializationError.missing("edges")
////        }
//
//        // Initialize properties
//        self.vertices = []
//        self.edges = edges
//    }
//}
