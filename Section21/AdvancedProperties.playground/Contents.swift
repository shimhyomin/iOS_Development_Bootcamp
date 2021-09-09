import Foundation

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    get {
        let area = width * height
        let areaCoverPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoverPerBucket
        let roundedBuckets = ceilf(numberOfBuckets)
        return Int(roundedBuckets)
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("This amount of paiint can cover an area of \(areaCanCover)")
        
    }
}

bucketsOfPaint = 4
print(bucketsOfPaint)
