function multipliedEvenNumbers(numbers: number[]): number[] {
	const evenNumbersMultipliedByTwo = [];

	for (const number of numbers) {
		number % 2 === 0 ? evenNumbersMultipliedByTwo.push(number * 2) : null;
	}

	return evenNumbersMultipliedByTwo;
}

console.log(multipliedEvenNumbers([1, 2, 3, 4, 5]));