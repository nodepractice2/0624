const express = require('express');
const { isLoggedIn, isNotLoggedIn } = require('./middleware');
// const post = require('../models/post');

const router = express.Router();

router.use((req, res, next) => {
  res.locals.user = req.user; 
  next();
});
router.get('/main', isLoggedIn, (req,res)=>{ // 로그인을 해야 메인을 갈수있다.
res.render('main')
});
// router.get('/main/qna', isLoggedIn, (req,res)=>{
//   res.render('qna')
//   console.log(user.data);
//   });

router.get('/join', isNotLoggedIn, (req, res) => {
  res.render('join');
});

router.get('/', (req, res, next) => {
  const twits = [];
  res.render('login', {
    twits,
  });
});


module.exports = router;