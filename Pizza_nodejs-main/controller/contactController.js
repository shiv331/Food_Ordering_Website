const Contact = require('../model/contact')
var nodemailer = require('nodemailer');

var transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'nxttourindia@gmail.com',
    pass: 'quvklbxzubmhzmdw'
  }
});

const viewContact = (req,res) => {
    res.render("contact")
};

const insertContact = (req, res) => {

    var mailOptions = {
        from : 'nxttourindia@gmail.com',
        to : req.body.email,
        subject: 'Thank you for Contacting Us',
        html: '<h1 style="color:yellow;text-align:center">TooYUM</h1><br><p>Dear Mental '+req.body.name+'</p>'+'<br><p>'+req.body.phone+'</p>'+'<br><p>'+req.body.message+'</p>'
    };
    transporter.sendMail(mailOptions, function(error, info){
        if (error) {
            console.log(error);
        } else {
            console.log('Email sent: ' + info.response);
        }
    });
    
    const contact = {
        name: req.body.name,
        email: req.body.email,
        phone: req.body.phone,
        message: req.body.message
    }
    
    Contact.createContact(contact,(err,results)=>{
        if(!err){
            console.log(req.body);
            res.render("contact")
        }
    });
    
};

module.exports = {insertContact,viewContact};