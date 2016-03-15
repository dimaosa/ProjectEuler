//: Playground - noun: a place where people can play
// var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
import UIKit

89

func encodeToIntArray(message: String, key: (e: Int,n: Int)) -> [Int] {
    
    let messUniCode = message.utf8.enumerate().map { $1 }
    var resultEncodeMess = [Int]()
    
    for mes in messUniCode {
        var k = 1
        let character = Int(mes)
        for _ in 1...key.e {
            k *= character
            k = k % key.n
        }
        resultEncodeMess.append(k)
        print(k)
    }
    print(messUniCode)
    print(resultEncodeMess)
    return resultEncodeMess
}
func encodeFromIntArray(message: [Int], key: (e: Int,n: Int)) -> String {
    
    var resultEncodeMess = [Int]()
    
    for mes in message {
        var k = 1
        let character = Int(mes)
        for _ in 1...key.e {
            k *= character
            k = k % key.n
        }
        resultEncodeMess.append(k)
        print(k)
    }
    print(message)
    print(resultEncodeMess)
    var resultString = String()
    print(resultString)
    
    for num in resultEncodeMess {
        resultString += String(UnicodeScalar(num))
    }
    print(resultString)
    return resultString
}
let publicKey = (257, 899)
let privateKey = (353, 899)
let encodeMess = encodeToIntArray("Dim ", key: publicKey)
let decodeMess = encodeFromIntArray(encodeMess, key: privateKey)
//----------------------------------------------------------------------------------------
//---------------------------------------TASK-32-----18-02-2016----------------------------
//----------------------------------------------------------------------------------------

//extension Int {
//    var toIntArray: [Int] {
//        var num = self
//        var res = [Int]()
//        while num != 0 {
//            res += [num % 10]
//            num = num / 10
//        }
//        return res.reverse()
//    }
//}
//
//let DIGITS = [0,1,2,3,4,5,6,7,8,9]
//
//func isPandigitalNumberModifiedWithoutZero(num: Int) -> Bool {
//    var digitsLocal = DIGITS
//    for digit in num.toIntArray {
//        if digitsLocal[digit] == -1 || digit == 0{
//            return false
//        } else {
//            digitsLocal[digit] = -1
//        }
//    }
//    
//    return true
//}
//func isPandigitalArrayModifiedWithoutZero(num: [Int]) -> Bool {
//    var digitsLocal = DIGITS
//    for digit in num {
//        if digitsLocal[digit] == -1 || digit == 0{
//            return false
//        } else {
//            digitsLocal[digit] = -1
//        }
//    }
//    
//    return true
//}
//
//func isAmiacbleDivisorsModifiedPandigital(number: Int) -> Bool {
//    var divisors = [1]
//    var rightBound = number
//    var i = 2
//
//        while(i < rightBound) {
//            if (number % i == 0){
//                let divisor = number / i
//                rightBound = divisor
//                if divisor != i {
//                    divisors += [i, divisor]
//                    if isPandigitalArrayModifiedWithoutZero(i.toIntArray + divisor.toIntArray + number.toIntArray) {
//                        print("\(i) * \(divisor) = \(number)")
//                        return true
//                    }
//                }
//            }
//            i++
//
//        }
//    return false
//}
//
//var pandigitNumbers: [Int]d {
//    var numbers = [Int]()
//    for i in 999..<1400{
//        if isPandigitalNumberModifiedWithoutZero(i){
//            if isAmiacbleDivisorsModifiedPandigital(i) {
//                numbers.append(i)
//            }
//        }
//    }
//    return numbers
//}
//print("The sum is \(pandigitNumbers.reduce(0, combine: +))")
//if isPandigitalArrayModifiedWithoutZero([7,8,3,4]) == true {
//    print("Pass")
//} else {
//     print("NePass")
//}

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-31-----18-02-2016----------------------------
//----------------------------------------------------------------------------------------

//let target  = 200;
//var ways = 0;
//
//for (var a = target; a >= 0; a -= 200) {
//    for (var b = a; b >= 0; b -= 100) {
//        for (var c = b; c >= 0; c -= 50) {
//            for (var d = c; d >= 0; d -= 20) {
//                for (var e = d; e >= 0; e -= 10) {
//                    for (var f = e; f >= 0; f -= 5) {
//                        for (var g = f; g >= 0; g -= 2) {
//                            ways++;
//                        }
//                    }
//                }
//            }
//        }
//    }
//}

//let coins = [1,2,5,10,20,50,100,200]
//
//let FIXEDSUM = 200
//var countAllOptions = 0
//func numberOfAllOptions(currSum: Int, bagOfCoins: [Int]){
//    
//    //take coin from the bag and do it again
//    for coin in bagOfCoins {
//        let sum = currSum + coin
//        print("sum = \(sum)")
//        print("bagOfCoins = \(bagOfCoins)")
//        numberOfAllOptions(sum, bagOfCoins: bagOfCoins.filter{ $0 + sum <= FIXEDSUM })
//    }
//    
//    if let coin = bagOfCoins.first {
//        let sum = currSum + coin
//        print("sum = \(sum)")
//        print("bagOfCoins = \(bagOfCoins)")
//        numberOfAllOptions(sum, bagOfCoins: bagOfCoins.filter{ $0 + sum <= FIXEDSUM })
//    }
    
//    if currSum == FIXEDSUM {
//        countAllOptions++
//    }
//}
//
//numberOfAllOptions(0, bagOfCoins: coins)
//print("count = \(count) + 7 = \(count + 7)")
//----------------------------------------------------------------------------------------
//---------------------------------------TASK-30-----14-02-2016----------------------------
//----------------------------------------------------------------------------------------
//extension Int {
//    var toIntArray: [Int] {
//        var num = self
//        var res = [Int]()
//        while num != 0 {
//            res += [num % 10]
//            num = num / 10
//        }
//        return res.reverse()
//    }
//}
//
//func task30(numberOfDigits: Int) -> [Int]{
//    var arr = [Int]()
//    for i in 0...9 {
//        arr += [Int(pow(Double(i), Double(numberOfDigits)))]
//    }
//    print(arr)
//    
//    var result = [Int]()
//    let low = Int(pow(10.0, Double(numberOfDigits-1)))
//    let high = Int(pow(10.0, Double(numberOfDigits)))
//    print("Low = \(low)")
//    print("High = \(high)")
//    
//    for num in 2..<355000 {
//        let curNum = num.toIntArray
//        var product = 0
//        for j in 0..<curNum.count{
//            product += arr[curNum[j]]
//        }
//        
//        if product == num {
//            result.append(num)
//        }
//    }
//    
//    return result
//}
//
//print( task30(4))
//----------------------------------------------------------------------------------------
//---------------------------------------TASK-29-----13-02-2016----------------------------
//----------------------------------------------------------------------------------------


