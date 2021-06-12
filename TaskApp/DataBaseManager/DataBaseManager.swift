import Foundation
import CoreData



class DataBaseManager {
    // MARK: - Proprties

    private let container: NSPersistentContainer
    // MARK: - init

    init() {
        self.container = NSPersistentContainer(name: "DataBase")
    }
    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        container.loadPersistentStores(completionHandler: { storeDescription, error in
            if let error = error as NSError? {  fatalError("Unresolved error \(error), \(error.userInfo)")  }
        })
    
        return container
    }()
    // MARK: - Core Data View Context

    private lazy var viewContext = {
        return persistentContainer.viewContext
    }()
    // MARK: - Core Data Saving support

    func saveContext () {
        if viewContext.hasChanges == false { return }
        
        do {
            try viewContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
