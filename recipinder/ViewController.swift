//
//  ViewController.swift
//  recipinder
//
//  Created by Taufiq Widi on 04/03/21.
//

import UIKit
import PureLayout

class ViewController: UIViewController {

    lazy var avatar: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "avatar.jpg"))
        imageView.autoSetDimensions(to: CGSize(width: 128.0, height: 128.0))
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.cornerRadius = 64.0
        imageView.clipsToBounds = true
        return imageView
    }()

    lazy var upperView: UIView = {
        let view = UIView()
        view.autoSetDimension(.height, toSize: 128)
        view.backgroundColor = .gray
        return view
    }()

    lazy var segmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["Personal", "Social", "Resumè"])
        control.autoSetDimension(.height, toSize: 32.0)
        control.selectedSegmentIndex = 0
        control.layer.borderColor = UIColor.gray.cgColor
        control.tintColor = .gray
        return control
    }()

    lazy var editButton: UIButton = {
        let button = UIButton()
        button.setTitle("Edit", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.layer.cornerRadius = 4.0
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1.0
        button.tintColor = .gray
        button.backgroundColor = .clear
        button.autoSetDimension(.width, toSize: 96.0)
        button.autoSetDimension(.height, toSize: 32.0)
        return button
    }()

    func addSubviews() {
        self.view.backgroundColor = .white
        self.view.addSubview(upperView)
        self.view.addSubview(avatar)
        self.view.addSubview(segmentedControl)
        self.view.addSubview(editButton)
    }

    func setupConstraints() {
        avatar.autoAlignAxis(toSuperviewAxis: .vertical)
        avatar.autoPinEdge(toSuperviewEdge: .top, withInset: 64.0)
        upperView.autoPinEdge(toSuperviewEdge: .left)
        upperView.autoPinEdge(toSuperviewEdge: .right)
        upperView.autoPinEdgesToSuperviewEdges(with: .zero, excludingEdge: .bottom)
        segmentedControl.autoPinEdge(toSuperviewEdge: .left, withInset: 8.0)
        segmentedControl.autoPinEdge(toSuperviewEdge: .right, withInset: 8.0)
        segmentedControl.autoPinEdge(.top, to: .bottom, of: avatar, withOffset: 16.0)
        editButton.autoPinEdge(.top, to: .bottom, of: upperView, withOffset: 16.0)
        editButton.autoPinEdge(toSuperviewEdge: .right, withInset: 8.0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupConstraints()
        // Do any additional setup after loading the view.
    }


}