//import Darwin

//let k = DBL_MAX
//
//
//pow(Double(3), Double(2))
//
//func distinctPowers(a: Int, b: Int) -> Set<Double> {
//    var distinctNumbers = Set<Double>()
//    
//    for aI in 2...a {
//        for bI in 2...b {
//            distinctNumbers.insert(pow(Double(aI), Double(bI)))
//        }
//    }
//    return distinctNumbers
//}
//
//if distinctPowers(5, b: 5).count == 15 {
//    print("Success func distinctPowers")
//}
//
//print(distinctPowers(100, b: 100))

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-28-----13-02-2016----------------------------
//----------------------------------------------------------------------------------------

//func findDiagonalProductOfSquare(sideLength: Int) -> Int {
//    var num =  sideLength * sideLength
//    var step = sideLength - 1
//    var product = 0
//    while step > 1 {
//        for _ in 0...3 {
//            print(num)
//            product += num
//            num -= step
//        }
//        step -= 2
//    }
//    product += 1
//    return product
//}
//
//print(findDiagonalProductOfSquare(1001))

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-27-----13-02-2016----------------------------
//----------------------------------------------------------------------------------------

//func generatePrimes(till: Int) -> [Int] {
//    
//    var primeListResult = [Int]()
//    var values = [Int](count: till, repeatedValue: 0)
//    for i in 0...values.count - 1 {
//        values[i] = i
//    }
//    values[1] = 0
//    var m = 2
//    var count = 0
//    while m < till {
//        if values[m] != 0 {
//            var j = m * 2
//            while j < till {
//                values[j] = 0
//                j += m
//            }
//            primeListResult += [m]
//            count++d
//        }
//        m++
//    }
//    
//    return primeListResult
//}
//
//
//let primeList = generatePrimes(1000)
//print(primeList.contains(137))
//var aMax = 0
//var bMax = 0
//var nMax = 0
//
//for a in -1000...1000 {
//    for b in -1000...1000 {
//        var n = 0
//        while primeList.contains(abs((n*n + n*a + b))) {
//            n++
//        }
//        if n > nMax {
//            aMax = a
//            bMax = b
//            nMax = n
//        }
//    }
//}
//
//print("Result = \(aMax) and \(bMax) = \(aMax*bMax)")

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-26-----13-02-2016----------------------------
//----------------------------------------------------------------------------------------
//let PRECISION = 100
//
//extension Int {
//    var toIntArray: [Int] {
//        var num = self
//        var res = [Int]()
//        while num != 0 {
//            res += [num % 10]
//            num = num / 10
//        }
//        return res.reverse()
//    }
//}
//
//func divide(numerator: Int, denominator: Int) -> [Int] {
//    
//    var result = [Int]()
//    var currNum = numerator
//    
//    if numerator > denominator {
//        result += (numerator / denominator).toIntArray + [-1]
//        currNum = numerator % denominator
//    }else{
//        result += [-1]
//    }
////    print(result)
//    while( result.count != PRECISION){
//        if currNum > denominator {
//            result += (currNum / denominator).toIntArray
//            currNum = currNum % denominator
//
//        }else {
//            currNum *= 10
//        }
//        if (currNum == 0) {
//            break
//        }
////        print("currNum = \(currNum)")
////        print("check = \(check)")
////        print("")
////        print("")
////        print(result)
//    }
//    //print(result)
//    return result
//}
//if let index = divide(1, denominator: 8).indexOf(1234) {
//    print(index)
//}
//
////func findLongestRecurringCycleDenominator(to: Int) -> Int {
////    for i in 1...to {
////        
////    }
////    return -1
////}
//
//
//var sequenceLength = 0;
//
//for var i = 1000; i > 1; i-- {
//    if (sequenceLength >= i) {
//        break;
//    }
//    
//    var foundRemainders = [Int](count: i, repeatedValue: 0)
//    var value = 1;
//    var position = 0;
//    
//    while (foundRemainders[value] == 0 && value != 0) {
//        foundRemainders[value] = position;
//        value *= 10;
//        value %= i;
//        position++;
//    }
//    print(foundRemainders)
//    
//    if (position - foundRemainders[value] > sequenceLength) {
//        sequenceLength = position - foundRemainders[value];
//    }
//}
//print(sequenceLength)

//---------------------------------------------------------------------------------------
//---------------------------------------TASK-25-----07-02-2016----------------------------
//----------------------------------------------------------------------------------------

//let length = 1000
//var temp = [Int](count: length, repeatedValue: 0)
//temp[0] = 1
//var previousFibonacci = [Int](count: length, repeatedValue: 0)
//previousFibonacci[0] = 1
//
//var fibonacci = [Int](count: length, repeatedValue: 0)
//fibonacci[0] = 1
//
//for var k = 3; fibonacci[fibonacci.count-1] == 0; k++ {
//    previousFibonacci = temp
//    temp = fibonacci
//    
//    for var i = 0; i < fibonacci.count; i++ {
//        fibonacci[i] += previousFibonacci[i]
//        if fibonacci[i] >= 10 {
//            fibonacci[i] -= 10
//            fibonacci[i+1]++
//        }
//    }
//    print(k)
//}

//func addDecimals(firstNum: [Int], secondNum: [Int]) -> [Int] {
//
//    var resultNum = [Int]()
//
//    let num1Length = firstNum.count
//    let num2Length = secondNum.count
//
//    let maxLength = max(num1Length, num2Length)
//
//    var carry = 0
//    for i in 0..<maxLength{
//        let m = i < num1Length ? firstNum[num1Length - i - 1] : 0
//        let n = i < num2Length ? secondNum[num2Length - i - 1] : 0
//        let b = m + n + carry
//        resultNum += [b % 10]
//        carry = b / 10
//    }
//    if(carry != 0) {
//        resultNum += [carry]
//    }
//
//    return resultNum.reverse()
//}
//
////
//func fibNDigitNumberIndex(numberOfDigits: Int) -> Int {
//    var firstNum = [1]
//    var secondNum = [1]
//    var temp:[Int] = []
//    var index = 2
//    while numberOfDigits > secondNum.count {
//        temp = secondNum
//        secondNum = addDecimals(firstNum, secondNum: secondNum)
//        firstNum = temp
//        index++
//        print(secondNum)
//    }
//    
//    return index
//    
//}
//fibNDigitNumberIndex(30)

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-24-----07-02-2016----------------------------
//----------------------------------------------------------------------------------------


