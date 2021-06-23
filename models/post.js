// const { STRING } = require('sequelize');  //?
const Sequelize = require('sequelize'); //sequelize 모듈 임포트
//const db = require('../models/index');

module.exports = class Post extends Sequelize.Model { //Post 모델을 위한
  static init(sequelize) {  //테이블 생성을 위해 호출되는 메소드
    return super.init({ //부모 클래스에 있는 init을 호출한다. //id 필드는 자동으로 프라이머리키로서 작용
      content: {  //내용
        field:'content',
        type: Sequelize.STRING(500),  //데이터타입이 500
        allowNull: false, //null처리 할 수 있다.
      },
      postTiltle: { //?
        field:'postTiltle',
        type: Sequelize.STRING(500), //데이터타입이 200
        allowNull: true, //null처리 할 수 있다.
      },
        writer : {  //
          field:'writer',
        type: Sequelize.STRING(200),  //데이터타입이 200
        allowNull: false, //null처리 할 수 있다.
      }
    }, {
      sequelize,  //DB서버와 연결하는 객체
      timestamps: true, //clearAt, updateAt 칼럼 자동 생성
      underscored: false, //
      modelName: 'Post',
      tableName: 'post',
      paranoid: true,
      charset: 'utf8mb4',
      collate: 'utf8mb4_general_ci',
    });
  }
    // db.Post.associate = function(models){
    //   models.Post.hasMany(models.Eotrmf,{
    //     foreignKey: 'fk_id',
    //     onDelete:'cascade'
    //   });
    // };
 
};