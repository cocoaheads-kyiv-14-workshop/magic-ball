//
//  ViewController.swift
//  MagicBall
//
//  Created by Alexander Voronov on 10/9/18.
//  Copyright © 2018 Oleksandr Voronov. All rights reserved.
//

import UIKit
import RandomGenerator
import Tutorial

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        RandomGenerator().exec()

        print("--")

        Tutorial().exec()
    }


}