//var lst = [0,1,2,3,4,5,6,7,8,9]
//var globalLST = [String]()
//func addItem() {
//    print(lst)
//    var res = ""
//    for item in lst{
//        res += "\(item)"
//    }
//    globalLST.append(res)
//}
//
//
//func swapp(a: Int, b: Int) {
//    let temp = lst[a]
//    lst[a] = lst[b]
//    lst[b] = temp
//}
//
//func heapPermutation(n: Int){
//    if n == 1{
//        addItem()
//    } else {
//        for i in 0..<n {
//            heapPermutation(n-1)
//            if n % 2 == 1 {
//                swapp(0, b: n-1)
//            } else {
//                swapp(i, b: n-1)
//            }
//        }
//    }
//}
//
//heapPermutation(lst.count)d
//let allPermutations = globalLST.sort(<)
//
//print(globalLST[1000000])
//print(globalLST[999999])

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-41-----07-02-2016----------------------------
//----------------------------------------------------------------------------------------


//var lst = [1,2,3,4,5,6,7]
//var globalLST = [Int]()
//func addItem() {
//    if lst[0] != 0 {
//        var res = ""
//        for item in lst{
//            res += "\(item)"
//        }
//        globalLST.append(Int(res)!)
//    }
//    
//}
//func swapp(a: Int, b: Int) {
//    let temp = lst[a]
//    lst[a] = lst[b]
//    lst[b] = temp
//}
//
//func heapPermutation(n: Int){
//    if n == 1{
//        addItem()
//    } else {
//        for i in 0..<n {
//            heapPermutation(n-1)
//            if n % 2 == 1 {
//                swapp(0, b: n-1)
//            } else {
//                swapp(i, b: n-1)
//            }
//        }
//    }
//}
//
//heapPermutation(lst.count)
//let numbers = globalLST.sort(>)
//
//
//func uniqueNumber(num: Int) -> Bool {
//    let fuck = String(num).characters
//    let numUniqueDigits = Set(fuck.map{Int(String($0))!}).count
//    return fuck.count == numUniqueDigits ? true : false
//}
//
//func isPrime(num: Int) -> Bool {
//    if num <= 1 {
//        return false
//    } else if num <= 3 {
//        return true
//    } else if num % 2 == 0 || num % 3 == 0 {
//        return false
//    }
//    
//    var i = 5
//    while i*i <= num {
//        if num % i == 0  {
//            return false
//        }
//        i = i + 1
//    }
//    return true
//}
//for i in numbers {
//    print(i)
//    if isPrime(i) {
//        print(i)
//        print("fuck yeah")
//        break
//    }
//}

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-23-----03-02-2016----------------------------
//----------------------------------------------------------------------------------------

//let LIMIT = 100
////Find the sum of all integers which cannot be writen as a sum of ttwo abundant numbers 1..<28123
//
////0
////let it be list from 0 to LIMIT
//var numbers = [Int](count: LIMIT, repeatedValue: 0)
//for i in 0..<numbers.count {
//    numbers[i] = i+1
//}
//
////1
//
////1.1
//func amiacbleDivisors(number: Int) -> ([Int], sum: Int) {
//    var divisors = [1]
//    var rightBound = number
//    var i = 2
//    var count = 1
//
//        while(i < rightBound) {
//            if (number % i == 0){
//                let divisor = number / i
//                rightBound = divisor
//                if divisor != i {
//                    divisors += [i, divisor]
//                    count += i + divisor
//                } else {
//                    divisors += [i]
//                    count += i
//                }
//            }
//            i++
//
//        }
//    return (divisors, count)
//}
//func isAbundantNumber(n: Int) -> Bool {
//    let sum = amiacbleDivisors(n).1
//    //let divisors = amiacbleDivisors(n).0
//    //print("Number - \(n) : Divisors(\(divisors)) = \(sum)")
//    if sum > n{
//        return true
//    }
//    return false
//}
////1.2
//var abundantNumbers = [Int]()
//for i in 1...(LIMIT-1) {
//    if isAbundantNumber(i){
//        //print(i)
//        abundantNumbers.append(i)
//    }
//}
//
////print(abundantNumbers)
////find all (abundant numbers * 2) in list less then LIMIT and mart 0 in a list
//for i in 0..<abundantNumbers.count{
//    for j in i..<abundantNumbers.count{
//        let ab = abundantNumbers[i] + abundantNumbers[j]
//        if ab <= LIMIT {
//            numbers[ab-1] = 0
//        } else {
//            break
//        }
//    }
//}
//
////2
////list.reduce(0, combine: +)
////print(numbers)
////numbers[LIMIT-1 ]
//print(numbers.reduce(0, combine: +))

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-22-----03-02-2016----------------------------
//----------------------------------------------------------------------------------------

//extension String {
//    func replace(string: String, replacement: String) -> String {
//        return self.stringByReplacingOccurrencesOfString(string, withString: replacement, options: NSStringCompareOptions.LiteralSearch, range: nil)
//    }
//
//    func removeDoubleBrackets() -> String {
//        return self.replace("\"", replacement: "")
//
//    }
//}
//
//class File {
//    class func open(path: String, encoding: NSStringEncoding = NSUTF8StringEncoding) -> String? {
//        if NSFileManager().fileExistsAtPath(path) {
//            do {
//                return try String(contentsOfFile: path, encoding: encoding)
//            } catch let error as NSError {
//                print(error.code)
//                return nil
//            }
//        }
//        return  nil
//    }
//    class func save(path: String, _ content: String, encoding: NSStringEncoding = NSUTF8StringEncoding) -> Bool {
//        do {
//            try content.writeToFile(path, atomically: true, encoding: encoding)
//            return true
//        } catch let error as NSError {
//            print(error.code)
//            return false
//        }
//    }
//}
//
//var data: String = ""
//
//
////let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters.map({ Character(String($0)) })
////print(alphabet)
////
////var alphabetDict = [Character : Int]()
////for i in 0..<alphabet.count{
////    alphabetDict[alphabet[i]] = i + 1
////}
////print(alphabetDict.sort{ $0.1 < $1.1})
//
//if let loadedData = File.open("\(NSHomeDirectory())/p022_names.txt") {
//    data = loadedData.removeDoubleBrackets()
//    print(loadedData)
//} else {
//    print("error reading file")
//}
//let arrayLoadedData = data.componentsSeparatedByString(",").sort()
//var position = 1
//var globalSum = 0
//for name in arrayLoadedData {d
//    var sumOfName = 0
//    
//    for char in name.characters {
//        sumOfName += Int(String(char).unicodeScalars.first!.value) - 64
//    }
//    globalSum += (sumOfName * position)
//    position++
//}
//print(globalSum)
//871198282

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-21-----02-02-2016----------------------------
//----------------------------------------------------------------------------------------

