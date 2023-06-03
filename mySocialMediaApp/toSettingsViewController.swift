//
//  toSettingsViewController.swift
//  mySocialMediaApp
//
//  Created by Sevda Abbasi on 21.05.2023.
//

import UIKit

class toSettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    //var tableView: UITableView!

    @IBOutlet weak var tableView: UITableView!
    var mySettings = [Settings]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

       // tableView = UITableView(frame: view.bounds)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        
       let setting1 = Settings(settingsName: "İstatistikler")
        let setting2 = Settings(settingsName: "Hesap Gizliliği")
        let setting3 = Settings(settingsName: "Şİfre ve güvenlik")
        let setting4 = Settings(settingsName: "Kişisel detaylar")
        let setting5 = Settings(settingsName: "Hareketlerin")
        let setting6 = Settings(settingsName: "Kaydedilenler")
        let setting7 = Settings(settingsName: "Engellenenler")
        let setting8 = Settings(settingsName: "Dil")
        let setting9 = Settings(settingsName: "Yardım")
        let setting10 = Settings(settingsName: "Hakkında")
       
        
        mySettings.append(setting1)
        mySettings.append(setting2)
        mySettings.append(setting3)
        mySettings.append(setting4)
        mySettings.append(setting5)
        mySettings.append(setting6)
        mySettings.append(setting7)
        mySettings.append(setting8)
        mySettings.append(setting9)
        mySettings.append(setting10)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       // return UITableViewCell()
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySettings[indexPath.row].settingsName
        cell.contentConfiguration = content
        return cell
    }
    
    
    @IBAction func exitClicked(_ sender: Any) {
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
    

   
}

