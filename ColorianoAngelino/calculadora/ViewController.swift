//
//  ViewController.swift
//  calculadora
//
//  Created by isc on 11/21/16.
//  Copyright © 2016 isc. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber = false
    
    //Tienes que asociar todos los botones de digitos al método appenDigit
    @IBAction func appenDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber{
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
    //Tienes que asociar todos los botones de operaciones al metodo operate
    @IBAction func operate(_ sender: UIButton) {
        let operacion = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            enter()
        }
        switch operacion {
        case "x": performOperation { $0 * $1 }
        case "/": performOperation { $1 / $0 }
        case "+": performOperation { $0 + $1 }
        case "-": performOperation { $1 - $0 }
        case "*": performSqrt { sqrt($0) }
        default: break
        }
    }
    
    func performOperation(_ operacion: (Double, Double) -> Double) {
        if operandStack.count >= 2 {
            displayValue = operacion(operandStack.removeLast(), operandStack.removeLast())
            enter()
        }
    }
    
    
    func performSqrt(_ operacion: (Double) -> Double) {
        if operandStack.count >= 1 {
            displayValue = operacion(operandStack.removeLast())
            enter()
        }
    }
    
    
    var operandStack = Array<Double>()
    
    //Tienes que asociar el boton de la flechita a este metodo ENTER
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        operandStack.append(displayValue)
        print("operandStack = \(operandStack)")
        
    }
    
    var displayValue: Double {
        get {
            return NumberFormatter().number(from: display.text!)!.doubleValue
        }
        set {
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }
    
    
}