//[1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110].reduce(0, combine: +)
//
//(220, 284)
//
//func amiacbleDivisors(number: Int, prevNum: Int) -> [Int] {
//    var divisors = [1]
//    var rightBound = number
//    var i = 2
//    var sum = 0
//    if prevNum > 0 {
//        while(i < rightBound) {
//            print("fuck is \(prevNum)")
//            if (number % i == 0){
//                let divisor = number / i
//                rightBound = divisor
//                divisors += [i, divisor]
//                sum += i + divisor
//            }
//            i++
//            if sum > prevNum {
//                return [-1]
//            }
//        }
//    }
//    else {
//        while(i < rightBound) {
//            if (number % i == 0){
//                let divisor = number / i
//                rightBound = divisor
//                divisors += [i, divisor]
//            }
//            i++
//                
//        }
//    }
//    return divisors
//}
////return [102,121] if amiacble and [-1] if not
//func isAmiacbleNumber(number: Int) -> [Int] {
//    let divisors = amiacbleDivisors(number, prevNum: -1)
//    let sumOfDivisors = divisors.reduce(0, combine: +)
//    let divisorsOfSumOfDivisors = amiacbleDivisors(sumOfDivisors, prevNum: number)
//    let sumOfdivisorsOfSumOfDivisors = divisorsOfSumOfDivisors.reduce(0, combine: +)
//    if number == sumOfdivisorsOfSumOfDivisors {
//        return [sumOfDivisors, number].sort()
//    }
//    print(divisors)
//    return [-1]
//}
//var sum = 0
//let num = 496
//for i in 1..<num {
//    if num % i == 0 {
//        sum += i
//    }
//}
//print(sum)
//if isAmiacbleNumber(496) == [496, 496] {
//    "Test Passed, isAmiacbleNumber is working"
//} else {
//    "Test FAILED, isAmiacbleNumber is not working"
//}
//----------------------------------------------------------------------------------------
//---------------------------------------TASK-20-----02-02-2016----------------------------
//----------------------------------------------------------------------------------------

// 100! 
//
//func multiplication2DigitString(first: String, second: String) -> String {
//    print("first is \(first)")
//    print("second is \(second)")
//    let firstNumArray: [Int] = first.characters.map{ Int("\($0)")! }.reverse()
//    let secondNumArray: [Int] = second.characters.map{ Int("\($0)")! }.reverse()
//
//    var carry = 0
//    var count = 0
//    var result = String()
//    var resultMult = [[Int]]()
//    for i in secondNumArray {
//        resultMult.append([Int]())
//        for j in firstNumArray {
//            let res = i*j + carry
//            if res >= 10 {
//                resultMult[count].append(res%10)
//                carry = res / 10
//            } else {
//                resultMult[count].append(res)
//                carry = 0
//            }
//        }
//        if carry != 0 {
//            resultMult[count].append(carry)
//        }
//        carry = 0
//        resultMult[count] = [Int](count: count, repeatedValue: 0) + resultMult[count]
//        count++
//    }
//    for result in resultMult {
//        print(result)
//    }
//    carry = 0
//    for i in 0..<resultMult.last!.count {
//        
//        var sum = 0
//        for j in 0..<count {
//            if i < resultMult[j].count {
//                sum += resultMult[j][i]
//            }
//        }
//        sum += carry
//        if sum >= 10 {
//            result += "\(sum%10)"
//            carry = sum / 10
//        } else {
//            result += "\(sum)"
//            carry = 0
//        }
//    }
//    if carry != 0 {
//        result += "\(carry)"
//    }
//    print("result is \(String(result.characters.reverse()))")
//    print("----------------------------------")
//    return String(result.characters.reverse())
//}
//
//let first = 4789011600
//let second = 13
////if multiplication2DigitString(String(first), second: String(second)) == String(first*second) {
////    "Test Passed, multiplication2DigitString is working"
////} else {
////    "Test FAILED, multiplication2DigitString is not working"
////}
//
//func factorialBigNumbers(factNum: Int) -> String {
//    if(factNum < 0){
//        return "fackOff"
//    } else if(factNum == 1){
//        return "1"
//    }
//    var result = "1"
//    for i in 2...factNum{
//        result = multiplication2DigitString(result, second: String(i))
//    }
//    
//    return result
//}
//let factorial = 100
////if factorialBigNumbers(factorial) == "265252859812191058636308480000000" {
////    "Test Passed, factorialBigNumbers is working"
////} else {
////    "Test FAILED, factorialBigNumbers is not working"
////}
//
////let finalResult = factorialBigNumbers(factorial)
//let finalResult = "93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000"
//let resultProblem = finalResult.characters.map{ Int("\($0)")! }.reduce(0, combine: +)
//print(resultProblem)

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-19-----30-01-2016----------------------------
//----------------------------------------------------------------------------------------
//
//var gregorian = NSCalendar(identifier:NSCalendarIdentifierGregorian)
//var c = NSDateComponents()
//
//let dateFormatter = NSDateFormatter()
//dateFormatter.dateFormat = "EEEE"
//var count = 0
//for year in 1901...2000 {
//    var c = NSDateComponents()
//    for j in 1...12{
//        c.year = year
//        c.month = j
//        c.day = 2
//        var date = gregorian!.dateFromComponents(c)
//        if (dateFormatter.stringFromDate(date!) == "Sunday"){
//            count++
//        }
//        print(date!)
//    }
//}
//print(count)
//----------------------------------------------------------------------------------------
//---------------------------------------TASK-18-----30-01-2016----------------------------
//----------------------------------------------------------------------------------------

