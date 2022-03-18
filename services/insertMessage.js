const db = require("../db");
const { insertMessage } = db.queries;

const writeMessage = (messageData) => {
  const { content, ip_address, location_id } = messageData;
    
  db.query(insertMessage, [content, ip_address, location_id], (err, res) => {
    if (err) return console.log(err);

    return res.rows[0];
  });
};

module.exports = { writeMessage };
