//
//  ViewController.swift
//  CoreServicesSample
//
//  Created by Uğuralp ÖNBAŞLI on 7.01.2019.
//  Copyright © 2019 Uğuralp ÖNBAŞLI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabelOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    @IBAction func buttonAction(_ sender: UIButton) {
        let dic = UIReferenceLibraryViewController(term: textLabelOutlet.text as! String)
        dic.modalPresentationStyle = .popover // add this
        
        let popover = dic.popoverPresentationController
        popover?.sourceView = view
        popover?.sourceRect = CGRect(x: 32, y: 32, width: 64, height: 64)
        present(dic, animated: true)
    }
    

}

