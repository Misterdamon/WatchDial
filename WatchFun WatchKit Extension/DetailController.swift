//
//  DetailController.swift
//  WatchFun
//
//  Created by Sam Youtsey on 11/19/14.
//  Copyright (c) 2014 nebari. All rights reserved.
//

import WatchKit

class DetailController: WKInterfaceController {
    @IBOutlet weak var nameLabel: WKInterfaceLabel!
    @IBOutlet weak var callButton: WKInterfaceButton!
    @IBOutlet weak var textButton: WKInterfaceButton!
    @IBOutlet weak var emailButton: WKInterfaceButton!
    
    let telURL: NSURL!
    let textURL: NSURL!
    let emailURL: NSURL!
    
    @IBAction func callButtonPressed() {
        println("Call button pressed with tel: \(self.telURL)")
        NSExtensionContext().openURL(self.telURL, completionHandler: { (success) in
            println("Success? \(success)")
        })
    }
    @IBAction func textButtonPressed() {
        println("Text button pressed with text: \(self.textURL)")
        NSExtensionContext().openURL(self.textURL, completionHandler: { (success) in
            println("Success? \(success)")
        })
    }
    @IBAction func emailButtonPressed() {
        println("Email button pressed with email: \(self.emailURL)")
        NSExtensionContext().openURL(self.emailURL, completionHandler: { (success) in
            println("Success? \(success)")
        })
    }
    override init(context: AnyObject?) {
        super.init(context: context)
        let infoDict = context as [String : String]
        let name = infoDict["name"]
        let phone = infoDict["phone"]
        let email = infoDict["email"]
        self.telURL = NSURL(string: "tel:" + phone!)
        self.textURL = NSURL(string: "sms:" + phone!)
        self.emailURL = NSURL(string: "mailto:" + email!)
        
        self.nameLabel.setText(name)
    }
}
