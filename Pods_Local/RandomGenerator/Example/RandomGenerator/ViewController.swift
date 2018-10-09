//
//  ViewController.swift
//  RandomGenerator
//
//  Created by a-voronov on 10/09/2018.
//  Copyright (c) 2018 a-voronov. All rights reserved.
//

import UIKit
import RandomGenerator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        RandomGenerator().exec()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

