//
//  CoordinatorProtocol.swift
//  CoordinatorProtocol
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import UIKit

protocol CoordinatorProtocol: AnyObject {
        
    init(_ window: UIWindow?, navigationController: UINavigationController?)
    
    func start()
    func popViewController()
}
