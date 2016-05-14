//
//  ViewQueijo.swift
//  TrabalhoFinal_Pizza
//
//  Created by Henrique Zuchetto Rossi on 10/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import UIKit

class ViewQueijo: UIViewController {

	var tamanho:String = ""
	var massa:String = ""
	var queijo:String = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()

		//print("Tamanho escolhido: \(tamanho)\nMassa escolhida: \(massa)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let viewIngredientes = segue.destinationViewController as! ViewIngredientes
		viewIngredientes.tamanho = tamanho
		viewIngredientes.massa = massa
		viewIngredientes.queijo = queijo
	}
	
	@IBAction func escolherQueijo(sender: AnyObject) {
		queijo = sender.titleLabel!!.text!
	}
	
}
