//
//  OverviewView.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/4/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import SwiftUI

struct OverviewView: View {

	@State private var enabled: Bool = false

    var body: some View {
		ZStack() {
			RadialGradient(gradient: Gradient(colors: [.blue, .red]), center: .bottomTrailing, startRadius: 15, endRadius: 1000).edgesIgnoringSafeArea(.all)
			VStack(alignment: .center) {
				Text(AppConstants.appName)
					.padding([.top, .bottom], 25)
					.padding([.leading, .trailing], 10)
					.scaledFont(name: Fonts.futuraBoldCondensed, size: 48)
					.foregroundColor(.white)
					.cornerRadius(24)
			}
		}
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView()
    }
}
