//
//  StickerTransform.swift
//  FoilTest
//
//  Created by Benjamin Pisano on 03/11/2024.
//

import SwiftUI

public struct StickerTransform: Equatable, Hashable, Sendable {
    public static let neutral: StickerTransform = .init(x: 0.5, y: 0.5)

    public let x: Double
    public let y: Double

    public var point: CGPoint {
        .init(x: x, y: y)
    }

    public init(
        x: Double,
        y: Double
    ) {
        self.x = x
        self.y = y
    }

    public static func * (lhs: StickerTransform, rhs: CGFloat) -> StickerTransform {
        .init(x: lhs.x * rhs, y: lhs.y * rhs)
    }
}
