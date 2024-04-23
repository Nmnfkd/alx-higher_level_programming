#!/usr/bin/node

const squareSize = process.argv[2];
const mysquare = parseInt(squareSize);
const x = 'x';

if (isNaN(mySquare)){
	console.log('missing size');
}else {
	for (let i = 0; i<mySquare; i++){
		console.log(x.repeat(mySquare));
	}
}
