//
//  GreetingPresenter.swift
//  MVP
//
//  Created by Dmitriy Akhmerov on 11.09.2022.
//

protocol GreetingPresenterProtcool {

	init(view: GreetingViewProtocol?, model: GreetingModel)
	func showGreeting()
}

final class GreetingPresenter: GreetingPresenterProtcool {

	weak var view: GreetingViewProtocol?

	let model: GreetingModel

	init(view: GreetingViewProtocol?, model: GreetingModel) {
		self.view = view
		self.model = model
	}

	func showGreeting() {
		let greeting = "This is text from model: \n\(model.modelText)"
		view?.setGreeting(greeting)
	}
}
