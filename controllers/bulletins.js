const pool = require('../db/connect');
const afficherLesBulletins = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM notes ORDER BY num_etudiant ASC', (err, data) => {
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

const rechercheBulletin = (req, res) => {

    const { id: id } = req.params;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM notes WHERE num_etudiant = ?', [id], (err, data) => {
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
const enregistrerBulletin = (req, res) => {
    const { num_etudiant, filiere, nom_module, code_module, coefficient, note } = req.body;
    const sql = 'INSERT INTO notes(num_etudiant,filiere,nom_module,code_module,coefficient,note) VALUES (?,?,?,?,?,?)';
    const values = [num_etudiant, filiere, nom_module, code_module, coefficient, note];
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
const modifierBulletin = (req, res) => {
    const { id: id } = req.params;
    const { note, module } = req.body;
    const sql = 'UPDATE notes SET note = ? WHERE num_etudiant = ? AND nom_module = ?';
    const values = [note, id, module];
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
const supprimerBulletin = (req, res) => {
    const { id: id } = req.params;
    const { module: module } = req.body;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('UPDATE notes SET note = ? WHERE num_etudiant = ? AND nom_module = ?', ['', id, module], (err, data) => {
            if (err)
                return res.status(500).json({ success: false });
            if (!data.affectedRows) {
                return res.status(404).json({ success: false });

            }
            return res.status(200).json({ success: true });
        });
        connection.release();
    })
}


module.exports = {
    rechercheBulletin,
    supprimerBulletin,
    modifierBulletin,
    enregistrerBulletin,
    afficherLesBulletins,
}