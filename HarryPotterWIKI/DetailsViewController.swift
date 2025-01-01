//
//  DetailsViewController.swift
//  HarryPotterWIKI
//
//  Created by Aya on 29/12/2024.
//

import UIKit

class DetailsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide the default back button
        self.navigationItem.hidesBackButton = true
        
        // Create a custom UIButton
        let backButton = UIButton(type: .system)
        backButton.setImage(UIImage(systemName: "arrow.left.circle.fill"), for: .normal) // Use your desired image
        backButton.tintColor = .white // Change the color
        backButton.frame = CGRect(x: 0, y: 0, width: 40, height: 40) // Set the size
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        // Wrap the UIButton in a UIBarButtonItem
        let barButtonItem = UIBarButtonItem(customView: backButton)
        self.navigationItem.leftBarButtonItem = barButtonItem
    }
    
    @objc func backButtonTapped() {
        // Navigate back
        self.navigationController?.popViewController(animated: true)
    }
}


/*
class Line: UIView {

    var line = UIBezierPath()

    func drawLine() {
        // Move the line a little down by adding an offset (e.g., 20 points)
        let offset: CGFloat = 50
        line.move(to: CGPoint(x: 0, y: bounds.height / 2 + offset))
        line.addLine(to: CGPoint(x: bounds.width, y: bounds.height / 2 + offset))
        UIColor.white.setStroke()
        line.lineWidth = 1
        line.stroke()
    }

    override func draw(_ rect: CGRect) {
        drawLine()
    }
}
*/
