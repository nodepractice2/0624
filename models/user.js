const Sequelize = require('sequelize');

module.exports = class User extends Sequelize.Model {
  static init(sequelize) {
    return super.init({
      email: {
        field:'email',
        type: Sequelize.STRING(40),
        allowNull: false,
        unique: true,
      },
      nick: {
        field:'nick',
        type: Sequelize.STRING(15),
        allowNull: false,
      },
      password: {
        field:'password',
        type: Sequelize.STRING(100),
        allowNull: false,
      },
      introduce: {
        field:'introduce',
        type: Sequelize.STRING(500),
        allowNull: true,
      }
    }, {
      sequelize,
      timestamps: true,
      underscored: false,
      modelName: 'User',  
      tableName: 'users',
      paranoid: true,
      charset: 'utf8',
      collate: 'utf8_general_ci',
    });
  }


};

