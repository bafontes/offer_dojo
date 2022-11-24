//
//  CutomTabbarController.swift
//  offers_dojo
//
//  Created by Bruno Andres Fontes on 22/11/22.
//

import UIKit

class CustomTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    func setUI() {
        tabBar.backgroundColor = UIColor.white
        let firstController = UIViewController()
        firstController.tabBarItem = UITabBarItem(title: "Activo", image: UIImage(named: "icon1"), selectedImage: nil)
        firstController.view.backgroundColor = .yellow

        let secondController = OffersViewController()
        secondController.title = "Recorridos Disponibles"
        secondController.tabBarItem = UITabBarItem(title: "Disponibles", image: UIImage(named: "icon2"), selectedImage: UIImage(named: "icon1selected"))
        let navigationController = UINavigationController()
        navigationController.viewControllers = [secondController]

        let thirdController = UIViewController()
        thirdController.view.backgroundColor = .orange
        thirdController.tabBarItem = UITabBarItem(title: "Confirmados", image: UIImage(named: "icon3"), selectedImage: nil)
        let fourthController = UIViewController()
        fourthController.view.backgroundColor = .cyan
        fourthController.tabBarItem = UITabBarItem(title: "perfil", image: UIImage(named: "icon4"), selectedImage: nil)
        
        self.viewControllers = [firstController, navigationController, thirdController, fourthController]
    }
}
