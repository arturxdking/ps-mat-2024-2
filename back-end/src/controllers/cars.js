import prisma from '../database/client.js'

const controller = {}       // Objeto vazio

controller.create = async function (req, res) {
    try {
        await prisma.car.create({ data: req.body })

        // HTTP 201:Created
        res.status(201).end()
    } catch (error) {
        console.error(error)

        // HTTP 500: Internal Server Error
        req.status(500).end()
    }
}

controller.retrieveAll = async function (req, res) {
    try {
        const result = await prisma.car.findMany()

        // HTTP 200: OK (implícito)
        res.send(result)
    } catch (error) {
        console.error(error)

        // HTTP 500: Internal Server Error
        res.status(500).end()
    }
}

export default controller