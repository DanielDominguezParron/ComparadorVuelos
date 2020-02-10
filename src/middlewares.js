import express from 'express'
import jwt from 'jsonwebtoken'

const auth = express.Router();
auth.use((req, res, next) => {
  const token = req.headers['access-token'];

  if (token) {
    jwt.verify(token, req.app.locals.config.TOKEN, (err, decoded) => {
      if (err) {
        return res.json({ mensaje: 'Token inválido' });
      } else {
        req.decoded = decoded;
        next();
      }
    });
  } else {
    res.send({
      mensaje: 'Token no proveído.'
    });
  }
});
export default auth