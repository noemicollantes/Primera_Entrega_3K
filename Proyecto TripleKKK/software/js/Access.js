class AccessJs {
  constructor() {}

  validateLog(event) {
    const form = document.querySelector("#login");
      event.preventDefault(); // prevenir el envío del formulario

      const user_name = document.querySelector("#usser_name").value;
      const password = document.querySelector("#password").value;

      if (user_name === "" || password === "") {
        swal({
          title: "DATOS VACIOS!",
          text: "Por favor ingrese todos los datos",
          icon: "warning",
          button: "Entendido!",
        });
      } else {
        // formulario válido, puedes enviar los datos
        form.submit();
        
      }
  }
}

const Access = new AccessJs();
