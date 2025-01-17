//
//  NISTDataModel.swift
//  Compliance App
//
//  Created by DLX-22 on 07/01/2025.
//

import Foundation

struct Control: Identifiable, Hashable {
    let id: UUID
    let name: String
    let baseline: [String]
    let description: String
    let controlStatement: String
    let supplementalGuidance: String
}

struct ControlFamily: Identifiable, Hashable {
    let id: UUID
    let name: String
    let description: String
    let controls: [Control]
}
