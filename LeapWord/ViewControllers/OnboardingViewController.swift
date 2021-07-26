//
//  ViewController.swift
//  LeapWord
//
//  Created by Khidr Brinkley on 7/5/21.
//
import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        
        return button
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
        
    }
        
    
    @objc func didTapButton() {
        // Create and present tab Bar Controller
        let tabBarVC = UITabBarController()
        
        let vcHome = UINavigationController(rootViewController: HomeViewController())
        let vcPowerUp = UINavigationController(rootViewController: PowerUpViewController())
        let vcTrophies = UINavigationController(rootViewController: TrophiesViewController())
        let vcAbout = UINavigationController(rootViewController: AboutViewController())
        let vcSettings = UINavigationController(rootViewController: SettingsViewController())
        
        vcHome.title = "Home"
        vcPowerUp.title = "Power Ups"
        vcTrophies.title = "Trophies"
        vcAbout.title = "About"
        vcSettings.title = "Settings"
        
        
        tabBarVC.setViewControllers([vcHome, vcPowerUp, vcTrophies, vcAbout, vcSettings], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["house.circle.fill", "bolt.circle.fill", "crown.fill","book.circle.fill", "gearshape.2.fill"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }

}

class HomeViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
    }
}

//class PowerUpViewController: UIViewController{
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .orange
//        title = "Power Ups"
//    }
//}


//class TrophiesViewController: UIViewController, UITableViewDelegate{
//    
//    
//    
////    var tableView = UITableView()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setTableView()
//        view.backgroundColor = .green
//        title = "Trophies"
//        
//    }
//}
//    
//    func setTableView() {
//        tableView.frame = self.view.frame
//        tableView.backgroundColor = UIColor.blue
//        tableView.delegate = self
//        tableView.dataSource = self
//        self.view.addSubview(tableView)
//        
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
//    }
    
//}

//extension ViewController: UITableViewDelegate, UITableViewDataSource {
//
//    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        cell.textLabel?.text = "\(indexPath.row)"
//        return cell
//    }
//
//}



//class AboutViewController: UIViewController{
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1)
//        title = "About"
//        
//    let label = UILabel()
//        label.frame = CGRect(x: 50, y: 200, width: 305, height: 450)
//        label.lineBreakMode = NSLineBreakMode.byWordWrapping
//        label.numberOfLines = 0
//        label.font = UIFont(name: "Helvetica", size: 24)
////        label.backgroundColor = .white
//        label.textColor =  UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
//        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem."
////        UIScrollView.addsubView(label)
//        view.addSubview(label)
//        
//        
//    }
//}


//class SettingsViewController: UIViewController{
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor  = UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1)
//        title = "Settings"
//
//
//        var howToLabel = UILabel(frame: CGRect(x: 0, y: 350, width: 415 ,height: 175))
//        howToLabel.textAlignment = NSTextAlignment.center
//        howToLabel.backgroundColor = UIColor.blue
//        howToLabel.text = "Sound"
//        howToLabel.textColor = .white
//        self.view.addSubview(howToLabel)
//
//        let howToButton = UIButton(frame: CGRect(x: 55, y: 300, width: 300, height: 50))
//        howToButton.setTitle("How To Play", for: .normal)
//        howToButton.setTitleColor(UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1), for: .normal)
//        howToButton.backgroundColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
//        howToButton.layer.cornerRadius = 10
//        howToButton.clipsToBounds = true
//        howToButton.addTarget(self, action: #selector(howToButtonAction), for: .touchUpInside)
//        self.view.addSubview(howToButton)
//
//
//        let soundButton = UIButton(frame: CGRect(x: 55, y: 400, width: 300, height: 50))
//        soundButton.setTitle("Sound", for: .normal)
//        soundButton.setTitleColor(UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1), for: .normal)
//        soundButton.backgroundColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
//        soundButton.layer.cornerRadius = 10
//        howToButton.clipsToBounds = true
//        soundButton.addTarget(self, action: #selector(soundButtonAction), for: .touchUpInside)
//        self.view.addSubview(soundButton)
//
//
//
//        let vibrationButton = UIButton(frame: CGRect(x: 55, y: 500, width: 300, height: 50))
//        vibrationButton.setTitle("Vibration", for: .normal)
//        vibrationButton.setTitleColor(UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1), for: .normal)
//        vibrationButton.backgroundColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
//        vibrationButton.layer.cornerRadius = 10
//        vibrationButton.clipsToBounds = true
//        vibrationButton.addTarget(self, action: #selector(vibrationButtonAction), for: .touchUpInside)
//        self.view.addSubview(vibrationButton)
//    }
//
//    @objc func howToButtonAction(sender: UIButton) {
//        print("How To Play Button Pressed!")
//    }
//
//    @objc func soundButtonAction() {
//        print("Sound Button pressed!")
//    }
//
//    @objc func vibrationButtonAction() {
//        print("Vibration Button Pressed!")
//    }
//
//}

//    @objc func soundButtonAction(sender: UISwitch) {
//        print("Sound Button Pressed!")
//    }
//    {
//        if (sender.isOn == true){
//            print("sound on")
//        }
//        else{
//            print("sound off")
//        }
//    }

//        soundButton.isOn = true
//        soundButton.setOn(true, animated: false)


//    @objc func howToButtonAction() {
//        print("How To Play Button Pressed!")
//    }
