//
//  DoubleExtension.swift
//  BubbleLevel
//
//  Created by Christian Manzaraz on 18/05/2024.
//

import Foundation

extension Double {
    func describeAsFixedLengthString(integerDigits: Int = 2, frationDigits: Int = 2) -> String {
        self.formatted(
            .number
                .sign(strategy: .always())
                .precision(
                    .integerAndFractionLength(integer: integerDigits, fraction: frationDigits)
                )
        )
    }
}
