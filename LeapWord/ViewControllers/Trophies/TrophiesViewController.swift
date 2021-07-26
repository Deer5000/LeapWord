//
//  TrophiesViewController.swift
//  LeapWord
//
//  Created by Khidr Brinkley on 7/6/21.
//

import UIKit

class UserModel {
    var userImage: UIImage?
    var name: String?
    var age: String?
//    var userArr: Array<Any>?
    
    init(userImage: UIImage, name: String, age: String) {
        self.userImage = userImage
        self.name = name
        self.age = age
    }
}

class TrophiesViewController: UIViewController {

    var tableView = UITableView()
    
    var userArr = [UserModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Trophies"
        setTableView()
        
        userArr.append(UserModel(userImage: UIImage(imageLiteralResourceName: "trophy1"), name: "Locked", age: "???"))
        userArr.append(UserModel(userImage: UIImage(imageLiteralResourceName: "trophy2"), name: "Locked", age: "???"))
        userArr.append(UserModel(userImage: UIImage(imageLiteralResourceName: "trophy3"), name: "Locked", age: "???"))
        userArr.append(UserModel(userImage: UIImage(imageLiteralResourceName: "trophy4"), name: "Locked", age: "???"))
        userArr.append(UserModel(userImage: UIImage(imageLiteralResourceName: "trophy5"), name: "Locked", age: "???"))
        userArr.append(UserModel(userImage: UIImage(imageLiteralResourceName: "trophy6"), name: "Locked", age: "???"))
        userArr.append(UserModel(userImage: UIImage(imageLiteralResourceName: "trophy7"), name: "Locked", age: "???"))
        userArr.append(UserModel(userImage: UIImage(imageLiteralResourceName: "trophy8"), name: "Locked", age: "???"))
        view.backgroundColor = UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1)
        title = "Trophies"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setTableView() {
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1)
        tableView.backgroundColor = UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha:1)
        self.view.addSubview(tableView)

        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}

extension TrophiesViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell else {fatalError("Unable to create cell")}
        cell.userImage.image = userArr[indexPath.row].userImage
        cell.nameLabel.text = userArr[indexPath.row].name
        cell.ageLabel.text = userArr[indexPath.row].age
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 118
    }

}

