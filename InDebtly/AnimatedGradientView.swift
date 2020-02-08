//
//  AnimatedGradientView.swift
//  InDebtly
//
//  Created by Zachary Hagman on 2/8/20.
//  Copyright © 2020 Rogue Spork, LLC. All rights reserved.
//

import SwiftUI

struct AnimatedGradientView3: View {
	@State var value: CGFloat = 0
	@State var gradient1 = [UIColor.red, UIColor.purple]
	@State var gradient2 = [UIColor.purple, UIColor.orange]

	var body: some View {

		Circle()
			.modifier(AnimatableGradientModifier(from: self.gradient1, to: self.gradient2, interpolatedValue: self.value))
			.onTapGesture {
				withAnimation (.easeInOut(duration: 3)){
					if (self.value<1) {
						// animate there
						self.value = 1
					}
					else {
						// animate back
						self.value = 0
					}
				}
		}
	}
}

struct AnimatableGradientModifier: AnimatableModifier {
	let from: [UIColor]
	let to: [UIColor]
	var interpolatedValue: CGFloat = 0

	var animatableData: CGFloat {
		get { interpolatedValue }
		set { interpolatedValue = newValue }
	}

	func body(content: Content) -> some View {
		var gColors = [Color]()

		for i in 0..<from.count {
			gColors.append(colorMixer(c1: from[i], c2: to[i], interpolatedValue: interpolatedValue))
		}

		return RoundedRectangle(cornerRadius: 8)
			.fill(LinearGradient(gradient: Gradient(colors: gColors),
								 startPoint: UnitPoint(x: 0, y: 0),
								 endPoint: UnitPoint(x: 0, y: 1)))
			.frame(width: 256, height: 256)
	}

	func colorMixer(c1: UIColor, c2: UIColor, interpolatedValue: CGFloat) -> Color {
		guard let cc1 = c1.cgColor.components else { return Color(c1) }
		guard let cc2 = c2.cgColor.components else { return Color(c1) }

		// messing with interpolated value, creating waves
		let alteredValue = sin(8.5*interpolatedValue*CGFloat.pi)*0.1 + interpolatedValue

		// computing interpolated color channels based on the value (0..1)
		let r = cc1[0]*alteredValue + cc2[0]*(1.0 - alteredValue)
		let g = cc1[1]*alteredValue + cc2[1]*(1.0 - alteredValue)
		let b = cc1[2]*alteredValue + cc2[2]*(1.0 - alteredValue)

		return Color(red: Double(r), green: Double(g), blue: Double(b))
	}
}

struct AnimatedGradientView1: View {

	@State var gradient = [Color.red, Color.purple, Color.orange]
	@State var startPoint = UnitPoint(x: 0, y: 0)
	@State var endPoint = UnitPoint(x: 0, y: 2)

	var body: some View {
		RoundedRectangle(cornerRadius: 8)
			.fill(LinearGradient(gradient: Gradient(colors: self.gradient), startPoint: self.startPoint, endPoint: self.endPoint))
			.frame(width: 256, height: 256)
			.onTapGesture {
				withAnimation (.easeInOut(duration: 3)){
					self.startPoint = UnitPoint(x: 1, y: -1)
					self.endPoint = UnitPoint(x: 0, y: 1)
				}
		}
	}
}

extension Color {
	static func random()->Color {
		let r = Double.random(in: 0 ... 1)
		let g = Double.random(in: 0 ... 1)
		let b = Double.random(in: 0 ... 1)
		return Color(red: r, green: g, blue: b)
	}
}

struct AnimatedGradientView4: View {
	@State private var gradientA: [Color] = [.red, .purple]
	@State private var gradientB: [Color] = [.red, .purple]

	@State private var firstPlane: Bool = true

	func setGradient(gradient: [Color]) {
		if firstPlane {
			gradientB = gradient
		}
		else {
			gradientA = gradient
		}
		firstPlane = !firstPlane
	}

	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 8)
				.fill(LinearGradient(gradient: Gradient(colors: self.gradientA), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 0, y: 1)))
			RoundedRectangle(cornerRadius: 8)
				.fill(LinearGradient(gradient: Gradient(colors: self.gradientB), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 0, y: 1)))
				.opacity(self.firstPlane ? 0 : 1)
		}
		.frame(width: 256, height: 256)
		.onTapGesture {
			withAnimation(.spring()) {
				self.setGradient(gradient: [Color.random(), Color.random()])
			}
		}
	}
}
