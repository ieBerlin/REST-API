const pool = require('../db/connect');
const createUser = (req, res) => {
    const { email, password, role } = req.body;
    const sql = 'INSERT INTO user(email,mdp,role) VALUES (?,?,?)';
    const values = [email, password, role];
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
const updateUser = (req, res) => {

    const { id: id } = req.params;
    const { email, password, role } = req.body;
    const sql = 'UPDATE user SET email = ?, mdp= ?, role= ?WHERE id = ?';
    const values = [email, password, role, id];
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
const deleteUser = (req, res) => {

    const { id: id } = req.params;
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('DELETE FROM user WHERE id = ?', [id], (err, data) => {
            if (err)
                return res.status(500).json({ success: false });
            if (!data.affectedRows)
                return res.status(404).json({ success: false });
            return res.status(200).json({ success: true });
        });
        connection.release();
    })
}
const rechercheUser = (req, res) => {
    const { email, password } = req.params;
    console.log(email, password);
    pool.getConnection((err, connection) => {
        if (err) throw err;
        const sql = `SELECT * FROM user WHERE email = '${email}' AND mdp = '${password}'`;
        console.log(sql);
        connection.query(sql, (err, data) => {
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
const getAllUsers = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        const sql = `SELECT * FROM user `;
        console.log(sql);
        connection.query(sql, (err, data) => {
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
module.exports = {
    createUser,
    updateUser,
    deleteUser,
    rechercheUser,
    getAllUsers,
}