//let table18 = [[75], [95, 64], [17, 47, 82], [18, 35, 87, 10], [20, 4, 82, 47, 65], [19, 1, 23, 75, 3, 34], [88, 2, 77, 73, 7, 63, 67], [99, 65, 4, 28, 6, 16, 70, 92], [41, 41, 26, 56, 83, 40, 80, 70, 33], [41, 48, 72, 33, 47, 32, 37, 16, 94, 29], [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14], [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57], [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48], [63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31], [4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23]]
//
//
//var tableInput = table18
//
//for i in (tableInput.count-1-1).stride(through: 0, by: -1){
//    print(i)
//    
//    for j in 0..<tableInput[i].count {
//        tableInput[i][j] = tableInput[i][j] + max(tableInput[i+1][j], tableInput[i+1][j+1])
//    }
//}
//print(tableInput[0][0])

//pro1074

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-17-----29-01-2016----------------------------
//----------------------------------------------------------------------------------------

//extension String {
//    func replace(string: String, replacement: String) -> String {
//        return self.stringByReplacingOccurrencesOfString(string, withString: replacement, options: NSStringCompareOptions.LiteralSearch, range: nil)
//    }
//    
//    func removeWhiteSpacesAndSlashLines() -> String {
//        return self.replace(" ", replacement: "").replace("-", replacement: "")
//
//    }
//}
//
//
//let numNames = [
//    
//    0 : "Zero",
//    1 : "One",
//    2 : "Two",
//    3 : "Three",
//    4 : "Four",
//    5 : "Five",
//    6 : "Six",
//    7 : "Seven",
//    8 : "Eight",
//    9 : "Nine",
//    10 : "Ten",
//    11 : "Eleven",
//    12 : "Twelve",
//    13 : "Thirteen",
//    14 : "Fourteen",
//    15 : "Fifteen",
//    16 : "Sixteen",
//    17 : "Seventeen",
//    18 : "Eighteen",
//    19 : "Nineteen",
//    20 : "Twenty",
//    30 : "Thirty",
//    40 : "Forty",
//    50 : "Fifty",
//    60 : "Sixty",
//    70 : "Seventy",
//    80 : "Eighty",
//    90 : "Ninety"
//    
//]
//
//func number2Characters(number: Int, strRes: String) -> String {
//
//    var stringResult = ""
//    let numberLength = number > 0 ? Int(log10(Double(number))) + 1 : 1
//
//    
//    switch numberLength {
//    case 1:
//        stringResult += numNames[number]!
//        break
//    case 2:
//        if number < 20  || number % 10 == 0 {
//            stringResult += numNames[number]!
//        } else {
//            stringResult += numNames[ number - number % 10]! + "-" + number2Characters(number % 10, strRes: stringResult)
//        }
//        break
//    case 3:
//        stringResult += numNames[ number / 100]! + " Hundred"
//        if number % 100 != 0 {
//            stringResult += " and " + number2Characters(number % 100, strRes: stringResult)
//        }
//        break
//    case 4:
//        stringResult += numNames[ number / 1000]! + " Thousand"
//        if number % 1000 != 0 {
//            stringResult += " " + number2Characters(number % 1000, strRes: stringResult)
//        }
//        break
//    default:
//        break
//    }
//    
//    return stringResult
//}
//
//func task17(rangeEnd: Int) -> Int {
//    
//    var sumLengthOfCharactersInNumber = 0
//    
//    for i in 1...rangeEnd {
//        sumLengthOfCharactersInNumber += number2Characters(i, strRes: "").removeWhiteSpacesAndSlashLines().characters.count
//    }
//    return sumLengthOfCharactersInNumber
//}
//
//let test7 = task17(10)
//let test3 = number2Characters(1000, strRes: "")
//let test4 = number2Characters(129, strRes: "")
//let test41 = number2Characters(100, strRes: "")
//let test5 = number2Characters(119, strRes: "")
//let test6 = number2Characters(40, strRes: "")

//
//let formatter = NSNumberFormatter()
//formatter.numberStyle = .SpellOutStyle
//
//print (formatter.stringFromNumber(NSNumber(integer: 12232))!)
//
//print (formatter.stringFromNumber(12)!)
//

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-16-----28-01-2016----------------------------
//----------------------------------------------------------------------------------------


//func getDecimal(s: String, index: Int) -> Int {
//    if index < 0 || index >= s.characters.count {
//        return 0
//    }
//    return Int(String(s[s.startIndex.advancedBy(index)]))!
//}
//
//func addDecimals(str1: String, str2: String) -> String {
//    
//    var resultString = String()
//    let str1Length = str1.characters.count
//    let str2Length = str2.characters.count
//
//    let maxLength = max(str1Length, str2Length)
//    
//    var carry = 0
//    for i in 0..<maxLength{
//        let m = getDecimal(str1, index: str1Length - i - 1)
//        let n = getDecimal(str2, index: str2Length - i - 1)
//        let b = m + n + carry
//        resultString += "\(b % 10)"
//        carry = b / 10
//    }
//    if(carry != 0) {
//        resultString += "\(carry)"
//    }
//    
//    return String(resultString.characters.reverse())
//}
//
//func sumDigits2pow(pow: Int) -> Int {
//    var currentString = "1"
//    for _ in 0..<pow{
//        currentString = addDecimals(currentString, str2: currentString)
//    }
//    var sum = 0
//    for i in currentString.characters {
//        sum += Int("\(i)")!
//    }
//    return sum
//}
//
//sumDigits2pow(30)
//
//
//extension String {
//    
//    subscript (i: Int) -> Character {
//        return self[self.startIndex.advancedBy(i)]
//    }
//    
//    subscript (i: Int) -> String {
//        return String(self[i] as Character)
//    }
//    
//    subscript (r: Range<Int>) -> String {
//        let start = startIndex.advancedBy(r.startIndex)
//        let end = start.advancedBy(r.endIndex - r.startIndex)
//        return self[Range(start: start, end: end)]
//    }
//}

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-15-----27-01-2016----------------------------
//----------------------------------------------------------------------------------------

//let rows = 20
//
//var row = [1,1]
//while(row.count != 41) {
//    var newRow = [Int]()
//    newRow.append(1)
//    for i in 0..<row.count-1{
//        newRow.append(row[i]+row[i+1])
//    }
//    newRow.append(1)
//    row = newRow
//    print(row.count, row)
//}
//for num in 0..<row.count {
//    print(num, row[num])
//}
//print(row.maxElement())


//----------------------------------------------------------------------------------------
//---------------------------------------TASK-14-----27-01-2016----------------------------
//----------------------------------------------------------------------------------------
//var b =  1 == 1 ? 34 : 12
//
//var number = 1000000
//var maxNumOfElements = -1
//
//func countNum(num: Int) -> Int {
//    var count = 1
//    var curNum = num
//    while curNum > 1 {
//        print(curNum)
//        count++
//        curNum = curNum % 2 == 0 ? curNum/2 : 3 * curNum + 1
//        print(curNum)
//
//    }
//    return count
//}
//countNum(13)

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-13-----27-01-2016----------------------------
//----------------------------------------------------------------------------------------


