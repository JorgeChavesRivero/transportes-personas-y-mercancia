# Transportes Ruta Norte

Sitio web de una empresa de transporte de carga y de pasajeros, con vehículos en alquiler y sede principal en Medellín, Colombia. Está hecho solo con HTML y CSS, sin JavaScript.

## Archivos

| Archivo | Qué contiene |
| --- | --- |
| `index.html` | Página principal: portada, servicios, vehículos en alquiler y contacto. |
| `login.html` | Formulario de inicio de sesión (correo y contraseña). |
| `admin.html` | Panel de administración con resumen, vehículos y reservas. |
| `styles.css` | Estilos de todas las páginas. |

## Cómo usarlo

1. Guarda los cuatro archivos en la misma carpeta.
2. Abre `index.html` en el navegador.
3. Desde el menú, entra a "Iniciar sesión" para ver el panel de administración.

No necesita instalar nada. Para ver la tipografía Inter hace falta conexión a internet; sin conexión se usa la letra del sistema.

## Diseño

- **Colores:** azules, grises y negro. El azul es el único color de acento.
- **Tipografía:** Inter, con letra del sistema como respaldo.
- **Modo oscuro:** la página cambia sola según la configuración del dispositivo.
- **Móvil:** se adapta a pantallas pequeñas.

Los colores están definidos como variables al inicio de `styles.css` (`--blue`, `--black`, `--bg`, entre otras). Cámbialos ahí para modificar toda la paleta.

## Qué debes cambiar

- **Nombre y logo:** "Ruta Norte" aparece en `index.html`, `login.html` y `admin.html`.
- **Contacto:** los teléfonos, el correo y el horario de `index.html` son de ejemplo.
- **Dirección:** ahora solo dice "Medellín, Antioquia". Agrega la dirección de la sede.
- **Panel:** las placas, clientes, cifras y fechas de `admin.html` son de ejemplo.

## Limitación importante

El inicio de sesión es solo visual. Con HTML y CSS no se puede verificar quién entra:

- Cualquier correo y contraseña llevan al panel.
- Cualquiera que conozca la dirección de `admin.html` puede abrirlo directamente.

No pongas información real de clientes ni de la empresa en `admin.html` mientras no haya un servidor que valide el acceso.

## Próximos pasos posibles

- Conectar el inicio de sesión a un servidor que valide las credenciales.
- Mostrar en el panel datos reales de una base de datos.
- Agregar un formulario de cotización en `index.html`.
- Publicar el sitio en un servicio de alojamiento.
