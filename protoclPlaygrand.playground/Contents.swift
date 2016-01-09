//: Playground - noun: a place where people can play

import UIKit

protocol MoneyTransferProtocol {
    func giveMoney()
}

class RichPeople:MoneyTransferProtocol {
    func giveMoney() {
        print("Give you 100 dollars.")
    }
}

class PoorGuy {
    var helper:MoneyTransferProtocol?
    func needMoney () {
        helper?.giveMoney()
    }
}

class NormalPeople:MoneyTransferProtocol {
    func giveMoney() {
        print("Give you 10 dollars.")
    }
}

let aPoorGuy = PoorGuy()
aPoorGuy.needMoney()
// nil

// set rich people to pool people's helper
let aRichPeople = RichPeople()
aPoorGuy.helper = aRichPeople
aPoorGuy.needMoney()
// "Give you 100 dollars."

// set normal people to pool people's helper
let aNormalPeople = NormalPeople()
aPoorGuy.helper = aNormalPeople
aPoorGuy.needMoney()
//"Give you 10 dollars."







