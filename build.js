const fs = require('fs')
let schema = fs.readFileSync('./1.0/schema.sql', 'utf8')

// clean up the special characters
schema = { schema }


fs.writeFileSync('./lib/schema.sql', JSON.stringify(schema))
