//
//  ViewController.swift
//  IdadeCachorroMvvm
//
//  Created by Fernanda Perovano on 10/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cachorroImage: UIImageView!
    @IBOutlet weak var perguntaIdadeLabel: UILabel!
    @IBOutlet weak var idadeCachorroTextField: UITextField!
    @IBOutlet weak var resultadoIdadeButton: UIButton!
    @IBOutlet weak var idadeHumanoLabel: UILabel!
    
    var viewModel = IdadeCachorroViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        idadeCachorroTextField.delegate = self
    }

    @IBAction func calcularResulatdoButton(_ sender: Any) {
        viewModel.calcularIdadeCachorroEmIdadeHumana(idade: idadeCachorroTextField.text)
    }
}

extension ViewController: MultiplicacaoDelegate {
    func exibe(resultadoMultiplicacao: String) {
        idadeHumanoLabel.text = resultadoMultiplicacao
        idadeCachorroTextField.text = ""
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
