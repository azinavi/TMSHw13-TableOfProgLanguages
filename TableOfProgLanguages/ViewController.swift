//
//  ViewController.swift
//  TableOfProgLanguages
//
//  Created by azinavi on 9/1/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var tableView = UITableView()
    var nameTitle = UILabel()
    
    var languages: [ProgLangs] = []

    override func viewDidLoad() {
        view.backgroundColor = .black
        super.viewDidLoad()
        let lang1 = ProgLangs(name: "Java", type: "Backend")
        let lang2 = ProgLangs(name: "Javascript", type: "Frontend")
        let lang3 = ProgLangs(name: "Swift", type: "IOS")
        let lang4 = ProgLangs(name: "Phyton", type: "Backend")
        let lang5 = ProgLangs(name: "Ruby", type: "Backend")
        let lang6 = ProgLangs(name: "Typescript", type: "Frontend")
        let lang7 = ProgLangs(name: "C++", type: "Backend")
        let lang8 = ProgLangs(name: "C#", type: "Backend")
        let lang9 = ProgLangs(name: "Objective-C", type: "IOS")
        let lang10 = ProgLangs(name: "Php", type: "Frontend")
        languages.append(lang1)
        languages.append(lang2)
        languages.append(lang3)
        languages.append(lang4)
        languages.append(lang5)
        languages.append(lang6)
        languages.append(lang7)
        languages.append(lang8)
        languages.append(lang9)
        languages.append(lang10)
        
        setupTableView()
//        setupNameTitle()
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.register(UINib(nibName: "LanguagesTableViewCell", bundle: nil), forCellReuseIdentifier: "LanguagesTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        tableView.backgroundColor = .yellow
        
        tableView.snp.makeConstraints{ (make) in
            make.left.equalTo(0)
            make.top.equalTo(50)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
    
    func setupNameTitle() {
        view.addSubview(nameTitle)
        nameTitle.text = "Языки"
        nameTitle.textColor = .white
        nameTitle.font = UIFont.systemFont(ofSize: 28)
        nameTitle.textAlignment = .center

        nameTitle.snp.makeConstraints{(make) in
            make.left.equalTo(0)
            make.top.equalTo(50)
            make.width.equalTo(200)
            make.height.equalTo(30)
        }
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 0) {
            return "Секции и ячейки"
        } else if (section == 1) {
            return "Языки"
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return 10
        } else if (section == 1) {
            return languages.count
        }
     return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LanguagesTableViewCell", for: indexPath) as! LanguagesTableViewCell

        if indexPath.section == 0 {
            cell.configureForCell(section: indexPath.section, index: indexPath.row)
        } else if indexPath.section == 1{
            let language = languages[indexPath.row]
            cell.configure(language: language)
        }
        return cell
    }
}
