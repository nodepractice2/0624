const KakaoStrategy = require('passport-kakao').Strategy
const passport = require('passport');
//const user = require('../models/user');

module.exports = () => {
    passport.use('kakao', new KakaoStrategy({
    clientID: '433d6e76220d9d8e983911e9f4999205',
    callbackURL: '/auth/kakao/callback',    
  },  async(accessToken, refreshToken, profile, done) => {

      return done(null, user)
    
  }))
};