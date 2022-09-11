//
//  GreetingViewController.swift
//  MVP
//
//  Created by Dmitriy Akhmerov on 11.09.2022.
//

import UIKit

protocol GreetingViewProtocol: AnyObject {

	func setGreeting(_ greeting: String)
}

class GreetingViewController: UIViewController, GreetingViewProtocol {

	var presenter: GreetingPresenterProtcool?

	private lazy var showGreetingButton: UIButton = {
		let button = UIButton()
		button.backgroundColor = .lightGray
		button.setTitle("Press", for: .normal)
		button.layer.cornerRadius = 15
		button.translatesAutoresizingMaskIntoConstraints = false
		button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

		return button
	}()

	let greetingLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.textAlignment = .center
		label.translatesAutoresizingMaskIntoConstraints = false

		return label
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		setupUI()
	}

	@objc func didTapButton() {
		presenter?.showGreeting()
	}

	func setGreeting(_ greeting: String) {
		greetingLabel.text = greeting
	}

	private func setupUI() {
		view.addSubview(showGreetingButton)
		view.addSubview(greetingLabel)

		NSLayoutConstraint.activate([
			showGreetingButton.heightAnchor.constraint(equalToConstant: 30),
			showGreetingButton.widthAnchor.constraint(equalToConstant: 100),
			showGreetingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			showGreetingButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),

			greetingLabel.widthAnchor.constraint(equalTo: view.widthAnchor),
			greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			greetingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
		])
	}
}
