const chalk = require('chalk');
const log = console.log;
const text = "Hello World";

const _1 = chalk.blue;

const _2 = _1.bgYellow;

const _3 = _2.underline;

const style = _3;

log(style);

const result = style(text);

log(result);

