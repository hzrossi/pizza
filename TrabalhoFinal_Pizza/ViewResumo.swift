//
//  ViewResumo.swift
//  TrabalhoFinal_Pizza
//
//  Created by Henrique Zuchetto Rossi on 10/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import UIKit

class ViewResumo: UIViewController {

	var tamanho:String = ""
	var massa:String = ""
	var queijo:String = ""
	var ingrediente1:String = ""
	var ingrediente2:String? = ""
	var ingrediente3:String? = ""
	var ingrediente4:String? = ""
	var ingrediente5:String? = ""
	
	@IBOutlet weak var txtViewResumo: UITextView!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        //print("Tamanho escolhido: \(tamanho)\nMassa escolhida: \(massa)\nQueijo escolhido: \(queijo)\nIngredientes: \(ingrediente1) + \(ingrediente2!) + \(ingrediente3!) + \(ingrediente4!) + \(ingrediente5!)")
		
		txtViewResumo.text = "Tamanho escolhido: \(tamanho)\nMassa escolhida: \(massa)\nQueijo escolhido: \(queijo)\nIngredientes:\n\t\(ingrediente1)"
		
		if (ingrediente2 != "") {
			txtViewResumo.text = txtViewResumo.text + "\n\t\(ingrediente2!)"
		}
		if (ingrediente3 != "") {
			txtViewResumo.text = txtViewResumo.text + "\n\t\(ingrediente3!)"
		}
		if (ingrediente4 != "") {
			txtViewResumo.text = txtViewResumo.text + "\n\t\(ingrediente4!)"
		}
		if (ingrediente5 != "") {
			txtViewResumo.text = txtViewResumo.text + "\n\t\(ingrediente5!)"
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
	@IBAction func enviarPedido(sender: AnyObject) {
		//cria o alerta
		let alerta = UIAlertController(title: "Pedido Enviado!", message: "Pedido enviado à cozinha", preferredStyle: UIAlertControllerStyle.Alert)
		alerta.addAction(UIAlertAction(title: "Novo Pedido", style: UIAlertActionStyle.Default, handler: novoPedido))
		
		//mostra o alerta
		self.presentViewController(alerta, animated: true, completion: nil)
	}
	
	func novoPedido(actionTarget: UIAlertAction) {
		self.navigationController?.popToRootViewControllerAnimated(true)
	}
}
