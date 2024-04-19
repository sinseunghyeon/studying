import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var result: [Int] = []
    var times: [String: Int] = [:]
    var history: [String: String] = [:] 
    
    for record in records {
        let info = record.split(separator: " ")
        let time = String(info[0])
        let number = String(info[1])
        let status = String(info[2])
        
        if status == "IN" {
            if (times[number] == nil) { 
                times[number] = 0
            }

            history[number] = time
        } else {
            times[number]! += toMinutes(time) - toMinutes(history[number]!)
            history[number] = ""
        }
    }
    
    let max = 23 * 60 + 59
    
    for info in history {
        if info.value != "" { 
            times[info.key]! += (max - toMinutes(info.value))
            history[info.key] = ""
        }
    }
            
    let sort = times.sorted{$0.key < $1.key}
    let list = sort.map{ $0.value }
    
    for minutes in list {
        result.append(getTotalFee(minutes, fees))
    }
    
    return result
}

func toMinutes(_ time: String) -> Int {
    let sep = time.split(separator: ":")

    let hour = Int(String(sep[0]))!
    let min = Int(String(sep[1]))!
    
    let result = hour * 60 + min
    
    return result
}

func getTotalFee(_ minutes: Int, _ fees: [Int]) -> Int {
    if minutes <= fees[0] {
        return fees[1]
    } else {
        let remain = minutes - fees[0]
        var unit = remain / fees[2]

        if remain % fees[2] != 0 {
            unit += 1
        }
        
        return (unit * fees[3]) + fees[1]
    }
}