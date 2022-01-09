//
//  GreetingModels.swift
//  Patterns
//
//  Created by Dmitriy Akhmerov on 09.01.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

typealias GreetingRequest = Greeting.ShowGreeting.Request
typealias GreetingResponse = Greeting.ShowGreeting.Response
typealias GreetingViewModel = Greeting.ShowGreeting.ViewModel

enum Greeting {

	// MARK: Набор юзкейсов для сцены Greeting
	enum ShowGreeting {

		// Запрос (между ViewController и Interactor)
		struct Request {

		}

		// Ответ (между Interactor и Presenter)
		struct Response {
			let name: String
			let surname: String
		}

		// Данные (между Presenter и ViewController)
		struct ViewModel {
			let greeting: String
		}
	}
}