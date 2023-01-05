//
//  ViewController.swift
//  absdNavBarAppProgrammly
//
//  Created by Aisultan Zhaksytayev on 05.01.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        generateTabBar()
    }
    private func generateTabBar() {
        viewControllers = [
            generateVC(viewController: HomeViewController(), title: "Home", image: UIImage(systemName: "house.fill")),
            generateVC(viewController: PersonViewController(), title: "Personal Info", image: UIImage(systemName: "person.fill")),
            generateVC(viewController: SettingsViewController(), title: "Settings", image: UIImage(systemName: "slider.horizontal1.3"))
        ]
        
    }
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
}

