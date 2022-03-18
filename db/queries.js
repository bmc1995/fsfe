const insertMessage =
  "INSERT INTO messages (content, ip_address, location_id) VALUES($1, $2, $3) RETURNING id, content, created_at";

module.exports = {
  insertMessage,
};