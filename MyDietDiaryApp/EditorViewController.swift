//
//  EditorViewController.swift
//  MyDietDiaryApp
//
//  Created by Taku Yamada on 2021/03/24.
//

import UIKit

class EditorViewController: UIViewController {
    @IBOutlet weak var inputWeightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureWeightTextField()
    }
    
    @objc func didTapDone() {
        view.endEditing(true)
    }
    
    func configureWeightTextField() {
        let toolBarRect = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35)
        let toolBar = UIToolbar(frame: toolBarRect)
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(didTapDone))
        toolBar.setItems([doneItem], animated: true)
        inputWeightTextField.inputAccessoryView = toolBar
    }
}
