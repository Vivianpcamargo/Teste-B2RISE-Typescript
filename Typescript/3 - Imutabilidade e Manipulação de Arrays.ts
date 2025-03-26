function makeAllPositive(list: number[]): number[] {
	const positiveNumbers = list.map((item) => item < 0 ? Math.abs(item): item);

	return positiveNumbers;
};

const numbers = [-1, 2, -3, 4];

console.log(makeAllPositive(numbers)); // [1, 2, 3, 4]
