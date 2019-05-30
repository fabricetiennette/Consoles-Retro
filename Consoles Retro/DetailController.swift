//
//  DetailController.swift
//  Consoles Retro
//
//  Created by Fabrice Etiennette on 24/05/2019.
//  Copyright © 2019 Fabrice Etiennette. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var retroIV: UIImageView!
    
    @IBOutlet weak var dureeLabel: UILabel!
    
    
    @IBOutlet weak var textField: UITextView!
    var console: Console?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard console != nil else { return }
        title = console!.nom
        titleLabel.text = console!.nom
        retroIV.image = console!.image
        dureeLabel.text = console!.cycleDevie()
        textField.text = console!.desc
        view.backgroundColor = console!.couleur

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }

}
