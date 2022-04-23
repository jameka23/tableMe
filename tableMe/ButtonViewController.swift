//
//  ButtonViewController.swift
//  tableMe
//
//  Created by Jameka Echols on 4/22/22.
//

import Foundation
import UIKit

class ButtonViewController: UIViewController {
    var button = UIButton(type: .system)

    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        configureButton()
    }
    
    func configureButton(){
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Click me", for: .normal)
        button.addTarget(self, action: #selector(showTable), for: .touchUpInside)
        button.center = self.view.center
    }
    
    @objc private func showTable(){
        print("Hello there")
    }
    

}
