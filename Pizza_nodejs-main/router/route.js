const express = require('express');
const router = express.Router();
const {insertContact,viewContact} = require('../controller/contactController');
const {insertUser,getuser,viewlogin,viewsignup,userLogout} = require('../controller/userController');
const {getallProduct,getProductonly,searchProduct} = require('../controller/productController');
const {userCheckout,userCheckoutSubmit,savePayment,getallorder} = require('../controller/orderController');

const requireAuth = require('../middleware/protected')

router.get('/upload',(req,res)=>{
    res.render('upload');
});

router.post('/upload',(req,res)=>{
    const image = req.files.image;
    
    image.mv('static/'+image.name,(err)=>{
        if(err){
            console.log(err);
        }else{
            console.log(req.files.image);
            res.send('upload success');
        }
    });
});

router.get('/',getallProduct);

router.post('/search',searchProduct);

router.get('/product/:sno',requireAuth,getProductonly);

router.get('/contact',viewContact);

router.post('/contact',insertContact);

router.get('/signup',viewsignup);

router.post('/signup',insertUser);

router.get('/login',viewlogin);

router.post('/login',getuser);

router.get('/logout',userLogout);

router.get('/checkout/:id',requireAuth,userCheckout);

router.post('/checkout',userCheckoutSubmit);

router.post('/payment',requireAuth,savePayment)

router.get('/allorder',getallorder)

module.exports = router;