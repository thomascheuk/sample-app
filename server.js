// Require the framework and instantiate it
const fastify = require('fastify')({ logger: true })
var mysql = require('mysql'); 

var con = mysql.createConnection({
  host: process.env.MYSQL_HOST,
  user: "thomas",
  password: "password"
});
var db_status = "disconnected"
con.connect(function(err) {
  if (err) {
    // throw err;
    db_status = "disconnected"
  } else {
    db_status = "connected"
  }
});

// Declare a route
fastify.get('/', async (request, reply) => {
  return { hello: 'IBM Cloud World ' + db_status}
})

// Run the server!
const start = async () => {
  try {
    await fastify.listen(3000, `0.0.0.0`)
  } catch (err) {
    fastify.log.error(err)
    process.exit(1)
  }
}
start()