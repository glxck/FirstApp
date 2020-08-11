//
//  ViewController.swift
//  FirstApp
//
//  Created by Glock on 09.08.2020.
//  Copyright © 2020 Glock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Кол-во нажатий на кнопки
    var flipCount : Int = 0 {
        didSet { //Старое, еще не установленное значение
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel! //Импорт текста из UI
    
    @IBOutlet var cardButtons: [UIButton]! //Импорт кнопок из UI
    
    var emojiChoices = ["🎃", "👻", "🎃", "👻"]
    //Создание массива из текста который будет находиться внутри кнопок
    
    
    @IBAction func touchCard(_ sender: UIButton) { //Функция нажатия на кнопку(карту)
        flipCount += 1 //Добавление + 1 в лейбл, после нажатия на кнопку/и
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            //Проверка приравнивания индекса массива к кнопке
            print ("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        else {
            print("Chose card was not in cardBottons")
        }
        
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}
 
