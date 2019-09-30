Vue.component("ident-form", {
  template: `<div class='ident-form'>
              <form v-if="affiche">
                <label>Login:</label><input type='text' v-model='login'><br>
                <label>Password:</label><input type='password' v-model='password'>
                <button @click='identification'>Se connecter</button>
              </form>
              <p v-if="!affiche"><a href='#' @click='deconnection'>Se déconnecter</a></p>
              </div>`,
  data() {
    return {
      login: "",
      password: "",
      affiche: true
    };
  },
  methods: {
    identification() {
      if (this.login == "salva" && this.password == "pass") {
        this.affiche = false;
        //this.$root.connexion = true;
        this.$emit("connexion", true);
      } else {
        alert("ERREUR !");
      }
    },
    deconnection() {
      this.login = "";
      this.password = "";
      this.affiche = true;
      //this.$root.connexion = false; //$root -> la racine
      this.$emit("connexion", false); //$emit -> émettre un évenement
    }
  }
});
