//
//  Challenge.swift
//  Challenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-10-17.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }

    /*
     
     Challenge: See if you can embed all these controls in a StackView like this.
 
     ┌────────StackView─────────┐
     │                          │
     │        offlineRow        │
     │                          │
     │      offlineSublabel     │
     │                          │   axis = vertical
     │       crossfadeView      │   distribution = fill
     │                          │   alignment = fill
     │        gaplessRow        │   spacing = 20
     │                          │
     │       hideSongsRow       │
     │                          │
     │     normalizationRow     │
     │                          │
     └──────────────────────────┘
     
     */
    func setupViews() {
        let stackView = makeStackView(withOrientation: .vertical)
        let offlineRow = RowView(title: "Offline", isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        let crossfadeView = CrossfadeView()

        let gaplessRow = RowView(title: "Gapless Playback", isOn: true)
        let hideSongsRow = RowView(title: "Hide Unplayable Songs", isOn: true)
        let normalizationRow = RowView(title: "Enable Audio Normalization", isOn: true)
        
        stackView.addArrangedSubview(offlineRow)
        stackView.addArrangedSubview(offlineSublabel)
        stackView.addArrangedSubview(crossfadeView)
        stackView.addArrangedSubview(gaplessRow)
        stackView.addArrangedSubview(hideSongsRow)
        stackView.addArrangedSubview(normalizationRow)
        
        view.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}



