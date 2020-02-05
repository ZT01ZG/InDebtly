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
				Spacer()
				Text("InDebted")
					.scaledFont(name: Fonts.futuraBoldCondensed, size: 50)
					.foregroundColor(.white)
				Spacer()
				ActivityIndicatorView()
					.frame(width: 150, height: 150)
				Spacer()
				Button(action: {
					print("Login Button")
				}) {
					Text("Unlock")
						.padding([.top, .bottom], 24)
						.padding([.leading, .trailing], 48)
						.foregroundColor(.white)
						.scaledFont(name: Fonts.futuraMedCondensed, size: 36)
						.background(Color(Primaries.NavyBlue))
						.cornerRadius(24)

				}
			}
		}
    }
}

struct MainInterfaceView_Previews: PreviewProvider {
    static var previews: some View {
        MainInterfaceView()
    }
}
