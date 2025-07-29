// const now = new Date().toISOString();
// console.log(`::set-output name=timestamp::${now}`);

const core = require('@actions/core');
const now = new Date().toISOString();

const version = core.getInput('version');
const note = core.getInput('note');

console.log(`::set-output name=timestamp::${now}`);
console.log(`Timestamp: ${now}`);
if (version) console.log(`Version: ${version}`);
if (note) console.log(`Note: ${note}`);

