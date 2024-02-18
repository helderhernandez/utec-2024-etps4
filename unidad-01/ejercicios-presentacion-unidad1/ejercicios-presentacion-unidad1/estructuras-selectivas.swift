//
//  estructuras-selectivas.swift
//  ejercicios-presentacion-unidad1
//
//  Created by helder hernandez on 17/2/24.
//  Copyright © 2024 helder hernandez. All rights reserved.
//

import Foundation

/*
 Ingresar el sueldo de una persona, si supera los $3000
 mostrar un mensaje en la salida indicando que debe
 abonar impuestos
 */
func calculoAbonos(){
    print("\n************************")
    
    var sueldo:Double
    
    print("ingrese sueldo:")
    sueldo = Double(readLine()!)!
    
    if (sueldo > 3000) {
        print("PAGARA IMPUESTOS 🧐")
    }
}

/*
 Se declaran cinco notas de un alumno, si el promedio
 es mayor o igual a siete mostrar un mensaje ”Aprobado
 ETPS4”.
 */
func calcularAprobacion(){
    print("\n************************")
    // calcular el promedio
    var notas = [5.1, 6.2, 7.3, 8.4, 9.5]
    var acumulado = 0.0
    acumulado += notas[0]
    acumulado += notas[1]
    acumulado += notas[2]
    acumulado += notas[3]
    acumulado += notas[4]
    
    var promedio = acumulado / 5
    
    if (promedio >= 7){
        print("aprobado etps4")
    }
}

/*Realizar un programa que solicite declarar dos números
 distintos y muestre por pantalla el mayor de ellos.*/
func calcularMayorNumero(){
    print("Ingrese el primer número:")
    
    if let input1 = readLine() {
        if let numero1 = Double(input1) {
            print("Ingrese el segundo número:")
            
            if let input2 = readLine() {
                if let numero2 = Double(input2) {
                    if numero1 == numero2 {
                        print("Los números ingresados son iguales.")
                    } else if numero1 > numero2 {
                        print("El mayor número es: \(numero1)")
                    } else {
                        print("El mayor número es: \(numero2)")
                    }
                }
            }
        }
    }
}

/*Realizar un programa que declarado dos números, si el
 primero es mayor al segundo informar su suma y
 diferencia, en caso contrario informar el producto y la
 división del primero respecto al segundo.*/
func calcularOperacionesAritmeticas(){
    var numero1=0
    var numero2=0
    
    print("Introduce un numero: 1 ")
    
    if let input = readLine(), let numero1 = Int(input){
        print("Introduce un numero: 2 ")
        
        if let input2 = readLine(),let numero2 = Int(input2){
            if(numero1>numero2){
                print("El numero mayor es: \(numero1)")
                print("La suma es: \(numero1+numero2)")
                print("La diferencia es: \(numero1-numero2)")
            }else if(numero2 > numero1 ){
                print("El numero mayor es: \(numero2)")
                print("El producto es: \(numero2*numero1)")
                print("La division es : \(numero2/numero1)")
            }else{
                print("Los números son iguales")
            }
        }
    }
}

/*Se declara un número positivo de uno o dos dígitos
 (1..99) mostrar un mensaje indicando si el número tiene
 uno o dos dígitos.
 (Tener en cuenta que condición debe cumplirse para tener
 dos dígitos, un número entero*/

func calcularDigitos(){
    var numero = 0
    print("Ingrese un numeros positivo de uno o dos digitos (1..99)")
    if let input = readLine(), let numero = Int(input){
        if numero >= 10 && numero <= 99 {
            print("El número tiene dos dígitos.")
        } else {
            print("El número tiene un dígito.")
        }
        
    }
    
}

/*Un postulante a un empleo, realiza un test de capacitación,
 se obtuvo la siguiente información: cantidad total de
 preguntas que se le realizaron y la cantidad de preguntas que
 contestó correctamente. Se pide crear un programa que
 declare los dos datos e informe el nivel del mismo según el
 porcentaje de respuestas correctas que ha obtenido, y
 sabiendo que:
 Nivel máximo: Porcentaje>=90%.
 Nivel medio: Porcentaje>=75% y <90%.
 Nivel regular: Porcentaje>=50% y <75%.
 Fuera de nivel: Porcentaje<50%.*/
func calcularNivel(){
    var porcentaje=0
    
    print("Ingrese Porcentaje : %")
    if let porcentaje1 = readLine(), let porcentaje = Int(porcentaje1){
        if porcentaje >= 90{
            print("Nivel máximo")
        }else if porcentaje >= 75 && porcentaje < 90{
            print("Nivel medio")
        }else if porcentaje >= 50 && porcentaje < 75{
            print("Nivel regular")
        }else if porcentaje < 50{
            print("Fuera de nivel")
        }else{
            print("El porcentaje no es valido!")
        }
    }
}
