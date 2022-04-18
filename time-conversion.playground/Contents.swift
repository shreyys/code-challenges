/*
 Given a time in -hour AM/PM format, convert it to military (24-hour) time.

 Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
 - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

 */

import UIKit

func timeConversion(s: String) -> String {
    // Write your code here
    let timeComponents = s.split(separator: ":")
    let index = timeComponents.last!.index(timeComponents.last!.startIndex, offsetBy: 2)
    let ampm = timeComponents.last?[index...]
    let secs =  timeComponents.last?[..<index]
    var validTime = ""
    if let hour = Int(timeComponents.first ?? "0"), let m = ampm{
        print(m)
        print(hour)
        if m == "AM"{
            if hour == 12{
                validTime = ("00:\(timeComponents[1]):\(secs!)")
            }else if hour < 10{
                validTime = ("0\(hour):\(timeComponents[1]):\(secs!)")
            }else{
                validTime = ("\(hour):\(timeComponents[1]):\(secs!)")
            }
        }else{
            if hour == 12{
                validTime = ("\(hour):\(timeComponents[1]):\(secs!)")
            }else{
                validTime = ("\(hour + 12):\(timeComponents[1]):\(secs!)")
            }
        }
    }
    return validTime
}
