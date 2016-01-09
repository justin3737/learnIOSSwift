//: Playground - noun: a place where people can play

import UIKit

protocol BossDelegate {
    func work()
}

protocol BossDataSource {
    func countWorker()
}

class Worker:BossDelegate ,BossDataSource{
    func work() {
        print("Working 9 to 5.")
    }
    func countWorker() {
        print("only 2.")
    }
}

class Boss {
    var delegate:BossDelegate?
    var dataSource:BossDataSource?
    func askWorker() {
        delegate?.work()
    }
    func howManyWorker() {
        dataSource?.countWorker()
    }
}

let aBoss = Boss()
let aWorker = Worker()
aBoss.delegate = aWorker
aBoss.askWorker()
// "Working 9 to 5.\n"
aBoss.dataSource = aWorker
aBoss.howManyWorker()
// "only 2.\n"



