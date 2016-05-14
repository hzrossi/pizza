//
//  ViewTamanho.swift
//  TrabalhoFinal_Pizza
//
//  Created by Henrique Zuchetto Rossi on 10/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import UIKit

class ViewTamanho: UIViewController {

	var tamanho:String = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let viewMassa = segue.destinationViewController as! ViewMassa
		viewMassa.tamanho = tamanho
	}
	
	@IBAction func escolherTamanho(sender: AnyObject) {
		tamanho = sender.titleLabel!!.text!
	}
}
