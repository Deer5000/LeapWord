//
//  AboutViewController.swift
//  LeapWord
//
//  Created by Khidr Brinkley on 7/6/21.
//

import UIKit


class AboutViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1)
        title = "About"
        
    let label = UILabel()
        label.frame = CGRect(x: 50, y: 200, width: 305, height: 450)
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 24)
//        label.backgroundColor = .white
        label.textColor =  UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem."
//        UIScrollView.addsubView(label)
        view.addSubview(label)
        
        
    }
}
