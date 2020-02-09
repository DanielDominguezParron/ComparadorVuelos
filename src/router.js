import iberia from './routes/iberia'
import aireuropa from './routes/aireuropa'
import auth from './routes/auth'

export default app => {
  app.use('/iberia', iberia)
  app.use('/auth', auth)
  app.use('/aireuropa', aireuropa)
}
