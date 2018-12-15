//
//  Discountable.swift
//  CashMashine
//
//  Created by Виктор Кулаков on 03/11/2018.
//  Copyright © 2018 Виктор Кулаков. All rights reserved.
//

import Foundation

struct DiscountedDiscriptor {
    var itemId: Int
    var discountValue: Double
}

protocol Discounter {
    init(descriptorsArray: [DiscountedDiscriptor])
    func calculateDiscount(for: Discountable) -> Double
}
protocol Discountable {
    var itemId: Int { get }
    var price: Double { get }
}



