import cors from 'cors'
import express from 'express'

import index from '@routes/index.route'

import { error } from '@middlewares/response.middleware'

const server = express()

server.set('json spaces', 4)

server.use(cors())
server.use(express.json({ limit: '25mb' }))
server.use(express.urlencoded({ limit: '25mb', extended: true }))

server.use('/', index)

server.use(error)

export default server
