//
//  Discounter.swift
//  CashMashine
//
//  Created by Виктор Кулаков on 10/11/2018.
//  Copyright © 2018 Виктор Кулаков. All rights reserved.
//

import Foundation

//MARK: - Constructor & Injections

struct Discountant {
    private var descriptorArray: [DiscountedDiscriptor]
    
    init(descriptorsArray: [DiscountedDiscriptor]) {
        descriptorArray = descriptorsArray
    }
    
    
}

// MARK: - Implementation protocol of Discounter

extension Discountant: Discounter {
    func calculateDiscount(for discountable: Discountable) -> Double {
        guard let discountItem = descriptorArray.first(where: {$0.itemId == discountable.itemId})
            else {
                return 0
        }
        return discountable.price * discountItem.discountValue
    }
}

