//
//  ViewController.swift
//  Signos
//
//  Created by Horacio Gomes dos Santos Junior on 10/06/22.
//

import UIKit

class ViewController: UITableViewController {

    var signos:[String] = []
    var significados:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configura signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        
        //configura significados
        significados.append("O ariano é uma pessoa cheia de energia e entusiasmo. Pioneiro e aventureiro, lhe encantam as metas, a liberdade e as idéias novas.")
        significados.append("Zeloso e possessivo, um cauro pode tender a ser inflexível e ressentido. As vezes os Touro pecam de ser cobiçosos e de permitir-se tudo.")
        significados.append("2 - ..")
        significados.append("3 - ..")
        significados.append("4 - ..")
        significados.append("5 - ..")
        significados.append("6 - ..")
        significados.append("7 - ..")
        significados.append("8 - ..")
        significados.append("9 - ..")
        significados.append("10 - ..")
        significados.append("11 - ..")
        significados.append("12 - ..")
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaDeReuso", for: indexPath)
        cell.textLabel?.text = signos[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alert = UIAlertController(title: "Significado", message: significados[indexPath.row], preferredStyle: .alert)
        
        let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(actionOk)
        
        present(alert, animated: true, completion: nil)
    }

}

