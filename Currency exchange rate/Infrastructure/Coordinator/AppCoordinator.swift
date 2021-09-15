//
//  AppCoordinator.swift
//  AppCoordinator
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import UIKit

final class AppCoordinator: CoordinatorProtocol {
    
    // MARK: - Variables
    private var window: UIWindow?
    private var navigationController: UINavigationController?
    
    // MARK: - Initialisation
    init(_ window: UIWindow?, navigationController: UINavigationController?) {
        self.window = window
        self.navigationController = navigationController
        
    }
    
    func start() {
        
        let vc = CurrencyViewController.instantiateFromStoryboard()
        vc.coordinator = self
       //navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(vc, animated: true)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    func popViewController() {
        navigationController?.popViewController(animated: true)
    }
    
}
