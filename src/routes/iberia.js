import express from 'express'
import mongoose from 'mongoose'

const host = 'mongodb://127.0.0.1:27017/comparadorvuelos'

mongoose.set('debug', true)
mongoose.Promise = global.Promise

const connection = mongoose.createConnection(
  host,
  { poolSize: 200 }
)

connection.on('error', err => {
  console.log(' ⚑ Mongo Error'.bold.red, err)
  return process.exit()
})

connection.on('connected', () => {
  console.log(' ▣ Connected to Database')
})

const flySchema = new mongoose.Schema(
  {
    _id: mongoose.Schema.Types.ObjectId,
    idVuelo: {
      type: String,
      trim: true, required: true
    },
    origen: {
      type: String,
      trim: true, required: true
    },
    destino: {
      type: String,
      trim: true, required: true
    },
    Fecha: {
      type: Date,
      trim: true, required: true
    },
    Hora: {
      type: String,
      trim: true, required: true
    },
    Precio: {
      type: Number,
      trim: true, required: true
    },
    plazas: {
      type: Number,
      trim: true, required: true
    }
  },
  {
    strict: false
  }
)

const iberia = connection.model('vuelos', flySchema)


const router = express.Router()
router.
  get('/vuelos/fecha/origen/', (req, res, next) => {
    iberia.find({}, (err, vuelos) =>
      res.send(vuelos));
  })
router.get('/vuelos/fecha/:origen/:destino', (req, res, next) => {
  const destino = req.params.destino;
  const origen = req.params.origen;
  iberia.find({ origen: origen, destino: destino }, (err, vuelos) => {
    res.send(vuelos);
  });
})
router.put('/vuelos/fecha/origen/:idVuelo', (req, res, next) => {
  iberia.updateOne(
    { idVuelo: req.params.idVuelo },
    { $inc: { plazas: -1 } }, (err, vuelos) => {
      res.send(vuelos);
    });
})
export default router
