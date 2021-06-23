const Sequelize = require('sequelize');

module.exports = class Wdb extends Sequelize.Model {
  static init(sequelize) {
    return super.init({
      humanaim: {
        type: Sequelize.STRING(1000),
        allowNull: false,
      },
      tc: {
        type: Sequelize.STRING(1000),
        allowNull: false,
      },
      part : {
        type: Sequelize.STRING(1000),
        allowNull: false,
      }
    }, {
      sequelize,
      timestamps: false,
      underscored: false,
      modelName: 'Wdb',
      tableName: 'Wdb',
      paranoid: false,
      charset: 'utf8mb4',
      collate: 'utf8mb4_general_ci',
    });
  }

  
};