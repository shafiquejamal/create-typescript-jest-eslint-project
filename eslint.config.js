import globals from 'globals';
import pluginJs from '@eslint/js';
import tseslint from 'typescript-eslint';
import jest from 'eslint-plugin-jest';
import eslintConfigPrettier from 'eslint-config-prettier';

/** @type {import('eslint').Linter.Config[]} */
export default [
	{ ignores: ['build/', 'dist/', '.vscode/', 'coverage', 'docker'] },
	{ languageOptions: { globals: { ...globals.browser, ...globals.node } } },
	pluginJs.configs.recommended,
	...tseslint.configs.recommended,
	...tseslint.configs.strict,
	...tseslint.configs.stylistic,
	eslintConfigPrettier,
	{
		files: ['tests/**/*.{ts,js,mjs,cjs}'],
		...jest.configs['flat/recommended'],
	},
	{
		files: ['**/*.{js,mjs,cjs,ts}'],
		rules: {
			'no-var': 'error',
			'prefer-const': 'warn',
			'no-unused-vars': 'warn',
			'@typescript-eslint/no-unused-vars': 'warn',
		},
	},
];
