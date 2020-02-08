//
//  ExampleData.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/7/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import Foundation

class ExampleData {
	var savingGoals: [SavingsGoal] = [
		SavingsGoal(title: "New House"),
		SavingsGoal(title: "Car"),
		SavingsGoal(title: "Retirement"),
		SavingsGoal(title: "iPhone 12 Pro Max")
	]
	var debtGoals: [DebtGoal] = [
		DebtGoal(title: "AmexCard"),
		DebtGoal(title: "BankCar"),
		DebtGoal(title: "CarLoan"),
		DebtGoal(title: "Home Loan")
	]

	var testDataSavingsGoal = SavingsGoal(title: "Wonderwall")
	var testDataDebtGoal = DebtGoal(title: "Highway to Hell")
}
