//
//  Card.swift
//  EtoCard
//
//  Created by cmStudent on 2023/01/20.
//

import Foundation
import SwiftUI
struct Card: Identifiable {
    var id = UUID()
    var title: String
    var etoName: String
    var image: String
}
