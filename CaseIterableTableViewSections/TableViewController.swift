import UIKit

class TableViewController: UITableViewController {
    enum TableViewSection: Int, CaseIterable {
        case First = 0
        case Second = 1
        case Third = 2
    }
    
    enum TableViewSectionHeader: String, CaseIterable {
        case First = "First"
        case Second = "Second"
        case Third = "Third"
    }
    
    var data: [TableViewSection: [String]] = [
        .First: ["First Section Cell"],
        .Second: ["Second Section Cell", "Second Section Cell"],
        .Third: ["Third Section Cell", "Third Section Cell", "Third Section Cell"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return TableViewSection.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let tableViewSection = TableViewSection.allCases[section]
        if let sectionData = data[tableViewSection] {
            return sectionData.count
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return TableViewSectionHeader.allCases[section].rawValue
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        let tableViewSection: TableViewSection = TableViewSection.allCases[indexPath.section]
        if let sectionData: [String] = data[tableViewSection] {
            let cellData: String = sectionData[indexPath.row]
            cell.textLabel?.text = cellData
        }
        
        return cell
    }
}

