exports.up = function(knex) {
  return knex.schema
    .alterTable("monitor", function (table) {
      table.string("notification_event_type", 255).notNullable().defaultTo("both");
    })
}

exports.down = function(knex) {
  return knex.schema
    .alterTable("monitor", function (table) {
      table.dropColumn("notification_event_type");
    })
}