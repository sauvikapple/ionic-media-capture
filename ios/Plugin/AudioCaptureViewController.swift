//
//  AudioCaptureViewController.swift
//  Plugin
//
//  Created by Sauvik Dolui on 23/11/21.
//  Copyright © 2021 Max Lynch. All rights reserved.
//

import UIKit

class AudioCaptureViewController: UIViewController {

    let duration: TimeInterval
    convenience init(duration: TimeInterval) {
        self.init(nibName: nil, bundle: nil, duration: duration)
    }
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?, duration: TimeInterval) {
        self.duration = duration
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        print("AudioCaptureViewController view did load")
    }
}
