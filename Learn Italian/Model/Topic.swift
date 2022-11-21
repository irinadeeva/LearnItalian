//
//  Topic.swift
//  Learn Italian
//
//  Created by Irina Deeva on 21/11/22.
//

import Foundation

struct Topic: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var picture: String
    var numberAllWords: Int
    var numberLearntWords: Int
}
