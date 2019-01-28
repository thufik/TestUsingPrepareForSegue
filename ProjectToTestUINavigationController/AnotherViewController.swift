//
//  AnotherViewController.swift
//  ProjectToTestUINavigationController
//
//  Created by EquipeSuporteAplicacao on 4/26/18.
//  Copyright © 2018 EquipeSuporteAplicacao. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    var texto : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIBarButtonItem(title: self.texto, style: .done, target: nil, action: nil)
        
        //anotherView.navigationItem.leftBarButtonItem = button
        
        self.navigationItem.leftBarButtonItem = button
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue)
    }

}
