//
//  data.swift
//  Demo-Valdez
//
//  Created by isc on 12/4/16.
//  Copyright © 2016 isc. All rights reserved.
//

import SQLite

class datos {
    
    static let instance = datos()
    private var db: Connection?
    
    private let dbFileName = "infoDB"
    
    private let contacts = Table("datos")
    private let id = Expression<Int64>("id")
    private let name = Expression<String?>("name")
    private let phone = Expression<String>("phone")
    private let address = Expression<String>("address")
    
    
    
    
    private init() {
        if !openExistingDatabase() {
            let path = NSSearchPathForDirectoriesInDomains(
                .documentDirectory, .userDomainMask, true
                ).first!
            
            print("\(path)/\(dbFileName).db3")
            
            do {
                
                db = try Connection("\(path)/\(dbFileName).db3")
            } catch {
                db = nil
                print("Unable to open database")
            }
        }
        
        createTable()
    }
    
    func createTable() {
        do {
            try db!.run(contacts.create(ifNotExists: true) { table in
                table.column(id, primaryKey: true)
                table.column(name)
                table.column(phone, unique: true)
                table.column(address)
            })
        } catch {
            print("Unable to create table")
        }
    }
    
    func openExistingDatabase() -> Bool {
        let dbPath = Bundle.main.path(forResource: dbFileName, ofType: "db3")!
        print("Data base directory: \(dbPath)")
        
        do {
            db = try Connection(dbPath)
            print("conectado")
            return true
            
        } catch {
            db = nil
            print("Unable to open preloaded database")
            return false
        }
    }
    func addContact(cname: String, cphone: String, caddress: String) -> Int64? {
        do {
            let insert = contacts.insert(name <- cname, phone <- cphone, address <- caddress)
            let id = try db!.run(insert)
            
            return id
        } catch {
            print("Insert failed")
            return nil
        }
    }
    
    func getContacts() -> [Contact] {
        var contacts = [Contact]()
        
        do {
            for contact in try db!.prepare(self.contacts) {
                contacts.append(Contact(
                    id: contact[id],
                    name: contact[name]!,
                    phone: contact[phone],
                    address: contact[address]))
            }
        } catch {
            print("Select failed")
        }
        
        return contacts
    }
    
    func deleteContact(cid: Int64) -> Bool {
        do {
            let contact = contacts.filter(id == cid)
            try db!.run(contact.delete())
            return true
        } catch {
            
            print("Delete failed")
        }
        return false
    }
    
    func updateContact(cid:Int64, newContact: Contact) -> Bool {
        let contact = contacts.filter(id == cid)
        do {
            let update = contact.update([
                name <- newContact.name,
                phone <- newContact.phone,
                address <- newContact.address
                ])
            if try db!.run(update) > 0 {
                return true
            }
        } catch {
            print("Update failed: \(error)")
        }
        
        return false
    }
}
