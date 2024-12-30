import type { Config } from 'jest';

const config: Config = {
        verbose: true,
        preset: 'ts-jest',
        roots: [
                "./tests"
        ],
        coveragePathIgnorePatterns: [
                "/node_modules/",
                "/tests/"
        ],
        collectCoverage: true,
        testEnvironment: 'node'
};

export default config;
