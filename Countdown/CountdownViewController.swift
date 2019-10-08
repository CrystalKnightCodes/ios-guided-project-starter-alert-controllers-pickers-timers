//
//  CountdownViewController.swift
//  Countdown
//
//  Created by Paul Solt on 5/8/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class CountdownViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var countdownPicker: UIPickerView!
    
    // MARK: - Properties
    
    lazy private var countdownPickerData: [[String]] = {
        // Create string arrays using numbers wrapped in string values: ["0", "1", ... "60"]
        let minutes: [String] = Array(0...60).map { String($0) }
        let seconds: [String] = Array(0...59).map { String($0) }
        
        // "min" and "sec" are the unit labels
        let data: [[String]] = [minutes, ["min"], seconds, ["sec"]]
        return data
    }()
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: false, block: timerFinished(timer:)) // For longer timers, make this a weak let so you can cancel before it finishes.
    }
    
    private func timerFinished(timer: Timer) {
        showAlert()
        }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
    }
    
    // MARK: - Private
    
    private func showAlert() {
        let alert = UIAlertController(title: "Timer finished!", message: "Your countdown is over.", preferredStyle: .alert) // Alternative preferredStyle is .actionSheet which comes up from the bottom
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
      //  alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))  // Alternative option for cancel button
       // alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: nil)) // Alternative option for delete button
        present(alert, animated: true, completion: nil)
    }
    
    private func updateViews() {
        
    }
    
    private func string(from duration: TimeInterval) -> String {
        #warning("return a string value derived from the time interval passed in")
        return ""
    }
}

extension CountdownViewController: CountdownDelegate {
    func countdownDidUpdate(timeRemaining: TimeInterval) {
        
    }
    
    func countdownDidFinish() {
        
    }
}

extension CountdownViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        #warning("Change this to return the number of components for the picker view")
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        #warning("Change this to return the number of rows per component in the picker view")
        return 0
    }
}

extension CountdownViewController: UIPickerViewDelegate {
    
}
