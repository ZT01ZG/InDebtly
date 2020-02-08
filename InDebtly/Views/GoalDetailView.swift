//
//  GoalDetailView.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/7/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import SwiftUI

struct GoalDetailView: View {
	@State var goal: Goal

    var body: some View {
		Text(goal.goalTitle)
    }
}

struct GoalDetailView_Previews: PreviewProvider {
    static var previews: some View {
		GoalDetailView(goal: ExampleData().testDataSavingsGoal)
    }
}
