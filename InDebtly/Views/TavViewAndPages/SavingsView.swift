
//  SavingsView.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/4/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import SwiftUI

struct SavingsView: View {

	var dateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "YYYY-MM-dd HH:mm:ss +0800"
		return formatter
	}()

	init() {
		UINavigationBarAppearance().backgroundColor = .clear
	}

	var body: some View {
		NavigationView {
			List(ExampleData().savingGoals, id: \.goalUUID) { item in
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
			}.navigationBarTitle(Text("Savings"))
		}.background(Color.pink)
	}
}

struct SavingsView_Previews: PreviewProvider {
    static var previews: some View {
        SavingsView()
    }
}
