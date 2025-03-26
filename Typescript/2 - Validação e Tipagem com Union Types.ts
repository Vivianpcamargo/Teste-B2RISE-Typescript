function calculate(operation: String, numberOne: number, numberTwo: number): number {
	let response: number;

	switch (operation) {
		case 'add':
			response = numberOne + numberTwo;
			break;
		case 'subtract':
			response = numberOne - numberTwo;
			break;
		case 'multiply':
			response = numberOne * numberTwo;
			break;
		case 'divide':
			if (numberTwo === 0) {
				throw new Error('Division by zero');
			}
			response = numberOne / numberTwo;
			break;
		default:
			throw new Error('Invalid operation');
	}

	return response;
};

console.log(calculate('add', 10, 5)); // 15
console.log(calculate('divide', 10, 0)); // Error: Division by zero
