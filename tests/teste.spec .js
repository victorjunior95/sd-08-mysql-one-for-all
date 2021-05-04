const { Sequelize } = require('sequelize');

// Option 1: Passing a connection URI

const sequelize = new Sequelize('mysql://gustavo:kelmarotta@localhost:3306/SpotifyClone');

try {
  await sequelize.authenticate();
  console.log('Connection has been established successfully.');
} catch (error) {
  console.error('Unable to connect to the database:', error);
}