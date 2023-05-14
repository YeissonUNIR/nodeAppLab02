const express = require('express');
const mongoose = require('mongoose');
require('dotenv').config();

let dbConectionStatus = "Undefined"

// Conexión a la base de datos de MongoDB
mongoose.connect(process.env.MONGODB_URI, {
    useNewUrlParser: true,
    useUnifiedTopology: true
})
    .then(() => {
        console.log('Conexión exitosa a la base de datos de MongoDB');
        dbConectionStatus = "SUCCESSFULLY";
    })
    .catch((error) => {
        console.error('Error de conexión a la base de datos de MongoDB', error);
        dbConectionStatus = "FAILURE";
    });

// Creación de la aplicación Express
const app = express();

// Rutas de ejemplo
app.get('/', (req, res) => {
    res.send(`<h1>Hello, UNIR !</h1> <br/>
    <p>The Status of the conexion with the Mongo databases is: <strong>${dbConectionStatus}</strong></p>` );
});

// Inicio del servidor
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Servidor en ejecución en el puerto ${PORT}`);
});

