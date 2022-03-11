//
//  ViewController.swift
//  DependencyInjection
//
//  Created by Aaryaman Saini on 10/03/22.
//

import UIKit

import MyAppUIKit

import MyAPIKit

extension APICaller: DataFetchable {}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // https://iosaacademy.io/api/v1/courses/index.php
        
        self.view.backgroundColor = .systemPink
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        view.addSubview(button)
        button.backgroundColor = .systemBlue
        button.setTitle("Tap Me", for: .normal)
        button.center = view.center
        button.setTitleColor(.white, for: .normal)
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        let vc = CoursesViewController(dataFetchable: APICaller.shared)
        present(vc, animated: true)
    }


}

