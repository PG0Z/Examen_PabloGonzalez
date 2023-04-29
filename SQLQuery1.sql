Create table Mae_Usuarios(
Login_Usuario varchar(50) primary key,
Clave_Usuario varchar(30) Not null,
Nombre_Usuario varchar(50)not null
)

Create table Mae_Mascotas(
ID_Mascota int identity(1,1) primary key,
Nombre_Mascota varchar(50) Unique,
Tipo_Mascota varchar(50),
Comida_Favorita varchar(50)
)

Create Table Control_Citas(
ID_Mascota int,
Proxima_Fecha varchar(10),
Medico_Asignado varchar(50)
CONSTRAINT FK_ID_Mascota FOREIGN KEY(ID_Mascota) REFERENCES Mae_Mascotas(ID_Mascota)
)

------Procedimiento almacenado Usuarios------
---Listado Usuario---
Create procedure SP_ListadoUsuarios
as
begin
select*from Mae_Usuarios
end
---Insertar---
Create procedure SP_insertarUsuario

@Usuario varchar(50),
@Clave varchar(30),
@Nombre varchar(50)
as
begin
insert into Mae_Usuarios(Login_Usuario,Clave_Usuario,Nombre_Usuario) values(@Usuario,@Clave,@Nombre)
select*from Mae_Usuarios
end

---Borrar---
Create Procedure SP_BorrarUsuario
@Usuario varchar (50)

as
begin
Delete Mae_Usuarios Where Login_Usuario=@Usuario
end
 

 ---Actualizar---
 Create procedure SP_ActualizarUsuario
 @Usuario varchar (50),
@Clave varchar(30),
@Nombre varchar(50)
 as
 begin
 UPDATE Mae_Usuarios
 SET
Login_Usuario=@Usuario,
Clave_Usuario=@Clave,
Nombre_Usuario=@Nombre
Where Login_Usuario=@Usuario
 end