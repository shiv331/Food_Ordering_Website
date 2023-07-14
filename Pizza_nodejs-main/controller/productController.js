const Product = require('../model/product')

const getallProduct = (req, res) => {
    Product.allProduct((error, results) => {
        if (!error) {
            res.render('index', { products: results})
        }
    });
};

const getProductonly = (req, res) => {
    const sno = req.params.sno;
    Product.getProduct(sno, (error, results) => {
        res.render('product',results)
    });
};

const searchProduct = (req,res)=>{
    Product.searchProduct(req.body.keyword,(error, results) => {
        return res.json(results)
    });
}

module.exports = {getallProduct,getProductonly,searchProduct};