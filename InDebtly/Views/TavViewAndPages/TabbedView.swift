//
//  TabbedView.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/4/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import SwiftUI

struct TabbedView: View {
	@State var selectedIndex: Int

	var body: some View {
		TabView(selection: $selectedIndex) {

			OverviewView().tabItem {
				Image(systemName: selectedIndex == 1 ? "house.fill" : "house")
					.font(.largeTitle)
				Text("Home")
			}.tag(1)

			SavingsView().tabItem {
				Image(systemName: selectedIndex == 2 ? "chevron.up.square.fill" : "chevron.up.square")
					.font(.largeTitle)
				Text("Savings")
			}.tag(2)

			DebtView().tabItem {
				Image(systemName: selectedIndex == 3 ? "chevron.down.square.fill" : "chevron.down.square")
					.font(.largeTitle)
				Text("Debts")
			}.tag(3)

			SettingsView().tabItem {
				Image(systemName: "slider.horizontal.3")
					.font(.largeTitle)
				Text("Settings")
			}.tag(4)
		}.accentColor(getHighlight(num: selectedIndex)).edgesIgnoringSafeArea(.top)
    }

	private func getHighlight(num: Int) -> Color {
		switch num {
			case 1: return .blue
			case 2: return .green
			case 3: return .red
			default: return .orange
		}
	}
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
		TabbedView(selectedIndex: 4)
    }
}
