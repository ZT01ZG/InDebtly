//
//  DebtView.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/4/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import SwiftUI

struct DebtView: View {

	var dateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "YYYY-MM-dd HH:mm:ss +0800"
		return formatter
	}()

	var numFormatter: NumberFormatter = {
		let formatter = NumberFormatter()
		formatter.numberStyle = .currency
		return formatter
	}()

	init() {
		UITableView.appearance().backgroundColor = .systemGray6
		UITableViewCell.appearance().backgroundColor = .systemGray6
		UINavigationBar.appearance().backgroundColor = .systemGray3
	}

	var body: some View {
		NavigationView {
			List(ExampleData().debtGoals, id: \.goalUUID) { item in
				NavigationLink(destination: GoalDetailView(goal: item)) {
					ZStack {
						VStack(alignment: .leading) {
							Text(item.goalTitle)
								.scaledFont(name: Fonts.avenirNextBold, size: 20)
								.foregroundColor(.primary)
							Text("\(self.dateFormatter.string(from: item.goalCreatedAt))")
								.scaledFont(name: Fonts.avenirNextMediumItalic, size: 12)
								.foregroundColor(.secondary)
						}
					}
				}
			}.navigationBarTitle(Text("Debts"))
				.background(Color.blue)
		}
	}
}

struct DebtView_Previews: PreviewProvider {
    static var previews: some View {
        DebtView()
    }
}
