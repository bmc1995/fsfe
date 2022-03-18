const { Pool } = require('pg');
const queries = require('./queries');

const pool = new Pool()

module.exports = {
    query: (text, params, callback) => {
      return pool.query(text, params, callback)
    },
    queries
  }