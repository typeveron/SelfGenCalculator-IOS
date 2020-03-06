//
//  InfoAnswer.swift
//  calculator
//
//  Created by Bechir Mihoub on 2020-01-30.
//  Copyright © 2020 Bechir Mihoub. All rights reserved.
//

import Foundation

struct InfoAnswer: CustomStringConvertible {

    var sanswer = 0.0
    var yanswer = 0.0
    var message = ""

var description: String {
    return "System answer = \(sanswer),   Your answer = \(yanswer),   \(message)"
}
}

