//
//  ViewIngredientes.swift
//  TrabalhoFinal_Pizza
//
//  Created by Henrique Zuchetto Rossi on 10/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import UIKit

class ViewIngredientes: UIViewController, UITextFieldDelegate {

	var tamanho:String = ""
	var massa:String = ""
	var queijo:String = ""
	var ingrediente1:String = ""
	var ingrediente2:String? = ""
	var ingrediente3:String? = ""
	var ingrediente4:String? = ""
	var ingrediente5:String? = ""
	
	@IBOutlet weak var svIngredientes: UIScrollView!
	
	@IBOutlet weak var txtIngredientes1: UITextField!
	@IBOutlet weak var txtIngredientes2: UITextField!
	@IBOutlet weak var txtIngredientes3: UITextField!
	@IBOutlet weak var txtIngredientes4: UITextField!
	@IBOutlet weak var txtIngredientes5: UITextField!
	
    override func viewDidLoad() {
        super.viewDidLoad()

		txtIngredientes1.delegate = self
		txtIngredientes2.delegate = self
		txtIngredientes3.delegate = self
		txtIngredientes4.delegate = self
		txtIngredientes5.delegate = self
		
		//print("Tamanho escolhido: \(tamanho)\nMassa escolhida: \(massa)\nQueijo escolhido: \(queijo)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

	//função para passar os valores para a próxima tela antes de trocar
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		//verifica se colocou o primeiro ingrediente
		if (ingrediente1 == "") {
			//cria o alerta
			let alerta = UIAlertController(title: "Aviso!", message: "Preencha o ingrediente 1", preferredStyle: UIAlertControllerStyle.Alert)
			alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
			
			//mostra o alerta
			self.presentViewController(alerta, animated: true, completion: nil)
		}
		else {
			let viewResumo = segue.destinationViewController as! ViewResumo
			viewResumo.tamanho = tamanho
			viewResumo.massa = massa
			viewResumo.queijo = queijo
			viewResumo.ingrediente1 = ingrediente1
			viewResumo.ingrediente2 = ingrediente2
			viewResumo.ingrediente3 = ingrediente3
			viewResumo.ingrediente4 = ingrediente4
			viewResumo.ingrediente5 = ingrediente5
		}
	}
	
	//guarda os ingredientes nas variáveis
	@IBAction func escolherIngredientes(sender: AnyObject) {
		if (txtIngredientes1.text != "") {
			ingrediente1 = txtIngredientes1.text!
		}
		if (txtIngredientes2.text != "") {
			ingrediente2 = txtIngredientes2.text!
		}
		if (txtIngredientes3.text != "") {
			ingrediente3 = txtIngredientes3.text!
		}
		if (txtIngredientes4.text != "") {
			ingrediente4 = txtIngredientes4.text!
		}
		if (txtIngredientes5.text != "") {
			ingrediente5 = txtIngredientes5.text!
		}
	}
	
	//faz o teclado não cobrir a última caixa de texto
	@IBAction func textFieldDidBeginEditing(textField: UITextField) {
		var ponto:CGPoint
		ponto = CGPointMake(0, textField.frame.origin.y-150)
		self.svIngredientes.setContentOffset(ponto, animated: true)
	}
	
	//faz o scroll retornar ao tamanho total ao terminar de editar o texto
	@IBAction func textFieldDidEndEditing(textField: UITextField) {
		self.svIngredientes.setContentOffset(CGPointZero, animated: true)
	}
	
	@IBAction func textFieldDoneEdit(sender: UITextField) {
		sender.resignFirstResponder() //faz esconder o teclado
	}
	
	//esconde o teclado quando toca qualquer parte da tela
	@IBAction func backgroundTap(sender: UIControl) {
		txtIngredientes1.resignFirstResponder()
		txtIngredientes2.resignFirstResponder()
		txtIngredientes3.resignFirstResponder()
		txtIngredientes4.resignFirstResponder()
		txtIngredientes5.resignFirstResponder()
	}
	
}
