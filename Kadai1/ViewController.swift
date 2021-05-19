//
//  ViewController.swift
//  Kadai1
//
//  Created by daiki umehara on 2021/05/19.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var answerLabel: UILabel!
    @IBOutlet private var firstTextField: UITextField!
    @IBOutlet private var secondTextField: UITextField!
    @IBOutlet private var thirdTextField: UITextField!
    @IBOutlet private var fourthTextField: UITextField!
    @IBOutlet private var fifthTextField: UITextField!
    private lazy var textFieldArray = [firstTextField, secondTextField, thirdTextField, fourthTextField, fifthTextField]
    private func getTextFieldValue(_ str: String?) -> Int {
        guard let str = str else { return 0 }
        if str.isEmpty {
            return 0
        } else {
            return Int(str)!
        }
    }
    @IBAction private func calcButtonDidTapped(_ sender: Any) {
        var sum = 0
        for textField in textFieldArray {
            sum += getTextFieldValue(textField?.text)
        }
        answerLabel.text = String(sum)
    }
}
