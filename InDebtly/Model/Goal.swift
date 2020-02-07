//
//  Goal.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/6/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import Foundation

protocol Goal {
	var goalTitle: String { get set }
	var goalCreatedAt: Date { get }
	var goalUUID: UUID { get }
}
