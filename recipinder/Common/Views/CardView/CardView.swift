//
//  CardView.swift
//  recipinder
//
//  Created by Taufiq Widi on 05/03/21.
//

import UIKit
import SnapKit

final class CardView: UIStackView {
    var recipeImage: UIImageView = {
        var image = UIImageView()
        return image
    }()
    var contentText: UIStackView = {
        var stackView = UIStackView()
        return stackView
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        return label
    }()
    var descLabel: UILabel = {
        var label = UILabel()
        return label
    }()

    required init(coder: NSCoder) {
        super.init(coder: coder)
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        commonInit()
    }

    init() {
        super.init(frame: .zero)
        self.commonInit()
    }

    private func commonInit(){
        registerViews()
        configureLayout()
    }

    private func registerViews(){
        contentText.addSubview(titleLabel)
        contentText.addSubview(descLabel)
        self.addSubview(recipeImage)
        self.addSubview(contentText)
    }

    private func configureContainer(){
        self.axis = .vertical
        self.alignment = .fill
        self.distribution = .fillProportionally
        self.backgroundColor = .white
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.gray.cgColor
    }

    private func configureImage(){
        recipeImage.image = UIImage(named: "avatar.jpg")
        recipeImage.contentMode = .scaleAspectFill
        recipeImage.snp.makeConstraints { (make) in
            make.width.equalTo(self)
            make.height.equalTo(self).multipliedBy(0.85)
        }
    }

    private func configureContentText(){
        contentText.alignment = .fill
        contentText.axis = .vertical
        contentText.distribution = .fillProportionally
        contentText.backgroundColor = .white
        titleLabel.text = "Taufiq Widi"
        descLabel.text = "Frontend Eng."
        contentText.snp.makeConstraints { (make) in
            make.bottom.equalTo(self)
            make.width.equalTo(self)
            make.height.equalTo(self).multipliedBy(0.15)
        }
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(5)
            make.left.equalToSuperview().inset(10)
        }
        descLabel.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().inset(5)
            make.left.equalToSuperview().inset(10)
        }
    }

    private func configureLayout(){
        configureContainer()
        configureImage()
        configureContentText()
    }

    func applyConstraints(in view: UIView) {
        self.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
            make.width.equalTo(view).inset(20)
            make.height.equalTo(view).multipliedBy(0.65)
        }
    }
}

#if DEBUG
import SwiftUI

struct CardViewRepresentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // leave this empty
    }

    class CardViewC: UIViewController {
        override func viewDidLoad() {
            let card = CardView()
            self.view.addSubview(card)
            card.applyConstraints(in: self.view)

        }
    }

    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController {
        CardViewC()
    }
}

@available(iOS 13.0, *)
struct CardViewPreview: PreviewProvider {
    static var previews: some View {
        CardViewRepresentable()
    }
}
#endif