//let hey = ["37107287533902102798797998220837590246510135740250", "46376937677490009712648124896970078050417018260538", "74324986199524741059474233309513058123726617309629", "91942213363574161572522430563301811072406154908250", "23067588207539346171171980310421047513778063246676", "89261670696623633820136378418383684178734361726757", "28112879812849979408065481931592621691275889832738", "44274228917432520321923589422876796487670272189318", "47451445736001306439091167216856844588711603153276", "70386486105843025439939619828917593665686757934951", "62176457141856560629502157223196586755079324193331", "64906352462741904929101432445813822663347944758178", "92575867718337217661963751590579239728245598838407", "58203565325359399008402633568948830189458628227828", "80181199384826282014278194139940567587151170094390", "35398664372827112653829987240784473053190104293586", "86515506006295864861532075273371959191420517255829", "71693888707715466499115593487603532921714970056938", "54370070576826684624621495650076471787294438377604", "53282654108756828443191190634694037855217779295145", "36123272525000296071075082563815656710885258350721", "45876576172410976447339110607218265236877223636045", "17423706905851860660448207621209813287860733969412", "81142660418086830619328460811191061556940512689692", "51934325451728388641918047049293215058642563049483", "62467221648435076201727918039944693004732956340691", "15732444386908125794514089057706229429197107928209", "55037687525678773091862540744969844508330393682126", "18336384825330154686196124348767681297534375946515", "80386287592878490201521685554828717201219257766954", "78182833757993103614740356856449095527097864797581", "16726320100436897842553539920931837441497806860984", "48403098129077791799088218795327364475675590848030", "87086987551392711854517078544161852424320693150332", "59959406895756536782107074926966537676326235447210", "69793950679652694742597709739166693763042633987085", "41052684708299085211399427365734116182760315001271", "65378607361501080857009149939512557028198746004375", "35829035317434717326932123578154982629742552737307", "94953759765105305946966067683156574377167401875275", "88902802571733229619176668713819931811048770190271", "25267680276078003013678680992525463401061632866526", "36270218540497705585629946580636237993140746255962", "24074486908231174977792365466257246923322810917141", "91430288197103288597806669760892938638285025333403", "34413065578016127815921815005561868836468420090470", "23053081172816430487623791969842487255036638784583", "11487696932154902810424020138335124462181441773470", "63783299490636259666498587618221225225512486764533", "67720186971698544312419572409913959008952310058822", "95548255300263520781532296796249481641953868218774", "76085327132285723110424803456124867697064507995236", "37774242535411291684276865538926205024910326572967", "23701913275725675285653248258265463092207058596522", "29798860272258331913126375147341994889534765745501", "18495701454879288984856827726077713721403798879715", "38298203783031473527721580348144513491373226651381", "34829543829199918180278916522431027392251122869539", "40957953066405232632538044100059654939159879593635", "29746152185502371307642255121183693803580388584903", "41698116222072977186158236678424689157993532961922", "62467957194401269043877107275048102390895523597457", "23189706772547915061505504953922979530901129967519", "86188088225875314529584099251203829009407770775672", "11306739708304724483816533873502340845647058077308", "82959174767140363198008187129011875491310547126581", "97623331044818386269515456334926366572897563400500", "42846280183517070527831839425882145521227251250327", "55121603546981200581762165212827652751691296897789", "32238195734329339946437501907836945765883352399886", "75506164965184775180738168837861091527357929701337", "62177842752192623401942399639168044983993173312731", "32924185707147349566916674687634660915035914677504", "99518671430235219628894890102423325116913619626622", "73267460800591547471830798392868535206946944540724", "76841822524674417161514036427982273348055556214818", "97142617910342598647204516893989422179826088076852", "87783646182799346313767754307809363333018982642090", "10848802521674670883215120185883543223812876952786", "71329612474782464538636993009049310363619763878039", "62184073572399794223406235393808339651327408011116", "66627891981488087797941876876144230030984490851411", "60661826293682836764744779239180335110989069790714", "85786944089552990653640447425576083659976645795096", "66024396409905389607120198219976047599490197230297", "64913982680032973156037120041377903785566085089252", "16730939319872750275468906903707539413042652315011", "94809377245048795150954100921645863754710598436791", "78639167021187492431995700641917969777599028300699", "15368713711936614952811305876380278410754449733078", "40789923115535562561142322423255033685442488917353", "44889911501440648020369068063960672322193204149535", "41503128880339536053299340368006977710650566631954", "81234880673210146739058568557934581403627822703280", "82616570773948327592232845941706525094512325230608", "22918802058777319719839450180888072429661980811197", "77158542502016545090413245809786882778948721859617", "72107838435069186155435662884062257473692284509516", "20849603980134001723930671666823555245252804609722", "53503534226472524250874054075591789781264330331690"]
//
//let values = hey.map{ Double($0)!}
//print(values)
//let result = (values.reduce(0, combine: +))
//----------------------------------------------------------------------------------------
//---------------------------------------TASK-12-----26-01-2016----------------------------
//----------------------------------------------------------------------------------------

//func sumOfSequence(n: Int) -> Int? {
//    if n > 0 {
//        return n * (n + 1) / 2
//    }
//    return nil
//}
//func numberOfDivisors(num: Int) -> Int {
//    var nod = 0
//    let sqrtt = Int(sqrt(Double(num)))
//    
//    for var i = 1; i <= sqrtt; i++ {
//        if(num % i == 0){
//            nod += 2;
//        }
//    }
//    //Correction if the number is a perfect square
//    if (sqrtt * sqrtt == num) {
//        nod--;
//    }
//    
//    return nod;
//}
//
//var maxVal = -1
//var i = 1
//var count = 0
//var num = 1
//var numOfDiv = true
//while (numOfDiv) {
//    let ewq = numberOfDivisors(num)
//    if (ewq > 500) {
//        numOfDiv = false
//        print(ewq, num)
//    }
//    i++
//    num = sumOfSequence(i)!
//}

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-11-----26-01-2016----------------------------
//----------------------------------------------------------------------------------------

