const pool = require('../db/connect');
const afficherLesEnseignants = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM enseignants', (err, data) => {
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
const rechercheEnseignant = (req, res) => {
    const { id: id } = req.params;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM enseignants WHERE id = ?', [id], (err, data) => {
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
const enregistrerEnseignant = (req, res) => {
    const { civilite, nom_prenom, adresse, date_naissance, lieu_naissance, pays, grade, specialite, image } = req.body;
    const sql = 'INSERT INTO enseignants(civilite, nom_prenom, adresse, date_naissance, lieu_naissance, pays, grade, specialite, image) VALUES (?,?,?,?,?,?,?,?,?)';
    const values = [civilite, nom_prenom, adresse, date_naissance, lieu_naissance, pays, grade, specialite, image];
    pool.getConnection((err, connection) => {
        if (err) {
            console.log(err)


            throw err;
        }
        connection.query(sql, values, (err, data) => {
            if (err) {
                console.log(err)
                return res.status(500).json({ message: `Error occured`, success: false });

            }
            res.status(201).json({ success: true });
        });
        connection.release();
    })
}
const modifierEnseignant = (req, res) => {
    const { id: id } = req.params;
    const { civilite, nom_prenom, adresse, date_naissance, lieu_naissance, pays, grade, specialite, image } = req.body;
    const sql = 'UPDATE enseignants SET civilite = ?, nom_prenom= ?, adresse= ?, date_naissance = ?, lieu_naissance = ?, pays = ?, grade = ?, specialite = ?, image = ? WHERE id = ?';
    const values = [civilite, nom_prenom, adresse, date_naissance, lieu_naissance, pays, grade, specialite, image, id];
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
const supprimerEnseignant = (req, res) => {
    const { id: id } = req.params;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('DELETE FROM enseignants WHERE id = ?', [id], (err, data) => {
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
    rechercheEnseignant,
    supprimerEnseignant,
    modifierEnseignant,
    enregistrerEnseignant,
    afficherLesEnseignants,
}