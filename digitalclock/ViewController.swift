//
//  ViewController.swift
//  digitalclock
//
//  Created by Waleed Afifi on 15/12/2019.
//  Copyright © 2019 Waleed Afifi. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTime: UILabel!
        
    @IBOutlet weak var dateUILabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localization()
        setupData()
        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNeedsStatusBarAppearanceUpdate()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func tick() {
        lblTime.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
        
        dateUILabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .none)
    }
}

extension ViewController {
    func setupView() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
    }
    
    func localization() { }
    
    func setupData() { }
    
    func fetchData() { }
}