//let LineLength = 4
//
//var data: [[Int]] = [[8, 2, 22, 97, 38, 15, 0, 40, 0, 75, 4, 5, 7, 78, 52, 12, 50, 77, 91, 8], [49, 49, 99, 40, 17, 81, 18, 57, 60, 87, 17, 40, 98, 43, 69, 48, 4, 56, 62, 0], [81, 49, 31, 73, 55, 79, 14, 29, 93, 71, 40, 67, 53, 88, 30, 3, 49, 13, 36, 65], [52, 70, 95, 23, 4, 60, 11, 42, 69, 24, 68, 56, 1, 32, 56, 71, 37, 2, 36, 91], [22, 31, 16, 71, 51, 67, 63, 89, 41, 92, 36, 54, 22, 40, 40, 28, 66, 33, 13, 80], [24, 47, 32, 60, 99, 3, 45, 2, 44, 75, 33, 53, 78, 36, 84, 20, 35, 17, 12, 50], [32, 98, 81, 28, 64, 23, 67, 10, 26, 38, 40, 67, 59, 54, 70, 66, 18, 38, 64, 70], [67, 26, 20, 68, 2, 62, 12, 20, 95, 63, 94, 39, 63, 8, 40, 91, 66, 49, 94, 21], [24, 55, 58, 5, 66, 73, 99, 26, 97, 17, 78, 78, 96, 83, 14, 88, 34, 89, 63, 72], [21, 36, 23, 9, 75, 0, 76, 44, 20, 45, 35, 14, 0, 61, 33, 97, 34, 31, 33, 95], [78, 17, 53, 28, 22, 75, 31, 67, 15, 94, 3, 80, 4, 62, 16, 14, 9, 53, 56, 92], [16, 39, 5, 42, 96, 35, 31, 47, 55, 58, 88, 24, 0, 17, 54, 24, 36, 29, 85, 57], [86, 56, 0, 48, 35, 71, 89, 7, 5, 44, 44, 37, 44, 60, 21, 58, 51, 54, 17, 58], [19, 80, 81, 68, 5, 94, 47, 69, 28, 73, 92, 13, 86, 52, 17, 77, 4, 89, 55, 40], [4, 52, 8, 83, 97, 35, 99, 16, 7, 97, 57, 32, 16, 26, 26, 79, 33, 27, 98, 66], [88, 36, 68, 87, 57, 62, 20, 72, 3, 46, 33, 67, 46, 55, 12, 32, 63, 93, 53, 69], [4, 42, 16, 73, 38, 25, 39, 11, 24, 94, 72, 18, 8, 46, 29, 32, 40, 62, 76, 36], [20, 69, 36, 41, 72, 30, 23, 88, 34, 62, 99, 69, 82, 67, 59, 85, 74, 4, 36, 16], [20, 73, 35, 29, 78, 31, 90, 1, 74, 31, 49, 71, 48, 86, 81, 16, 23, 57, 5, 54], [1, 70, 54, 71, 83, 51, 54, 69, 16, 92, 33, 48, 61, 43, 52, 1, 89, 19, 67, 48]]

//var possibleMax = [Int]()
//for i in 0...data.count - 1 {
//    for j in 0...data[0].count - 1 - LineLength {
//         possibleMax.append( data[i][j] * data[i][j+1] * data[i][j+2] * data[i][j+3] )
//        if data.count - i > LineLength {
//            possibleMax.append( data[i][j] * data[i+1][j+1] * data[i+2][j+2] * data[i+3][j+3] )
//            possibleMax.append( data[i][j] * data[i+1][j] * data[i+2][j] * data[i+3][j] )
//            possibleMax.append( data[i][j+3] * data[i+1][j+2] * data[i+2][j+1] * data[i+3][j] )
//        }
//    }
//}
//
//print("Ja ja gut")
//print(possibleMax.maxElement())

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-10-----21-01-2016----------------------------
//----------------------------------------------------------------------------------------

//let n = 20000000 * deleteThisToRun
//let below = 2000000
//var values = [Int](count: n, repeatedValue: 0)
//for i in 0...values.count - 1 {
//    values[i] = i
//}
//values[1] = 0
//var m = 2
//var count = 0
//while m < n {
//    if values[m] != 0 {
//        var j = m * 2
//        while j < n {
//            values[j] = 0
//            j += m
//        }
//        count++
//    }
//    if values[m] > below {
//        break
//    }
//    m++
//}
//print(count)
//var primes = [Int]()
//for value in values {
//    if value != 0 {
//        if value < below{
//            primes.append(value)
//        } else {
//            break
//        }
//    }
//    
//}
//print("Last Prime below \(below) = \(primes.last!)")
//print("Sum = \(primes.reduce(0, combine: +))")

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-9-----21-01-2016----------------------------
//----------------------------------------------------------------------------------------


//for i in 1...1000{
//    for j in 1...1000{
//        if sqrt(Double(i*i + j*j)) + Double(i) + Double(j) == 1000.0{
//            print("\(i, j, sqrt(Double(i*i + j*j)))")
//        }
//    }
//}
//
//499*2*499

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-8-----21-01-2016----------------------------
//----------------------------------------------------------------------------------------

//let num1000Digits = "73167176531330624919225119674426574742355349194934" +
//"96983520312774506326239578318016984801869478851843" +
//"85861560789112949495459501737958331952853208805511" +
//"12540698747158523863050715693290963295227443043557" +
//"66896648950445244523161731856403098711121722383113" +
//"62229893423380308135336276614282806444486645238749" +
//"30358907296290491560440772390713810515859307960866" +
//"70172427121883998797908792274921901699720888093776" +
//"65727333001053367881220235421809751254540594752243" +
//"52584907711670556013604839586446706324415722155397" +
//"53697817977846174064955149290862569321978468622482" +
//"83972241375657056057490261407972968652414535100474" +
//"82166370484403199890008895243450658541227588666881" +
//"16427171479924442928230863465674813919123162824586" +
//"17866458359124566529476545682848912883142607690042" +
//"24219022671055626321111109370544217506941658960408" +
//"07198403850962455444362981230987879927244284909188" +
//"84580156166097919133875499200524063689912560717606" +
//"05886116467109405077541002256983155200055935729725" +
//"71636269561882670428252483600823257530420752963450"
//
//
//let arr = num1000Digits.characters.map({ Int(String($0))!})
//
//let series = 13
//var largestProductInSeries = -1
//for var i = 0; i < arr.count - series - 1; i++ {
//    var possibleLargestProductInSeries = 1
//    for j in 0..<series {
//        if arr[i + j] == 0 {
//            i = i + j
//            break
//        }else {
//            possibleLargestProductInSeries *= arr[i + j]
//        }
//    }
//    if(possibleLargestProductInSeries != 1) && largestProductInSeries < possibleLargestProductInSeries{
//        largestProductInSeries = possibleLargestProductInSeries
//    }
//}
//print(largestProductInSeries)

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-7-----21-01-2016----------------------------
//----------------------------------------------------------------------------------------

