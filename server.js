const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const PORT = 3000;

// Store your product keys on the server (you can store them in a database or a separate file)
const correctKeys = [
    "RA46-DAKB-G2B4-JE6W",
    "8YYE-ZY6C-B1Y4-RCWW",
    "CF1Z-7ONY-GBD7-QF34",
    "2TIC-FJ78-I80B-A6B6",
    "VQ9I-1262-B8T7-O0HL",
    "VKDC-4ORY-MY8I-5BZP",
    "PV1K-MC5A-SQ06-9GP7",
    "UJD6-DLXN-F9I5-ES05",
    "6CIZ-M84Y-VTAB-0VOY",
    "469R-C8WW-FRVY-Y3Z5",
    "L1QR-4FW3-SATX-ZK6U",
    "BE4H-RLW8-3MIS-R63J",
    "Z3CH-JW90-Y63M-4J1I",
    "MG8S-EH6X-RMNR-QGT2",
    "SD9C-9XFT-K9ZO-2RRZ"
];

// Middleware to parse incoming JSON requests
app.use(bodyParser.json());

app.post('/validate-key', (req, res) => {
    const { key } = req.body;

    if (correctKeys.includes(key)) {
        res.status(200).send({ valid: true });
    } else {
        res.status(400).send({ valid: false });
    }
});

// Serve your frontend files (optional)
app.use(express.static('public'));

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
