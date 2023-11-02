const pool = require('../db/connect');
const afficherLesEtudiants = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM etudiants', (err, data) => {
            if (err)
                return res.status(500).json({ message: `Error occured`, success: false });
            const result = data;
            if (!result) {
                return res.status(404).json({ message: `No data found`, success: false });
            }
            res.status(200).send(result);
        });
        connection.release();
    })
}
const rechercheEtudiant = (req, res) => {

    const { id: id } = req.params;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM etudiants WHERE id = ?', [id], (err, data) => {
            if (err)
                return res.status(500).json({ message: `Error occured`, success: false });
            const result = data[0];
            if (!result) {
                return res.status(404).json({ message: `No data found`, success: false });
            }
            res.status(200).send(result);
        });
        connection.release();
    })
}
const enregistrerEtudiant = (req, res) => {

    const { civilite, nom_prenom, adresse, no_postal, localite, pays, platformes, applications, filiere, image } = req.body;
    const sql = 'INSERT INTO etudiants(civilite, nom_prenom,adresse, no_postal, localite, pays, platformes, applications, filiere, image) VALUES (?,?,?,?,?,?,?,?,?,?)';
    const values = [civilite, nom_prenom, adresse, no_postal, localite, pays, platformes, applications, filiere, image];
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query(sql, values, (err, data) => {
            if (err)
                return res.status(500).json({ message: `Error occured`, success: false });
            res.status(201).json({ success: true });
        });
        connection.release();
    })
}
const modifierEtudiant = (req, res) => {

    const { id: id } = req.params;
    const { civilite, nom_prenom, adresse, no_postal, localite, pays, platformes, applications, filiere, image } = req.body;
    const sql = 'UPDATE etudiants SET civilite = ?, nom_prenom= ?, adresse= ?, no_postal= ?, localite = ?, pays = ?, platformes = ?, applications = ?, filiere = ?, image = ? WHERE id = ?';
    const values = [civilite, nom_prenom, adresse, no_postal, localite, pays, platformes, applications, filiere, image, id];
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query(sql, values, (err, data) => {
            if (err)
                return res.status(500).json({ success: false });
            if (!data.changedRows)
                return res.status(404).json({ success: false });
            return res.status(200).json({ success: true });

        });
    })
}
const supprimerEtudiant = (req, res) => {

    const { id: id } = req.params;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('DELETE FROM etudiants WHERE id = ?', [id], (err, data) => {
            if (err)
                return res.status(500).json({ success: false });
            if (!data.affectedRows)
                return res.status(404).json({ success: false });
            return res.status(200).json({ success: true });
        });
        connection.release();
    })
}
module.exports = {
    rechercheEtudiant,
    supprimerEtudiant,
    modifierEtudiant,
    enregistrerEtudiant,
    afficherLesEtudiants
}