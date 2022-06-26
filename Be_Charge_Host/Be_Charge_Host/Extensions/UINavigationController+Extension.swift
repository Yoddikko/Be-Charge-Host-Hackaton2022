//
//  UINavigationController+Extension.swift
//  Be_Charge_Host
//
//  Created by Carmine Porricelli on 26/06/22.
//

import UIKit

// Permette di nascondere la NavBar .navigationBarHidden(true) senza perdere lo swipe per andare indietro
extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
