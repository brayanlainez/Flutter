__FLUTTER__

[Descarga el SDK de Flutter](https://flutter.dev/docs/get-started/install/windows) esto ya incluye Dart SDK

Instalar Android Studio y Visual Studio Code
Crear un vínculo simbólico como administrador, por los caracteres ASCII no identificados
    
    > mklink /D "C:\android-sdk" "C:\Users\username\AppData\Local\Android\Sdk"
    > mklink /D "C:\.android" "C:\Users\username\.android"

Actualizar las variables de entorno     
- Variables de usuario 
    - Agregar al Path
        - **C:\src\flutter\bin**
- Variables del sistema
    - Agregar **ANDROID_HOME=C:\android-sdk**
    - Agregar al Path
        - **%ANDROID_HOME%\tools**
        - **%ANDROID_HOME%\tools\bin**
        - **%ANDROID_HOME%\platform-tools**

Solución a la URL del SDK de Android: cambiar el SDK a otra carpeta

Actualizar las variables de entorno     
- Variables del sistema
    - Agregar **ANDROID_AVD_HOME=C:\.android\avd**
    - Agregar **ANDROID_HOME=C:\src\Android\Sdk**
    - Agregar **ANDROID_SDK_ROOT=C:\src\Android\Sdk**

Instalar el plugin de Flutter(se instalara el plugin de Dark) en Android Studio y Visual Studio Code
Instalar en el SDK Manager:
    -  Intel x86 Emulator Accelerator (HAXM installer)

TERMINAL

Ver si hay dependencias de la plataforma que necesita para completar la configuración

    > flutter doctor

Configuración actual

    > flutter config

Crear una app

    > flutter create myapp
    > cd myapp

Actualizar lo paquetes
    
    > flutter pub get

Ejecutar la app
- Use el modo de depuración durante el desarrollo, cuando quiera usar la recarga en caliente.
- Use el modo de perfil cuando desee analizar el rendimiento.
- Use el modo de lanzamiento cuando esté listo para lanzar su aplicación.

        > flutter devices
        > flutter emulators
        > flutter emulators --launch <emulator id>
        > flutter run  
        > flutter run --profile
        > flutter run --release

VSCODE

Usar el **View > Command Palette** para ejecutar comandos de Flutter 

Crear un nuevo proyeto ***>Flutter:New Project***

Elije un dispositivo ***>Flutter:Select Device*** o en la barra inferior

Active una configuración de inicio de Flutter en **View > Run** selecciona crear un archivo **launch.json** y elije ***Dark & Flutter***

Ejecutalo con **Run > Start Debugging** o **F5**