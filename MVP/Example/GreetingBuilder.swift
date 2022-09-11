//
//  GreetingBuilder.swift
//  MVP
//
//  Created by Dmitriy Akhmerov on 11.09.2022.
//

import UIKit

final class GreetingBuilder {

	func build() -> UIViewController {
		let model = GreetingModel(modelText: "HELLO WORLD")
		let view = GreetingViewController()
		let presenter = GreetingPresenter(view: view, model: model)
		view.presenter = presenter

		return view
	}
}
