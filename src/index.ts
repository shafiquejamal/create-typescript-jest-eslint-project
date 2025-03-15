export const CONSTANT = 4;

console.log(`The constant is:${CONSTANT}`);

// See https://github.com/shafiquejamal/github-jest-coverage
export const exampleForTestCoverage = (n: number): string => {
	if (n > 5) {
		return `Input number ${n} was greater than 5`;
	}

	return `Input number ${n} was not greater than 5`;
};
