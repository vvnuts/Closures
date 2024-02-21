func randArrayOneToN(size : Int) -> [Int] {
    (1...size).map( {_ in Int.random(in: 1...100)} )
}

func getArray(_ names : String...) -> [String] {
    var array = [String] ()
    for name in names {
        array.append(name)
    }
    return array
}

let unsortedArray = randArrayOneToN(size: 12)
print("unsortedArray:")
print(unsortedArray)

print("sortedArray:")
print(unsortedArray.sorted() {$0 < $1})

print("sortedArrayReverse:")
print(unsortedArray.sorted() {$0 > $1})

let names = getArray("Emily", "Jacob", "Emma", "Michael", "Olivia", "William", "Sophia", "Alexander", "Ava", "James")
print(names.sorted() {$0.count < $1.count})

var nameDictionary = [Int: [String]]()

for name in names {
    let length = name.count
    if nameDictionary[length] != nil {
        nameDictionary[length]?.append(name)
    } else {
        nameDictionary[length] = [name]
    }
}

var dict: [Int: String] = [
    5: "James",
    6: "Sophia",
    7: "Michael",
    9: "Alexander"
]

func getValue(_ key: Int) {
    if let name = dict[key] {
        print("Key: \(key), Name: \(name)")
    } else {
        print("Name not found")
    }
}

print("Написать функцию, которая будет принимать ключ, выводить полученный ключ и значение")
getValue(4)
getValue(6)

func checkAndPrintArrays(stringArray: inout [String], numArray: inout [Int]) {
    if stringArray.isEmpty {
        stringArray.append("text")
    }

    if numArray.isEmpty {
        numArray.append(0)
    }

    print("String array: \(stringArray)")
    print("Num array: \(numArray)")
}

var stringArray = ["one", "two"]
var numArray = [Int]()

print("Написать функцию, которая принимает 2 массива (один строковый, второй - числовой) и проверяет их на пустоту: если пустой - то добавьте любое значения и выведите массив в консоль")
checkAndPrintArrays(stringArray: &stringArray, numArray: &numArray)