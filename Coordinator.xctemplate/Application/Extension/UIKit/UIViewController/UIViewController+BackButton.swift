//
//  UIViewController+BackButton.swift
//  Cleaning
//
//  Created by Anna Dudina on 22.02.2021
//

import UIKit

extension UIViewController {
    
    func showBackButton() {
        self.navigationItem.hidesBackButton = false
        self.navigationItem.leftBarButtonItem?.customView?.isHidden = false
    }
    
    func hideBackButton() {
        self.navigationItem.hidesBackButton = true
        self.navigationItem.leftBarButtonItem?.customView?.isHidden = true
    }
    
    func addClosePresentButton(selector: Selector) {
        let presentImage = UIImage(named: "__IMAGE__NAME__")
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: presentImage,
                                                                 style: UIBarButtonItem.Style.plain,
                                                                 target: self,
                                                                 action: selector)
    }
    
    func addBackButton() {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        let btnBackNavigationBar = UIButton(type: .custom)
        btnBackNavigationBar.setImage(UIImage(named: "__IMAGE__NAME__"), for: .normal)
        btnBackNavigationBar.addTarget(self, action: #selector(didTouchUpButtonBack), for: .touchUpInside)
        btnBackNavigationBar.bounds = CGRect(x: 0, y: 0, width: 44, height: 44)
        btnBackNavigationBar.contentHorizontalAlignment = .left
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btnBackNavigationBar)
    }
    
    @objc func didTouchUpButtonBack() {
        self.navigationController?.popViewController(animated: true)
    }
    
}

