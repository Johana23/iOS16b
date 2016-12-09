//
//  ModeloBD.swift
//  Tienda
//
//

import UIKit

let sharedInstance = ModeloBD()

class ModeloBD: NSObject {

    var database: FMDatabase? = nil
    
    class func getInstance() -> ModeloBD
    {
        if(sharedInstance.database == nil)
        {
            sharedInstance.database = FMDatabase(path: Utilities.getPath("BDTienda.sqlite"))
        }
        
        return sharedInstance
    }
    
    func getAllArticles() -> NSMutableArray {
        sharedInstance.database!.open()
        let resultSet: FMResultSet! = sharedInstance.database!.executeQuery("SELECT * FROM articulos ORDER BY ds_articulo", withArgumentsInArray: nil)
        let arrDataArticulos : NSMutableArray = NSMutableArray()
        
        if (resultSet != nil) {
            while resultSet.next() {
                let articulosInfo : ArticulosData = ArticulosData()
                articulosInfo.idArticulo = resultSet.stringForColumn("id_articulo")
                articulosInfo.dsArticulo = resultSet.stringForColumn("ds_articulo")
                articulosInfo.valArticulo = resultSet.stringForColumn("valor")
                articulosInfo.exitArticulo = resultSet.stringForColumn("existencias")
                arrDataArticulos.addObject(articulosInfo)
            }
        }
        
        sharedInstance.database!.close()
        return arrDataArticulos
    }
    
}
