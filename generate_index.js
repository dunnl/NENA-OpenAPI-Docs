const Mustache = require('mustache');
const fs = require('fs');
const path = require('path');

// Step 1: Read the list of .html files
const htmlFiles = fs.readdirSync('./docs').filter(file => file.endsWith('.html'));

// Step 2: Read the Mustache template
const template = fs.readFileSync('index.mustache', 'utf8');

// Step 3: Render the template with the file list
const rendered = Mustache.render(template, { files: htmlFiles });

// Step 4: Write the rendered output to index.html
fs.writeFileSync('./docs/index.html', rendered);

console.log('index.html generated successfully!');
