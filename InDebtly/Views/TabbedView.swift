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
				Image(systemName: selectedIndex == 0 ? "house" : "house.fill")
				Text("Home")
			}.tag(1)

			SavingsView().tabItem {
				Image(systemName: selectedIndex == 1 ? "chevron.up.square" : "chevron.up.square.fill")
				Text("Savings")
			}.tag(2)

			DebtView().tabItem {
				Image(systemName: "chevron.down.square.fill")
				Text("Debts")
			}.tag(3)

			SettingsView().tabItem {
				Image(systemName: "slider.horizontal.3")
				Text("Settings")
			}.tag(4)
		}.accentColor(.pink).edgesIgnoringSafeArea(.top)
    }
}

//struct TabbedView_Previews: PreviewProvider {
//    static var previews: some View {
//		TabbedView(selectedIndex: 2)
//    }
//}
