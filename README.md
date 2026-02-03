# Sistema de Gestión de Sueldos (PHP + MySQL)

Sistema de gestión de sueldos desarrollado en **PHP y MySQL** como proyecto académico grupal.
Este sistema le permite a supervisores administrar empleados, conceptos salariales y realizar el cálculo de sueldo neto.

---

## Funcionalidades principales
- Gestión de empleados
- Gestión de conceptos salariales
- Cálculo de sueldo neto
- Sistema de login con roles
- Generación de reportes

## Funcionalidades por roles

### Supervisor
- Alta y modificación de empleados
- Carga de conceptos (ausencias, horas extra, etc.)
- Cálculo de sueldo neto y registro por período
- Consulta de datos de empleados
- Generación de reportes
- Gestión completa del sistema

### Empleado
- Visualización de su información personal
- Consulta de su sueldo y datos asociados

---

## Tecnologías utilizadas
- PHP 8 (XAMPP)
- MySQL / MariaDB
- HTML + CSS
- phpMyAdmin / HeidiSQL

---

## Cómo ejecutar el proyecto (entorno local)

1. Instalar **XAMPP** y encender **Apache** y **MySQL**
2. Copiar la carpeta del proyecto dentro de `xampp/htdocs`
3. Importar la base de datos (`.sql`) en **phpMyAdmin**
4. Configurar el archivo `conexion.php` con el nombre correcto de la base de datos
5. Abrir en el navegador: `http://localhost/NOMBRE_CARPETA/logininiciosesiones.php`
 
---

## Capturas del sistema

### Login
![Login](screenshots/login.png)

### Menú principal (Supervisor)
![Menú principal](screenshots/menu.png)

### Listado de sueldos
![Listado](screenshots/listado.png)

--- 

## Nota personal
  Estoy iniciándome en GitHub y en buenas prácticas de publicación de proyectos. Este repositorio refleja mi proceso de aprendizaje y crecimiento como desarrolladora backend.
  Cualquier sugerencia o feedback es más que bienvenido 
