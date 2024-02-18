//
//  estructuras-repetitivas.swift
//  ejercicios-presentacion-unidad1
//
//  Created by helder hernandez on 17/2/24.
//  Copyright © 2024 helder hernandez. All rights reserved.
//

import Foundation

/*Desarrollar un programa que permita la carga
 de 10 valores por teclado y nos muestre
 posteriormente la suma de los valores
 ingresados y su promedio. Este problema ya
 lo desarrollamos , lo resolveremos
 empleando la estructura for*/
func calcularPromedios(){
    var sumaNotas10:Double = 0.0
    
    for contador in 1...10 {
        print("Ingrese la nota \(contador):")
        
        if let input = readLine() {
            if let nota = Double(input) {
                sumaNotas10 += nota
            }
        }
    }
    
    let promedio10 = sumaNotas10 / 10.0
    
    print("Promedio: \(promedio10)")
    print("Suma: \(sumaNotas10)")
}

/*En una empresa trabajan n empleados cuyos sueldos oscilan entre $100 y $500,
 realizar un programa que lea los sueldos que cobra cada empleado e informe
 cuántos empleados cobran entre $100 y $300 y cuántos cobran más de $300.
 Además el programa deberá informar el importe que gasta la empresa en
 sueldos al personal.*/
func calcularImporte(){
    var empleados300 = 0
    var empleados500 = 0
    var sueldo = 0
    var gastosTotales = 0
    var numeroEmpleados = 0
    var contador = 1
    
    print("Ingrese número de empleados:")
    if let input = readLine(), let numeroEmpleados = Int(input) {
        while contador <= numeroEmpleados {
            print("Ingrese el sueldo del empleado \(contador)")
            if let input1 = readLine(), let sueldo = Int(input1) {
                if sueldo >= 100 && sueldo <= 300 {
                    empleados300 += 1
                } else if sueldo > 300 {
                    empleados500 += 1
                }
                gastosTotales += sueldo
                contador += 1
            }
        }
        print("Empleados cuyos sueldos oscilan entre $100 y $300: \(empleados300)")
        print("Sueldos mayores a $500: \(empleados500)")
        print("Gastos totales: \(gastosTotales)")
    }
    
}


// presentacion
/*En un banco se procesan datos de las cuentas corrientes de sus clientes. De cada
 cuenta corriente se conoce: número de cuenta y saldo actual. El ingreso de datos debe
 finalizar al ingresar un valor negativo en el número de cuenta.
 Se pide confeccionar un programa que lea los datos de las cuentas corrientes e informe:
 a)De cada cuenta: número de cuenta y estado de la cuenta según su saldo, sabiendo
 que:
 Estado de la cuenta 'Acreedor’
 si el saldo es >0. 'Deudor’
 si el saldo es <0. 'Nulo’
 si el saldo es =0.*/
func calcularTipoCuenta(){
    
    var nCuenta=0
    var suma = 0
    
    repeat {
        print("Ingresa número de cuenta:")
        if let inputNCuenta = readLine(), let nCuenta = Int(inputNCuenta) {
            if nCuenta < 0 {
                break
            }
            
            print("Ingresa saldo de cuenta:")
            if let inputSueldo = readLine(), let sueldo = Int(inputSueldo) {
                if sueldo > 0 {
                    print("Acreedor")
                    suma += sueldo
                } else if sueldo < 0 {
                    print("Deudor")
                } else {
                    print("Nulo")
                }
            }
        }
    } while true
    
    print("Total de saldos acreedores: \(suma)")
    
}

// presentaciones
/*Realizar un programa que permita ingresar el peso (en kilogramos) de piezas. El
 proceso termina cuando ingresamos el valor 0. Se debe informar:
 a) Cuántas piezas tienen un peso entre 9.8 Kg. y 10.2 Kg.?, cuántas con más de 10.2
 Kg.? y cuántas con menos de 9.8 Kg.?
 b) La cantidad total de piezas procesadas.*/
func calcularPiezas(){
    var piezasEntre: Int = 0
    var piezasMayor: Int = 0
    var piezasMenor: Int = 0
    var totalPiezas: Int = 0
    
    while true {
        print("Ingrese el peso de las piezas en kilogramos (ingrese 0 para terminar): ")
        
        if let input = readLine(), let peso = Float(input) {
            if peso == 0 {
                break
            }
            
            totalPiezas += 1
            
            switch peso {
            case 9.8..<10.2:
                piezasEntre += 1
            case 10.2..<Float.infinity:
                piezasMayor += 1
            default:
                piezasMenor += 1
            }
        }
    }
    
    print("Piezas entre 9.8 Kg y 10.2 Kg: \(piezasEntre)")
    print("Piezas mayores a 10.2 Kg: \(piezasMayor)")
    print("Piezas menores a 9.8 Kg: \(piezasMenor)")
    print("Total de piezas procesadas: \(totalPiezas)")
}