//let n = 120000
//var values = [Int](count: n, repeatedValue: 0)
//for i in 0...values.count - 1 {
//    values[i] = i
//}
//values[1] = 0
//var m = 2
//var count = 0
//while m < n {
//    if values[m] != 0 {
//        var j = m * 2
//        while j < n {
//            values[j] = 0
//            j += m
//        }
//        count++
//    }
//    m++
//}
//
//var primes = [Int]()
//for value in values {
//    if value != 0 {
//        primes.append(value)
//    }
//}
//print(primes[10000])

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-6-----20-01-2016----------------------------
//----------------------------------------------------------------------------------------

//func task6SumSquareDifference(number: Int) -> Int {
//
//    //Use formula n*(n+1)/2 = 1 + 2 + 3 + ... + n
//    // (1 + 2 + 3 + ... 100) = n*(n+1)/2 = 100*(100+1)/2 = 5050
//    //Use formula n*(n+1)*(2n+1)/6 = 1^2 + 2^2 + ... + n^2
//    // (1^2 + 2^2 + 3^2 + ... 100^2) = 100*(100+1)*(2*100+1)/6
//    let sumOfSquares = number * (number + 1) * (2 * number + 1) / 6
//    let squareOfSum = Int(pow(Double(number * (number + 1) / 2), 2))
//   
//    return squareOfSum - sumOfSquares
//}
//task6SumSquareDifference(100)

//----------------------------------------------------------------------------------------
//---------------------------------------TASK-5-----20-01-2016----------------------------
//----------------------------------------------------------------------------------------

//func task5lcm(numberRangeEnd: Int) -> Int {
//    func isPrime(number: Int, knownPrimes: [Int]) -> Bool {
//        
//        if knownPrimes.contains(number){
//            return true
//        }
//        
//        for i in 2..<number {
//            if number % i == 0 {
//                return false
//            }
//        }
//        
//        return true
//    }
//    func isEveryNumberDevideLCM(lcm: Int, number: Int) -> Bool {
//        for var i = number-1; i > 1; i-- {
//            if lcm % i != 0 {
//                return false
//            }
//        }
//        return true
//    }
//    var knownPrimes = [Int]()
//    for i in 2..<numberRangeEnd {
//        if isPrime(i, knownPrimes: knownPrimes){
//            knownPrimes.append(i)
//        }
//    }
//    
//    var currentResult = knownPrimes.reduce(1, combine: *)
//    
//    for var i = numberRangeEnd-1; i > 1; i-- {
//        if currentResult % i != 0 {
//            currentResult *= i
//        }
//    }
//    
//    for prime in knownPrimes{
//        while (isEveryNumberDevideLCM((currentResult / prime), number: numberRangeEnd)){
//            currentResult /= prime
//        }
//    }
//    return currentResult
//}
//task5lcm(20)
//----------------------------------------------------------------------------------------
//---------------------------------------TASK-3-----19-01-2016----------------------------
//----------------------------------------------------------------------------------------


//
//func task3MaxPrimeFactors(number: Int) -> Int {
//    
//    var primeFactors = [Int]()
//    var num = number
//    repeat{
//        
//        var primeIsFound = false
//        var primeFactor = 2
//        repeat{
//            if(num % primeFactor == 0){
//                primeIsFound = true
//                primeFactors.append(primeFactor)
//                num = num / primeFactor
//                print(primeFactor)
//            }
//            primeFactor++
//            
//        }while(!primeIsFound)
//        print("Num = \(num)")
//    
//    } while(num > 1)
//    
//    
//    //return largest prime factor
//    return primeFactors.maxElement()!
//}
//
//task3MaxPrimeFactors(600851475143)



//----------------------------------------------------------------------------------------
//---------------------------------------TASK-2-----19-01-2016----------------------------
//----------------------------------------------------------------------------------------


//func task2FibonacciEvenSumUnderN(under: Int) -> Int {
//
//    var currentFibonacciValue = 1
//    var previousFibonacciValue = 1
//    var swap = 0
//    var sum = 0
//    
//    repeat{
//        swap = currentFibonacciValue
//        currentFibonacciValue += previousFibonacciValue
//        previousFibonacciValue = swap
//        if( currentFibonacciValue % 2 == 0) {
//            sum += currentFibonacciValue
//        }
//    }while (currentFibonacciValue < under)
//    
//    
//    return sum
//}
//
//task2FibonacciEvenSumUnderN(4000000)


//----------------------------------------------------------------------------------------
//---------------------------------------TASK-1-----18-01-2016----------------------------
//----------------------------------------------------------------------------------------

//func task1MultipliesOfNumbers(var multiples: [Int], below: Int) -> Int {
//
//    //In case if duplicate values appears: [3,4,4,2,1] -> [3,4,2,1]
//    multiples = Array(Set(multiples))
//
//    var sumResult = 0
//    
//    //Use formula n*(n+1)/2
//    //Sum of all numbers < 1000 divisble by 3
//    //(3 + 6 + 9 + ... + 999) = 3 * (1 + 2 + 3 + ... 333) = 3 * n*(n+1)/2 = 3 * 333*(333+1)/2
//    for multiple in multiples{
//        sumResult += multiple * ((below-1) / multiple * ((below-1) / multiple + 1))/2
//    }
//    print(sumResult)
//    //We need to subtract 3*5=15, because of condition OR
//    for (index, i) in multiples.enumerate(){
//        for j in multiples[(index+1)..<multiples.count] where i != j{
//            let multiple = i*j
//            print(multiple)
//            let itbe = multiple * ((below-1) / multiple * ((below-1) / multiple + 1))/2
//            sumResult -= itbe
//            print(sumResult)
//        }
//    }
//    return sumResult
//}
//func task1MultipliesOfNumbers2(multiples: [Int], below: Int) -> Int {
//    var sum = 0
//    for i in 0..<below {
//        for multiple in multiples {
//            if i % multiple == 0{
//                sum += i
//                print("i = \(i)\nsum = \(sum)")
//                break
//            }
//        }
//    }
//    return sum
//}
//
//task1MultipliesOfNumbers([3,5], below: 10)
//task1MultipliesOfNumbers2([3,5], below: 10)
