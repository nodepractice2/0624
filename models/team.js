const Sequelize = require('sequelize');

module.exports = class Team extends Sequelize.Model {
  static init(sequelize) {
    return super.init({
    work: {
    type: Sequelize.STRING(500),
    allowNull: false,
      },
    age: {
    type: Sequelize.INTEGER(50),
    allowNull: false,
      },
    phone : {
    type: Sequelize.STRING(200),
    allowNull: false,

      },
    email : {
    type: Sequelize.STRING(200),
    allowNull: false,

      }
    }, {
      sequelize,
      timestamps: false,
      underscored: false,
      modelName: 'Team',
      tableName: 'team',
      paranoid: false,
      charset: 'utf8mb4',
      collate: 'utf8mb4_general_ci',
    });
  }

  
};
