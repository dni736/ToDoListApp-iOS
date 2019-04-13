//
//  ViewController.swift
//  ToDoList
//
//  Created by Dimkus on 12/04/2019.
//  Copyright © 2019 Wandio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var item: Item?
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var tdItemLabel: UILabel!
    @IBOutlet weak var tdItemTextField: UITextField!
    

    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
        
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        }
        else {
            navigationController!.popViewController(animated: true)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if sender as AnyObject? === saveButton{
            let name = tdItemTextField.text ?? ""
            item = Item(name: name)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = item {
            tdItemTextField.text = item.name
        }
        
    }


}

