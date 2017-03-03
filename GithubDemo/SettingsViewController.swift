//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Cong Tam Quang Hoang on 02/03/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    
    @IBOutlet weak var minStarLabel: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    var settings: GithubRepoSearchSettings?

    override func viewDidLoad() {
        super.viewDidLoad()
        let starValue = ((self.settings?.minStars)!)
        self.sliderValue.setValue(Float(starValue), animated: true)
        minStarLabel.text = "\(starValue)"
        
        // Do any additional setup after loading the view.
    }
    @IBAction func sliderMoved(_ sender: UISlider) {
        minStarLabel.text = "\(Int(sender.value))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButton(_ sender: Any) {
        self.settings?.minStars = Int(self.sliderValue.value)
        print(self.sliderValue.value)
        self.delegate?.didSaveSettings(settings: self.settings!)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func backButton(_ sender: Any) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}
