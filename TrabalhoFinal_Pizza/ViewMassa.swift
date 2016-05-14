//
//  ViewMassa.swift
//  TrabalhoFinal_Pizza
//
//  Created by Henrique Zuchetto Rossi on 10/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import UIKit

class ViewMassa: UIViewController {

	var tamanho:String = ""
	var massa:String = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()

		//print("Tamanho Escolhido: \(tamanho)")
    }

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let viewQueijo = segue.destinationViewController as! ViewQueijo
		viewQueijo.tamanho = tamanho
		viewQueijo.massa = massa
	}
	
	@IBAction func escolherMassa(sender: AnyObject) {
		massa = sender.titleLabel!!.text!
	}

}
