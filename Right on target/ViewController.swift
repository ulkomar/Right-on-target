//
//  ViewController.swift
//  Right on target
//
//  Created by Uladzislau Komar on 18.09.22.
//

import UIKit

class ViewController: UIViewController {
    // Загаданное число, раунт, сумма очков
    var number: Int = 0
    var round: Int = 1
    var points: Int = 0
    
    override func loadView() {
        super.loadView()
        print("loadView")
        
        let versionLabel = UILabel(frame: CGRect(x: 20, y: 20, width: 200, height: 20))
        versionLabel.text = "Version 1.1"
        self.view.addSubview(versionLabel)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        self.number = Int.random(in: 1...50)
        self.label.text = String(self.number)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }


    @IBOutlet var label: UILabel!
    @IBOutlet var slider: UISlider!
    
    @IBAction func checkNumber() {
        let numSlider = Int(self.slider.value.rounded())
        
        if numSlider > self.number {
            self.points += 50 - numSlider + self.number
        } else if numSlider < self.number {
            self.points += 50 - self.number + numSlider
        } else {
            self.points += 50
        }
        
        if self.round == 5 {
            let alert = UIAlertController(title: "Раунт закончен",
                                          message: "Ваш счет \(self.points)",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Начать заново?",
                                          style: .default,
                                          handler: nil))
            self.present(alert, animated: true, completion: nil)
            self.round = 1
            self.points = 0
        } else {
            self.round += 1
        }
        
        self.number = Int.random(in: 1...50)
        self.label.text = String(self.number)
    }
    
    @IBAction func showNextScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        self.present(secondViewController, animated: true, completion: nil)
    }
}

