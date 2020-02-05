//
//  MainInterfaceView.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/2/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import SwiftUI

struct MainInterfaceView: View {

	var body: some View {
		ZStack {
			Color(Primaries.SkyBlue).edgesIgnoringSafeArea(.all)
			VStack(alignment: .center) {
				Text("InDebted")
					.scaledFont(name: Fonts.futuraBoldCondensed, size: 50)
					.foregroundColor(.white)
				ActivityIndicatorView()
					.frame(width: 150, height: 150)
				
			}
		}
    }
}

struct MainInterfaceView_Previews: PreviewProvider {
    static var previews: some View {
        MainInterfaceView()
    }
}
