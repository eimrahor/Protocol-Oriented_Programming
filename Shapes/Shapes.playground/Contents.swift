import Foundation

protocol Shape {
    var area: Double { get }
}

struct Square: Shape {
    let side: Double
    var area: Double {
        return side * side
    }
}

struct Rectangle: Shape {
    let width: Double
    let height: Double
    var area: Double {
        return width * height
    }
}

struct Circle: Shape {
    let radius: Double
    var area: Double {
        return .pi * radius * radius
    }
}

var shape: Shape
var shapes = [Shape]()

shape = Rectangle(width: 5, height: 6)
shapes.append(shape)
shape = Square(side: 5)
shapes.append(shape)
shape = Circle(radius: 4)
shapes.append(shape)

for shape in shapes {
    print(shape.area)
}
