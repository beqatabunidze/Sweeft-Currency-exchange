//
//  BaseViewController.swift
//  AppCoordinator
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import UIKit

class BaseViewController: UIViewController, Storyboarded, CoordinatorDelegate {
    var coordinator: CoordinatorProtocol?
}
