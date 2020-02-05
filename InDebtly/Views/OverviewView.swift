//
//  OverviewView.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/4/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import SwiftUI

struct OverviewView: View {
    var body: some View {
		ZStack(alignment: .center) {
			RadialGradient(gradient: Gradient(colors: [.orange, .red]), center: .center, startRadius: 3, endRadius: 750).edgesIgnoringSafeArea(.all)
			Text("InDebted")
				.scaledFont(name: Fonts.futuraBoldCondensed, size: 48)
				.foregroundColor(.white)
		}
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView()
    }
}
