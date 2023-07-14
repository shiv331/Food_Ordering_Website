function requireAuth(req, res, next) {
  
    if ((!req.session.email)&&(!req.cookies.email)) {
      res.locals.isAuthenticated = false;
      res.redirect('/login');
    }else if((!req.session.email)&&(req.cookies.email)){
      res.locals.isAuthenticated = true;
      req.session.email = req.cookies.email;
    }else{
      res.locals.isAuthenticated = true;
    }

    next();
}

module.exports = requireAuth;