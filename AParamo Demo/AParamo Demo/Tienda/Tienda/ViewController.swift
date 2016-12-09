//
//  ViewController.swift
//  Tienda
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arrDataArticulos: NSMutableArray!
    @IBOutlet weak var tableArticulos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getAllArticles()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Funciones propias
    func getAllArticles()
    {
        arrDataArticulos = NSMutableArray()
        arrDataArticulos = ModeloBD.getInstance().getAllArticles()
        tableArticulos.reloadData()
    }

    //Metodos para la Tabla
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDataArticulos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let myCell: ArticulosCell = tableView.dequeueReusableCellWithIdentifier("myCell") as! ArticulosCell
        
        let articulo: ArticulosData = arrDataArticulos.objectAtIndex(indexPath.row) as! ArticulosData
        
        myCell.labelTitulo.text = articulo.dsArticulo
        myCell.labelValor.text = "$\(articulo.valArticulo)"
        myCell.labelExistencias.text = "Existencias: \(articulo.exitArticulo)"
        
        return myCell
    }    
}

