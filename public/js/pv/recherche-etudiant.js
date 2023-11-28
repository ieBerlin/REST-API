 function rechercheEtudiant() {
     const id = document.getElementById("numero").value;
     const url = 'http://localhost:3000';
     const etudiantAPI = '/api/etudiant/';
     if (!id) {
         return;
     }
     const baseURL1 = url.concat(etudiantAPI, id)
     axios.get(baseURL1).then(async response => {
         document.getElementById("error-occured").hidden = true;
         if (response.status === 200) {
             const data = response.data;
             document.getElementById("nom-prenom").value = data["nom_prenom"];
             const id = document.getElementById("numero").value;
             const bulletinAPI = '/api/bulletin/';
             const baseURL2 = url.concat(bulletinAPI, id)
             try {
                 await axios.get(baseURL2).then(response => {
                     document.getElementById("table-module").hidden = false;
                     const data = response.data;
                     let sommeCoef = 0;
                     let notes = 0;
                     for (var module of data) {
                         sommeCoef += module['coefficient'];
                         notes += module['note'] * module['coefficient'];
                     }
                     document.getElementById('moyenne-etudiant').textContent = Number(notes / sommeCoef).toFixed(2)
                     afficherLesNotesEtudiant(response.data);
                 }).catch(err => {
                     tableResetInnerHTML();
                     document.getElementById("table-module").hidden = true;
                     document.getElementById("filiere").hidden = true;
                     document.getElementById("error-occured").hidden = false;
                 });
             } catch (error) {
                 tableResetInnerHTML();
                 document.getElementById("table-module").hidden = true;
                 document.getElementById("filiere").hidden = true;
                 document.getElementById("error-occured").hidden = false;


             }
             return;
         }
     }).catch(err => {
         tableResetInnerHTML();
         document.getElementById("table-module").hidden = true;
         document.getElementById("filiere").hidden = true;
         document.getElementById("error-occured").hidden = false;

     })
 }