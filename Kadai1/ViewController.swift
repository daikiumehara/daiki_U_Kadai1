//
//  ViewController.swift
//  Kadai1
//
//  Created by daiki umehara on 2021/05/19.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var answerLabel: UILabel!
    @IBOutlet private var numberTextFields: [UITextField]!

    @IBAction private func calcButtonDidTapped(_ sender: Any) {
        answerLabel.text = String(
            numberTextFields
                .map { Int($0.text ?? "") ?? 0 }
                .reduce(0, +)
        )
    }
}
