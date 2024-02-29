import UIKit

//let ile var arasında ki fark, varla olursa başka değişken tanımlanabilir, let ile yapılamaz.
var greeting = "Hello, playground"
print(greeting)

greeting="merhaba dünya"
print(greeting)

/*Swiftte türkçe karakterli değişken tanımlanabiliyor, ve emoji ve özel karakterlerle de kullanabiliyoruz ayrıca
uni code lerle de yazabiliyoruz*/

var y: Double = 3 //swift burayı 3.0 sıfır olarak değerlendirir çünkü Double
var z: Int = Int(3.0)

//print("swift versiyonu"\(z))

var name: String?
//print(name ?? "no name")
name="Songül"
//print(name!)
print(name as Any)

name?.count

//if else

var version = 14
var myversion = 13

if myversion > 14 {
    print("SwiftUI rahatlıkla yazılabilir")
} else if myversion == 13 {
    print("SwiftUI yazılabilir")
} else if myversion < 11 {
    print("SwiftUI yazılamaz")
}

//DERS 4 ---------- TUPLE --------------

let tuple = (404,"Not Found")
print(tuple)
print(tuple.0)
print(tuple.1)

// İSİMLİ TUPLE
var namesTuple = (first: 1, middle: 2, last: 3)
print(namesTuple.first)
//camel case namesTuple

// SONRADAN DEĞER BELİRLENEN TUPLE
var numberTuple: (optionalFirst: Int?, middle: String, last: Int)? //tuple a herhangi bir değer gelmeyebileceğini söylüyor
numberTuple = (nil, "Ege", last: 22)
numberTuple?.last

//SORU: MERKEZİ (0,0) OLAN VE YARIÇAPI 1 OLAN BİR ÇEMBER TANIMLAYIN
typealias Circle = (center: (x: CGFloat, y: CGFloat), Radius: CGFloat)
let unitCircle: Circle = ((0.0, 0.0), 1)

var a1 = 3
var b1 = 4
(a1, b1) = (b1,a1)
print(a1)
print(b1)

// TUPLE IN SWİTCH
let switchTuple = (firstCase: true, secondCase: false)
switch switchTuple {
case (true,true):
    print("İkisi de doğru")
case (true,false):
    print("İlki doğru ikincisi yanlış")
case(false,true):
    print("İlki yanlış ikincisi doğru")
case(false,false):
    print("İkisi de yanlış")
}

//----------------------------------------------------

// ARRAY-DİZİ
// Aynı veri türünde olan değerleri tutar anca dilenirse farklı türleri de tutmayı sağlar.
var cars = ["Dacia", 3] as [Any]

//array olacağı için köşeli parantez içinde "string"
var cities: [String] = [] //Boş string array
var anotherCities : Array<String> = Array() //Boş string array
var anotherCities2 = Array<String>() //Boş string array
var anotherCities3 = [String]() //Boş string array

//ARRAYE ELEMAN EKLEME VE İNDİS KAVRAMI
cities.append("Malatya")
cities.append("Sinop")
cities.append("Bursa")
cities.append("Bakü")
cities.append("Kahramanmaraş")
cities.append("Denizli")
cities.append("Çanakkale")
cities.append("Tekirdağ")
cities.append("Hatay")

cities.first
cities[0]

cities.endIndex //listede kaç tane girdi olduğunu söyler

cities.last
cities[cities.endIndex - 1]
cities[cities.count - 1]

var stringArray = Array(repeating: "Malatya", count: 4)

//Array in Array

let matrix = [["a","b","c"], [1,2,3]]
matrix[0][2]
matrix.first?.last

// NUMERİK DİZİLER

var numberArray = [1,2,3]
numberArray.max()
numberArray.min()

for city in cities {
    print(city)
}

//DERS 5
//SET(UNORDERED)
/*array ve set arasındaki farklar:
 1- Setlerde mükerrer(tekrarlı) eleman bulunmazi arraylerde bulunabilir.
 2- Arraylar sıralı, setler sırasızdır.
 3- Setler hashable protokoline uyar.
*/
 
var colors = Set<String>() //elemanları string olan boş bir küme
var myColors: Set<String> = ["Yeşil", "Siyah", "Mavi", "Kırmızı"]
myColors.count

