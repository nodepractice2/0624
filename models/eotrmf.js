const Sequelize = require('sequelize');
const Post = require('./post');
//const db = require('../models/index');

module.exports = class eotrmf extends Sequelize.Model {
  static init(sequelize) {
    return super.init({
      writer: {
        field:'writer',
        type: Sequelize.STRING(40),
        allowNull: false,
      },
      content: {
        field:'content',
        type: Sequelize.STRING(500),
        allowNull: false,
      },
      postId : {
          field:'postId',
          type: Sequelize.INTEGER(50),
          allowNull: false,
    
      }
    }, {
      sequelize,
      timestamps: false,
      underscored: false,
      modelName: 'eotrmf',  
      tableName: 'eotrmfs',
      paranoid: false,
      charset: 'utf8',
      collate: 'utf8_general_ci',
    });
  }

  static associate(db) {
    

    db.Eotrmf.belongsTo(db.Post, {
      foreignKey: 'postId', 
      sourceKey : 'id',
      onDelete: 'cascade',
    });
    db.Post.hasMany(db.Eotrmf, {
      foreignKey : 'postId',
      targetKey : 'id',
      onDelete: 'cascade',
    })
    // db.User.belongsToMany(Post, {
    //   foreignKey: 'followingId',
    //   as: 'Followers',
    //   through: 'Follow',
    // });
    
  }
};

