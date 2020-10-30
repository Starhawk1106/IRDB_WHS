//
//  ViewController.swift
//  IRDB_WHS
//
//  Created by William Stanley on 10/28/20.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailItem: Entry? {
        didSet {
            configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func configureView()
    {
        
    }

}

