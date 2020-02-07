//
//  SavingsGoal.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/7/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import Foundation

class SavingsGoal: Goal {
	var goalTitle: String
	var goalCreatedAt: Date
	var goalUUID: UUID

	init(title: String) {
		self.goalTitle = title
		self.goalCreatedAt = Date()
		self.goalUUID = UUID()
	}
}
