const pool = require('../db/connect');

const afficherLesModules = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM modules', (err, data) => {
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
const rechercheModule = (req, res) => {
    const { id: id } = req.params;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM modules WHERE id = ?', [id], (err, data) => {
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
const enregistrerModule = (req, res) => {
    const { code_module, designation_module, coefficient, volume_horaire, filiere } = req.body;
    const sql = 'INSERT INTO modules(code_module,designation_module,coefficient,volume_horaire,filiere) VALUES (?,?,?,?,?)';
    const values = [code_module, designation_module, coefficient, volume_horaire, filiere];
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

const modifierModule = (req, res) => {

    const { id: id } = req.params;
    const { code_module, designation_module, coefficient, volume_horaire, filiere } = req.body;
    const sql = 'UPDATE modules SET code_module = ?, designation_module= ?, coefficient= ?, volume_horaire= ?, filiere = ?WHERE id = ?';
    const values = [code_module, designation_module, coefficient, volume_horaire, filiere, id];
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
const supprimerModule = (req, res) => {

    const { id: id } = req.params;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('DELETE FROM modules WHERE id = ?', [id], (err, data) => {
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
    rechercheModule,
    supprimerModule,
    modifierModule,
    enregistrerModule,
    afficherLesModules
}