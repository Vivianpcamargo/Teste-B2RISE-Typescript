function calculateDiscount(price: number, isPremium: boolean): number {
  let discountPercentage = price > 100 ? 0.9 : 1;

  if (isPremium) {
    discountPercentage = price > 100 ? 0.8 : 0.9;
  }

  return price * discountPercentage;
}

console.log(calculateDiscount(101, true));