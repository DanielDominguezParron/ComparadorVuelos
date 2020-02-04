import express from 'express'
import Sequelize from 'Sequelize'

const sequelize = new Sequelize('aireuropa', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  pool: {
    max: 5,
    min: 0,
    idle: 10000
  }
})

const Vuelos = sequelize.define(
  'vuelos',
  {
    IdVuelo: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      field: 'IdVuelo',
      primaryKey: true
    },
    Origen: {
      type: Sequelize.STRING,
      field: 'origen'
    },
    Destino: {
      type: Sequelize.STRING,
      field: 'destino'
    },
    Fecha: {
      type: Sequelize.DATE,
      field: 'fecha'
    },
    Hora: {
      type: Sequelize.TIME,
      field: 'hora'
    },
    Precio: {
      type: Sequelize.INTEGER,
      field: 'precio'
    },
    plazas: {
      type: Sequelize.INTEGER,
      field: 'plazas'
    }
  },
  {
    timestamps: false,
    freezeTableName: true
  }
)


const router = express.Router()
router.
  get('/vuelos/fecha/origen/', (req, res, next) => {
    Vuelos.findAll().then((Vuelos) => {
      res.send(Vuelos);
    }).error(function (err) {
      console.log("Error:" + err);
    });
  })
router.
  get('/vuelos/fecha/origen/:destino', (req, res, next) => {
    const destino = req.params.destino;
    Vuelos.findAll({
      where: { Destino: destino }
    }).then((Vuelos) => {
      res.send(Vuelos);
    }).error(function (err) {
      console.log("Error:" + err);
    });
  })
/*
router.post('/vuelos/fecha/origen/:destino', (req, res, next) => {
  Vuelos.create({
    NombreVuelos: req.body.NombreVuelos,
    TipoVuelos: req.body.TipoVuelos
  }).then((Vuelos) => {
    res.send(Vuelos);
  }).error(function (err) {
    console.log("Error:" + err);
  });
})
router.delete('/:id', (req, res, next) => {
  const id = req.params.id;
  Vuelos.destroy({
    where: { IdVuelo: id }
  }).then(() => {
    res.send('Eliminado correctamente');
  }).error(function (err) {
    console.log("Error:" + err);
  });
})
router.delete('/', (req, res, next) => {
  Vuelos.destroy({
    where: {},
    truncate:true
  }).then(() => {
    res.send('Eliminados correctamente');
  }).error(function (err) {
    console.log("Error:" + err);
  });
})*/
router.put('/vuelos/fecha/origen/:destino', (req, res, next) => {
  Vuelos.update(
    { plazas: sequelize.literal('plazas - 1') },
    { where: { Destino: req.params.destino } }
  ).then((Vuelos) => {
    res.send(Vuelos);
  }).error(function (err) {
    console.log("Error:" + err);
  });
})
export default router
