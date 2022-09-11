//
//  IdadeCachorroViewModel.swift
//  IdadeCachorroMvvm
//
//  Created by Fernanda Perovano on 11/09/22.
//

import Foundation

protocol MultiplicacaoDelegate {
    func exibe(resultadoMultiplicacao: String)
}

class IdadeCachorroViewModel {
    
    var delegate: MultiplicacaoDelegate?
    
    func calcularIdadeCachorroEmIdadeHumana(idade: String?) {
        guard let idade = idade else { return }
        if let idadeCachorro = Int(idade) {
            let resultadoIdade =  String(idadeCachorro * 7)
            delegate?.exibe(resultadoMultiplicacao: resultadoIdade)
            return
        }
}
}
