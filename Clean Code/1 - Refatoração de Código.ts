function processItems(items: any[]) : void {
	for (let item of items){
		item.price > 100 ? console.log(`${item.name} is expensive`) : null;
	}
}

processItems([
	{ name: 'banana', price: 101 },
	{ name: 'apple', price: 200 },
	{ name: 'orange', price: 50 },
]);