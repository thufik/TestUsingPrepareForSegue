//
//  ViewController.swift
//  ProjectToTestUINavigationController
//
//  Created by EquipeSuporteAplicacao on 4/26/18.
//  Copyright © 2018 EquipeSuporteAplicacao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAnotherView(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let anotherView = storyBoard.instantiateViewController(withIdentifier: "nav")
        
        let button = UIBarButtonItem(title: "teste", style: .done, target: nil, action: nil)
        
        anotherView.navigationItem.leftBarButtonItem = button
        
        self.present(anotherView, animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //if segue.destination == "nav" {
            var navigation = segue.destination as! UINavigationController
            var anotherView = navigation.viewControllers.first as! AnotherViewController
            anotherView.texto = "HUE"
        //}
    }
}

