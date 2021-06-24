const express = require('express');
const user = require('../routes/auth');
// 데이터 값 연결 user.nick과 user.email로 로그인한 사용자 데이터 불러오기 가능

const db = require('../models/index');

const router = express.Router();

var postdata; 


router.get('/', (req, res) => {
  res.render('main');                               
  });

router.route('/Teammates')

  .get((req,res) =>{
    res.render('Teammates',{user});  
  })

  .post(async(req,res)=> {

    await db.Team.findAll()
    .then((result) =>{
      // console.log(result.id);
      res.send(result);
    })
  
  });

  

router.get('/post', async(req,res) => {
          await db.Post.findAll({raw : true})
          .then((results) =>{
            postdata = results;
            global.postdata = postdata;
          }).catch ((err)=>{
           console.error(err);
          });
          res.render('QnA',{postdata});
});
       
                     


router.get('/introduction',(req,res)=>{
  res.render('introduction',{user})
})

router.post('/introduction/wdb', async(req,res)=> {
  var id =req.body.id;
  await db.Wdb.findOne({raw : true})
  .then((result) =>{
    var data = [result.humanaim, result.tc, result.part];
    // console.log(data[2]);
    res.send(data);
  })

})
router.post('/introduction/cp', async(req,res)=> {
  var id =req.body.id;
  await db.Cp.findOne({raw : true})
  .then((result) =>{
    var data = [result.humanaim, result.tc, result.part];
    // console.log(data[2]);
    res.send(data);
  })

})
router.post('/introduction/gc', async(req,res)=> {
  var id =req.body.id;
  await db.Gc.findOne({raw : true})
  .then((result) =>{
    var data = [result.humanaim, result.tc, result.part];
    // console.log(data[2]);
    res.send(data);
  })

})
  module.exports = router;
