 //
//  MovieGridCell.swift
//  flix
//
//  Created by Elijah Baird on 9/23/19.
//  Copyright © 2019 Elijah Baird. All rights reserved.
//

import UIKit

class MovieGridCell: UICollectionViewCell {
    
    @IBOutlet weak var posterView: UIImageView!
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        frame.size.height = ceil(size.height)
        layoutAttributes.frame = frame
        return layoutAttributes
    }
 }
