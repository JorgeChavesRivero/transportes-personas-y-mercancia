function enviarAWhatsApp() {
    const nombre = document.getElementById('nombre_cliente').value.trim();
    const telefono = document.getElementById('telefono_cliente').value.trim();
    const servicio = document.getElementById('tipo_servicio').value;

    if (!nombre || !telefono) {
        alert("Por favor ingresa tu nombre y número de teléfono.");
        return;
    }

    const numeroDuenio = "573000000000"; 
    const mensaje = `Hola Ruta Norte, solicito cotización:%0A` +
                    `*Nombre:* ${encodeURIComponent(nombre)}%0A` +
                    `*Teléfono:* ${encodeURIComponent(telefono)}%0A` +
                    `*Servicio:* ${encodeURIComponent(servicio)}`;

    window.open(`https://wa.me/${numeroDuenio}?text=${mensaje}`, '_blank');
}

document.getElementById('form-login')?.addEventListener('submit', function(e) {
    e.preventDefault(); 

    const correo = document.getElementById('correo').value.trim();
    const clave = document.getElementById('clave').value.trim();

    if (correo === "admin@rutanorte.com" && clave === "123456") {
        sessionStorage.setItem('usuarioAutenticado', 'true'); 
        window.location.href = 'admin.html'; 
    } else {
        alert("Correo o contraseña incorrectos.");
    }
});

function cerrarSesion() {
    sessionStorage.removeItem('usuarioAutenticado');
    window.location.href = 'login.html';
}