const now = new Date().toISOString();

// 从环境变量中获取输入
const version = process.env['INPUT_VERSION'] || '';
const note = process.env['INPUT_NOTE'] || '';

// 设置输出（推荐写入 $GITHUB_OUTPUT）
const fs = require('fs');
fs.appendFileSync(process.env['GITHUB_OUTPUT'], `timestamp=${now}\n`);

console.log(`Timestamp: ${now}`);
if (version) console.log(`Version: ${version}`);
if (note) console.log(`Note: ${note}`);

