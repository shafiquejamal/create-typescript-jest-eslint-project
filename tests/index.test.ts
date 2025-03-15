import { CONSTANT, exampleForTestCoverage } from '../src';

describe('sample test', () => {
	it('Should have a variable `CONSTANT` that is equal to the number 4', () => {
		expect(CONSTANT).toEqual(4);
	});

	// See https://github.com/shafiquejamal/github-jest-coverage
	it('Should partially cover the exampleForTestCoverage function :-p', () => {
		expect(exampleForTestCoverage(6)).toEqual(
			'Input number 6 was greater than 5',
		);
	});
});
