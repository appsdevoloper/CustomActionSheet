//
//  ViewController.swift
//  CustomActionSheet
//
//  Created by Apple on 19/08/19.
//  Copyright © 2019 Revolut. All rights reserved.
//

//Example : https://stackoverflow.com/questions/32783933/showing-action-sheet-in-the-custom-cell-in-swift

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addAction(_ sender: Any) {
        
    }
    
    @IBAction func clickActionSheet(_ sender: Any) {
        let actionSheetAlertController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let cancelActionButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        actionSheetAlertController.addAction(cancelActionButton)
        
        let documentsActionButton = UIAlertAction(title: "Documents", style: .default, handler: {(action:UIAlertAction!) in
            print("Documents")
        })
        actionSheetAlertController.addAction(documentsActionButton)
        documentsActionButton.setValue(#imageLiteral(resourceName: "icon.png"), forKey: "image")
        documentsActionButton.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
        
        let cameraActionButton = UIAlertAction(title: "Camera", style: .default, handler:{(action:UIAlertAction!) in
            print("Camera")
        })
        actionSheetAlertController.addAction(cameraActionButton)
        cameraActionButton.setValue(#imageLiteral(resourceName: "icon.png"), forKey: "image")
        cameraActionButton.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
        
        let galleryActionButton = UIAlertAction(title: "Gallery ✓", style: .default, handler:{(action:UIAlertAction!) in
            print("Gallery")
        })
        actionSheetAlertController.addAction(galleryActionButton)
        galleryActionButton.setValue(#imageLiteral(resourceName: "icon.png"), forKey: "image")
        galleryActionButton.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
        
        actionSheetAlertController.view.tintColor = #colorLiteral(red: 0.317096545, green: 0.5791940689, blue: 0.3803742655, alpha: 1)
        self.present(actionSheetAlertController, animated: true, completion: nil)
    }
}

