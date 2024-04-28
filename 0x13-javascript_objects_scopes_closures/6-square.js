#/usr/bin/node

class Square extends Square {
  charPrint(c = 'X') {
    let squareString = '';
    for (let i = 0; i < this.width; i++) {
      squareString += c.repeat(this.width) + '\n';
    }
    console.log(squareString);
  }
}
