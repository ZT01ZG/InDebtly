//
//  DebtGoal.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/7/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import Foundation

class DebtGoal: Goal {
	var goalTitle: String
	var goalCreatedAt: Date
	var goalUUID: UUID

	init(title: String) {
		self.goalTitle = title
		self.goalCreatedAt = Date()
		self.goalUUID = UUID()
	}

	func formatDate(date: Date) -> String {
		ISO8601DateFormatter().string(from: date)
	}
}