var animals: Set<String> = ["Çakıl", "Karabaş", "Luna", "Tony", "Maviş", "Çimen", "Ercüü", "Atiba", "Maya", "Beyaz", "Albino", "Kara"]
var myCars: Set<String> = ["Clio", "Corolla", "Tesla", "BMW", "Kartal", "Doğan", "Şahin", "Serce"]
var wildBirds: Set<String> = ["Kartal", "Şahin", "Akbaba", "Baykuş", "Atmaca", "Martı"]

//Kesişim kümesi bulma
var intersection1 = myCars.intersection(wildBirds)
var intersection2 = myCars.intersection(animals)

//Bileşim kümesi bulma
var union1 = myCars.union(wildBirds)
var union2 = myCars.union(animals)

/* Question:
 Bir sınıfta en az bir yazılım dili bilenlerin sayısı 24, sadece Swift bilenler 12, sadece Kotlin bilenler 8 olduğuna göre her iki dili bilen kaç kişi vardır?
 Symmetric difference: Fark
 Substracting: Altküme
*/



/* Dictionary: Sözlük işlemleri - Unordered
1- Key-value formatlı veri yapısıdır.
 */

 /*Dictionary:Sözlük işlemleri - Unordered
  1 Key-value formatlı veri yapısıdır/
*/


var dict1 : Dictionary<String, String> = Dictionary<String, String>()
var dict2 = [String: String]()
var dict3 : [String: String] = [:]

var animals2: [String: String] = ["Çakıl": "Kedi","Zilli": "Köpek","Beyaz": "Sibirya Kurdu"]
print(animals2)
animals2["Çakıl"]
animals2.keys
animals2.values

animals2["Çakıl"] = "Kuş"

animals2.updateValue("Kuş", forKey: "Çakıl")

var plates: [Int: String] = [31: "Hatay", 34: "İstanbul", 35: "İzmir", 44: "Malatya", 48: "Muğla"]
var testDict1 = [String: Any]()

/* FONKSİYOLAR
 */

func sayHi() {
    print("Hello World")
}
sayHi()

func sayHi2(name:String){
    print("Hello",name)
}
sayHi2(name: "Ziya")

func greeting1(name: String) -> String {
    return "Hello \(name)"
}
greeting1(name: "Kerim Hoca")

func greeting2(name: String, age:Int) -> String {
    return "Hello my name is \(name), my age is \(age)"
}
greeting2(name: "Osman", age: 24)

//Bir fonksiyon

func anything() -> (a:Int, b:Int, c:Int){
    return (1, 2, 3)
}

func sumVariadic(numbers: Int... , y: String){
    print("\(y): \(numbers)")
}
sumVariadic(numbers: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, y: "My numbers")

func value(x: inout Int) {
    x = 5
    x += 1
    print(x)
}
var x = 4
value(x: &x)

// Closures - Block - Lambda - Arroc Function
// İsmi olmayan, parametre alıp geriye değer döndürebilen, bir değişkene atanabilen, bir fonksiyona parametre olarak verilebilen kod bloğuna denir.
// () -> () hiçbir şey almayıp hiç bir şey dönüdürmeyen.
// () -> void

let selamVer: () -> () = {
    print("Merhaba")
}

// isim parametresi alan closure
// (String) -> ()

let selamVer2: (String) -> () = { name in
    print("Selam \(name)")
}
selamVer2("Ziya")

// iki parametreli(birden fazla parametre alan) ve dönüş tipi alan clousure (Int,Int) -> (Boolean)
let compare: (Int, Int) -> Bool = {x,y in
    return x < y
}
compare(4,3)

let sum: (Int, Int) -> (Int) = { x, y in
    return x + y
}
sum(5,7)

let names = ["Ege","Ziya","Cem","Songül","Oğuzhan"]
let sortedNames = names.sorted { (x: String, y: String) -> Bool in
    return x < y
}

let sortedNames2 = names.sorted { (x, y) -> Bool in
    return x < y
}

let sortedNames3 = names.sorted {(x, y) in
    return x < y
}
let sortedNames4 = names.sorted {
    $0 < $1
}

let sortedNames5 = names.sorted(by: <)
print(sortedNames5)


// Completion Handler
// Muhtemelen en fazla kullanılacak clouser türü
// HHTP isteği gibi uzun işlem yapacağımızı varsayalım, isteğin tamamlanmasının hemen ardından bir şeyler yapmak istensin fakat işlemin devam edip etmediğini kontrol bizim için maliyetli olacaktır. Bu durumda işimizi gören completion handler işlem tamamlanır tamamlanmaz geri çağırılan bir clouserdir.





