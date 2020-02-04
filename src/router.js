import iberia from './routes/iberia'
import aireuropa from './routes/aireuropa'

export default app => {
  app.use('/iberia', iberia)
  app.use('/aireuropa', aireuropa)
}
