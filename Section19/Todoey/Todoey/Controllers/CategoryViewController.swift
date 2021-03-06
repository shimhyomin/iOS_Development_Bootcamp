//
//  CategoryViewController.swift
//  Todoey
//
//  Created by shm on 2021/09/04.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift
import ChameleonFramework

class CategoryViewController: SwipeTableViewController {
    
    let realm = try! Realm()

    var categories: Results<Category>?
    
    // CoreData
//    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCategories()
        
        tableView.separatorStyle = .none
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let navBar = navigationController?.navigationBar else {
            fatalError("Navigatioin controller does not exist.")
        }
        
        navBar.backgroundColor = UIColor(hexString: "258DFE")
    }
    
    //MARK: -TableView Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories?.count ?? 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        
        if let category = categories?[indexPath.row] {
            cell.textLabel?.text = categories?[indexPath.row].name ?? "No Categories Added Yet"
            
            guard let categoryColour = UIColor(hexString: category.colour) else {
                fatalError()
            }
            cell.backgroundColor = UIColor(hexString: categories?[indexPath.row].colour ?? "258DFE")
            cell.textLabel?.textColor = ContrastColorOf(categoryColour, returnFlat: true)
        }
        return cell
    }
    
    //MARK: -TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToItems", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! TodoListViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selectedCategory = categories?[indexPath.row]
        }
    }
    
    //MARK: -Add New Categories
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Category", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add", style: .default) { action in
            let newCategory = Category()
            newCategory.name = textField.text!
            newCategory.colour = UIColor.randomFlat().hexValue()
  
            // CoreData
//            self.categories.append(newCategory)
            
            self.saveCategories(category: newCategory)
        }
        
        alert.addAction(action)
        
        alert.addTextField { field in
            textField = field
            textField.placeholder = "Add a new category"
        }
        
        present(alert, animated: true, completion: nil)
    }
    
    //MARK: -Data manipulation Methods
    func saveCategories(category: Category) {
        do {
            try realm.write({
                realm.add(category)
            })
        } catch {
            print("Error saving context \(error)")
        }
        
        self.tableView.reloadData()
    }
    
    func loadCategories(){
        // CoreData
//        let request: NSFetchRequest<Category> = Category.fetchRequest()
//
//        do {
//            categories = try context.fetch(request)
//        } catch {
//            print("Error fetching data from context \(error)")
//        }
//
        
        // Realm
        categories = realm.objects(Category.self)
        
        tableView.reloadData()
        
    }
    
    //MARK: -Delete Data from Swipe
    override func updateModel(at indexPath: IndexPath) {
        
        super.updateModel(at: indexPath)
        
        if let category = self.categories?[indexPath.row] {
            do {
                try self.realm.write {
                    // delete
                    self.realm.delete(category)
                }
            }catch {
                print("Error delete category, \(error)")
            }
        }
    }
}
