function extractValues<T>(data: T[], key: keyof T): Array<T[keyof T]> {
	return data.map((item) => item[key]);
};

const data = [
	{ id: 1, name: 'Alice' },
	{ id: 2, name: 'Bob' }
];

console.log(extractValues(data, 'name')); // ['Alice', 'Bob']