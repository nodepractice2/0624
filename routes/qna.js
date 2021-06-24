const express = require('express');
const user = require('../routes/auth');
const db = require('../models/index');
const router = express.Router();

let updateData;
let postId;

router.route('/Article/datgle')

    .post(async(req,res) =>{
        try{
            await db.Eotrmf.create({
            content : req.body.datgle,
            postId,
            writer : user.nick,
            });
            res.end();
        }
        catch (error) {
                console.log(error);
                return next(error);
            };
        })

    .get(async(req,res) =>{
        try{
            const result =await db.Eotrmf.findAll({
                                where : {postId : postId} 
                            })
            res.send(result);
        }
        catch (error) {
            console.log(error);
            return next(error);
        }
    });


router.route('/write')
    .post(async (req,res)=>{  //insert
        const { content, postTiltle} = req.body;

        try{
            await db.Post.create({
            content,
            postTiltle,
            writer : user.nick,
                });
            res.render('QnA', {postdata});
        }catch (error) {
            console.error(error);
            return next(error);
        }
        })
    
    .get( (req,res) => {
        res.render('write');
    });

router.get('/Article',async(req,res) => {
    postId =req.query.id;
    try{
        let result = await db.Post.findAll({
                        include : [
                        { model: db.Eotrmf}
                        ],
                        raw : true,
                        where: {id : postId}
                    })
        updateData = result;
        res.render( 'Article', {list : result})
    }
    catch(error) {
        console.log(error);
        return next(error);
    };
    
});

router.delete('/Article/delete', async(req,res)=>{
    let input = req.body.input; 
    let writer;
    try{
        const result = await db.Post.findOne({
                            raw : true,
                            where: {id : postId}
                        })
        writer = result.writer  
        if(input == '삭제' && writer == user.nick){
            await db.Post.destroy({where:{id:postId}});
            res.redirect("/main/QnA");
        }else if(writer != user.nick) {
            res.send('유저불일치');
        } else if(input != '삭제'){
            res.send('오타');
        }              
    }
    catch(error) {
        console.log(error);
        return next(error);
    };//여기
    

});

router.get('/updatewrite', (req,res) =>{
    res.render('update',{updateData});
});

router.route('/update')
    .get( async(req,res)=>{
        try{
            var writer;
            const result = await db.Post.findOne({
                            raw : true,
                            where: {id : postId}
                         })
            writer = result.writer
            if(writer ==user.nick){
                res.send('ok');
            }else {
                res.send('fail');
            }
        } catch (error)  {
            console.log(error);
            return next(error);
        };
        
    })

    .put(async (req,res)=>{
        const  {content} = req.body;
          await db.Post.update({content:content},{where:{id:postId}})
          res.render('QnA', {postdata});
    });

module.exports = router;