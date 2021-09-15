//
//  CoordinatorDelegate.swift
//  CoordinatorDelegate
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import UIKit

protocol CoordinatorDelegate: UIViewController {
    var coordinator: CoordinatorProtocol? { get set }
}
