//
//  ViewController.swift
//  Tutorial
//
//  Created by a-voronov on 10/10/2018.
//  Copyright (c) 2018 a-voronov. All rights reserved.
//

import UIKit
import Tutorial

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Tutorial().exec()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

