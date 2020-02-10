import express from 'express'
import jwt from 'jsonwebtoken'
const router = express.Router()

router
    .post('/', (req, res, next) => {
        if (req.body.usuario === "julio") {
            const payload = {
                check: true
            };
            const token = jwt.sign(payload, req.app.locals.config.TOKEN, {
                expiresIn: 1440
            });
            res.json({
                mensaje: 'Autenticación correcta',
                token: token
            });
        } else {
            res.json({ mensaje: "Usuario incorrecto" })
        }
    })
export default router