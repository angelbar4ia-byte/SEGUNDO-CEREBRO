# Decisiones de arquitectura (SEGUNDO CEREBRO)

Registro de las decisiones que cambian cómo se conectan las piezas del sistema. Cada una dice **qué** se decidió, **por qué** y **qué cambia**.

Estados: **confirmada** (aprobada por el dueño del proyecto), **propuesta** (falta su visto bueno), **pendiente** (falta decidir).

Cuando las decisiones confirmadas cambian el contrato, se reescribe `CONTRATO_CONEXION_APPS.md` (siguiente versión: 3.0). Mientras tanto, **este archivo manda sobre el contrato v2.0** donde se contradigan.

| # | Decisión | Estado |
|---|---|---|
| D1 | Una sola app modular | Confirmada |
| D2 | Cuidados entra como módulo | Confirmada |
| D3 | GRAVITY sí usa dinero, por rol y sin IA en la nube | Confirmada (cuidados: propuesta) |
| D4 | Teléfono y laptop Windows; GRAVITY controla la laptop | Confirmada |
| D5 | Roles y personas | Confirmada (detalles pendientes) |
| D6 | Bocinas Xiaomi como medio de voz de GRAVITY | Propuesta |
| D7 | Servidor: Firebase con plan Blaze | Pendiente (recomendada la opción A) |
| D8 | Reglas para controlar la laptop | Propuesta |
| D9 | Puente de casa (Home Assistant) | Propuesta |

---

## D1. Una sola app modular — confirmada (20/oct/2026)

**Decisión.** SEGUNDO CEREBRO es **una sola app** con módulos:

| Módulo | Origen del diseño |
|---|---|
| Presupuesto y Alimentación | `FINANZAS/` (diseño v23) |
| Hábitos y Objetivos | `HABITOS/` (diseño v1.18) |
| Cuidados | App de cuidados existente (fase 3, rediseñable) — ver D2 |
| **GRAVITY** | `GRAVITY/` — capa central que une a los módulos (por diseñar) |

**Por qué.** Un asistente útil necesita ver el contexto, actuar y tener una sola memoria. Con apps separadas en Android, cada lectura o acción de GRAVITY sobre otra app requiere un puente nativo (Kotlin) en esa app; con el contrato v2.0, GRAVITY solo podía abrir pantallas por enlace.

**Reglas.**
- Cada módulo es dueño de sus datos: **un solo escritor por tipo de dato** (se mantiene la sección 1 del contrato v2.0).
- **GRAVITY no lee bases de datos.** Usa solo una lista cerrada de funciones ("herramientas") que cada módulo publica, p. ej. `habitos.resumen_hoy`, `presupuesto.agregar_a_lista`. Lo que no está en la lista no existe para GRAVITY. Toda escritura pide confirmación.
- Los módulos se activan por partes; la app funciona con cualquier combinación de módulos activos.
- **Familiares y cuidadores:** todos instalan la misma app y cada quien ve solo los módulos de su rol (D5); los permisos los aplica el servidor. Si hiciera falta, del mismo código se puede generar una versión aparte (p. ej. solo Hábitos).

**Qué cambia del contrato v2.0.**
- Las vías A (archivos JSON) y B (enlaces) **ya no se usan entre módulos del mismo usuario**: los datos se comparten dentro de la app. Se conservan para compartir con otras personas mientras no se decida otra cosa.
- La sección 9 (GRAVITY solo por enlaces) se reescribe con las herramientas de arriba.
- Los diseños de FINANZAS y HÁBITOS se conservan como especificación de su módulo.

---

## D2. Cuidados entra como módulo — confirmada (20/oct/2026)

**Decisión.** La app de cuidados deja de ser externa y se integra como módulo.

**Se mantiene del contrato v2.0.**
- Los datos clínicos de la persona bajo cuidado (diagnóstico, medicamentos, citas, comportamiento) **nunca van a la IA en la nube** y no se mezclan con Hábitos.
- Gastos de cuidado y necesidades de alimentación entran a Presupuesto **con confirmación** (sección 6).
- Acceso por rol y con consentimiento de quien representa a la persona; todo cambio queda en bitácora.

**Sincronización — propuesta.** Hay varios cuidadores en distintos teléfonos (D5), así que los datos de Cuidados **se sincronizan en la nube** (mismo servidor, D7), con reglas por rol. Siguen sin ir nunca a la IA en la nube.

---

## D3. GRAVITY y el dinero — confirmada (20/oct/2026)

**Decisión.** GRAVITY **sí** puede usar datos de dinero, **con restricción por rol** (D5) y **sin enviarlos nunca al modelo de IA en la nube**.

- El modelo en la nube solo entiende la pregunta y elige la herramienta. La herramienta de Presupuesto entrega su respuesta **directo a la pantalla o a la voz**, sin pasar por el modelo: el modelo nunca ve cifras, cuentas, precios ni comercios.
- Análisis con IA de los datos de dinero (p. ej. *"¿en qué puedo ahorrar?"*): solo con un modelo de IA **local en la laptop** (opción futura), nunca en la nube.
- **Nunca por bocinas** (D6).

**Cuidados — propuesta.** Misma regla que el dinero (solo dentro del dispositivo, solo roles autorizados). En bocinas, solo recordatorios **genéricos**, sin nombre del medicamento ni de la persona (p. ej. *"Hora del medicamento de las 8:00"*).

---

## D4. Teléfono y laptop — confirmada (20/oct/2026)

**Decisión.** Los datos viven en la nube (servidor: D7); el **teléfono y la laptop son dos pantallas del mismo sistema**. Ninguna depende de que la otra esté encendida.

- **Laptop: Windows.** GRAVITY en la laptop **controla la computadora** (reglas en D8), así que es una **app de escritorio para Windows**, del mismo código Flutter.
- **Restricción técnica:** el SDK oficial de Firebase para Flutter en Windows es *"for development only. Production on Windows is not supported"* ([FlutterFire](https://github.com/firebase/flutterfire)). Por eso la app de Windows **no se conecta directo a la base de datos**: usa las herramientas del servidor (D7). Las pantallas de los módulos en la laptop se usan en la **versión web** (navegador), donde Firebase sí es para producción; GRAVITY puede abrirlas.

| | Teléfono (lo diario) | Laptop (planear, analizar, controlar) |
|---|---|---|
| Presupuesto y Alimentación | Gasto al momento, lista de compras en el súper, qué como hoy | Presupuesto del mes, estados de cuenta, menú semanal, recetas, reportes (versión web) |
| Hábitos y Objetivos | Marcar hábitos y comidas, ejercicio y bici (GPS), sueño, peso y agua (Health Connect) | Revisión semanal, objetivos (versión web) |
| Cuidados | Medicamentos a tiempo, bitácora del cuidador | Citas, resumen, costos (versión web) |
| GRAVITY | Voz en cualquier lugar, recordatorios | App de Windows: voz y texto, control de la laptop; puente de casa provisional (D9) |

---

## D5. Roles y personas — confirmada (20/oct/2026)

| Persona | Rol | Módulos | Dinero en GRAVITY | Cuidados |
|---|---|---|---|---|
| Usuario | **Dueño** | Todos | Completo | Completo |
| Pareja | **Co-administrador** | Alimentación, su Hábitos; Presupuesto solo lectura | Solo lectura del presupuesto | Según consentimiento |
| Otros familiares | **Familiar** | Su Hábitos y su parte de Alimentación | No | No |
| Papá (Alzheimer) | **Persona bajo cuidado** | No usa la app; sus datos viven en Cuidados | — | Titular de los datos |
| Cuidadora principal (por turnos; puede haber más) | **Cuidador** | Cuidados | Solo los gastos de cuidado que registra | Su parte |
| Hermana (martes, después del turno de la cuidadora) | **Cuidador** (familiar) | Cuidados | Los gastos de cuidado que registra | Su parte |
| Esposo e hijos de la hermana | Sin cuenta | — | — | — |
| Cualquiera en casa (bocinas, D6) | **Casa** | Recetas, lista de compras, recordatorios generales | No | Solo recordatorios genéricos |

**Reglas.**
- Cada persona tiene **su propia cuenta**. Los roles se validan **en el servidor** (reglas de la base de datos), no solo en la pantalla.
- **Cuidadores:** los invita el Dueño y se pueden agregar más. Al darlos de baja pierden el acceso de inmediato; lo que registraron queda en la bitácora con su nombre.
- **Turnos:** Cuidados lleva el calendario de turnos. Los recordatorios de cuidados (medicamentos, comidas) llegan al teléfono de **quien está de turno**, y al cambiar de turno hay una **entrega de turno** (notas para quien sigue).
- **Comidas de papá:** el cuidador de turno ve el plan de comidas de papá (solo el de él, sin costos) y registra si comió, comió poco o rechazó; eso regresa a Alimentación (contrato v2.0, sección 6).
- La cuidadora **no ve nada de la familia** fuera de Cuidados (dinero, hábitos, menús de otros).
- Papá no tiene cuenta; los consentimientos sobre sus datos los da quien lo representa.
- La voz **no identifica de forma segura** a una persona: las bocinas siempre tienen el rol **Casa**.

**Pendiente.**
- Si la hermana ve el **resumen mensual del costo del cuidado** (p. ej. si comparten gastos).
- Quién representa a papá para los consentimientos.
- Si papá vive en la casa de las bocinas (afecta qué recordatorios se dicen en voz alta y en qué bocina).

---

## D6. Bocinas Xiaomi como medio de voz de GRAVITY — propuesta

**Equipos.** Dos **Xiaomi Smart Speaker (IR Control)**, modelo L05G: traen **Google Assistant** y **Chromecast integrado** ([Xiaomi](https://www.mi.com/global/product/xiaomi-smart-speaker-ir-control/)). No está confirmado si recibirán Gemini para Home.

**Límite de Google.** Google no deja que otras apps reciban lo que se le dice libremente a sus bocinas: las acciones conversacionales de terceros se cerraron en 2023 y lo nuevo ([Gemini built in](https://9to5google.com/2026/05/21/gemini-built-in-will-bring-google-home-ai-to-more-third-party-speakers-this-year/)) es para fabricantes. Por estas bocinas GRAVITY **no tiene conversación libre**; se usa así:

| Dirección | Cómo | Ejemplos |
|---|---|---|
| **Pedirle a GRAVITY** | **Frases fijas**: rutina de Google Home con comando de voz propio → activa una escena virtual del puente de casa (D9) → GRAVITY ejecuta la herramienta | *"Hey Google, siguiente paso"*, *"paso anterior"*, *"repite el paso"*, *"qué cocino hoy"*, *"lee la lista de compras"*, *"qué toca hoy"* |
| **GRAVITY habla** | GRAVITY genera la voz y el puente de casa la envía a la bocina por Chromecast | Recordatorios, receta paso a paso, recomendaciones, respuesta a las frases fijas |
| **Control infrarrojo** (tele, aire) | Ya funciona con Xiaomi Home + Google Home | Que GRAVITY lo use: a verificar |

**Reglas.**
- Las frases fijas **no llevan datos libres**: *"agrega leche a la lista"* no se puede por la bocina; eso va por teléfono o laptop.
- Rol **Casa** (D5): **nada de dinero ni datos clínicos**; recordatorios de cuidados solo genéricos (D3). Lo que se dice a la bocina pasa por Google.
- Cada frase se asigna a una bocina concreta (p. ej. las de recetas a la de la cocina) para que GRAVITY responda donde la escucharon.
- Conversación libre por voz en casa: teléfono, laptop o, a futuro, un micrófono propio de GRAVITY (satélite de voz conectado al puente de casa).

**Otras vías.** Bocina Bluetooth conectada al teléfono o la laptop: disponible siempre. Alexa: solo si algún día se compra un Echo (skill propia con [API de recordatorios](https://developer.amazon.com/en-US/docs/alexa/smapi/alexa-reminders-overview.html)).

---

## D7. Servidor — pendiente (recomendada la opción A)

**Por qué ahora hace falta un servidor.** (1) La clave de la IA no puede ir dentro de las apps (contrato v2.0, sección 9.5). (2) La skill de Alexa necesita una dirección en internet que le responda. (3) La app de Windows y Alexa necesitan las herramientas de GRAVITY con roles. (4) Recordatorios programados. El plan **Spark de Firebase no permite funciones de servidor**.

- **A (recomendada): Firebase con plan Blaze.** Se conservan los diseños de FINANZAS y HÁBITOS y el **modo sin conexión del teléfono**. Funciones de servidor (Cloud Functions) para el proxy de IA, la skill de Alexa, las herramientas de GRAVITY con roles y los recordatorios. Blaze pide tarjeta; el uso personal suele quedar dentro de la cuota gratuita. Se configura una alerta de presupuesto.
- **B: cambiar a Supabase.** Un solo SDK para Android, web y Windows; roles nativos en la base de datos; funciones de servidor en el plan gratuito. Pero el teléfono pierde el modo sin conexión integrado (habría que agregar una capa local) y hay que revisar los diseños de FINANZAS y HÁBITOS.

**Arquitectura con la opción A.** Las pantallas del teléfono usan la base de datos directo (sin conexión incluida). **Todos los GRAVITY** (teléfono, Windows, Alexa) usan **las mismas herramientas del servidor**, donde se aplican los roles (D5) y la regla de que el dinero no pasa por la IA en la nube (D3). Las acciones sobre la laptop (D8) se ejecutan en la propia laptop.

---

## D8. Control de la laptop — propuesta

- **Lista cerrada de acciones** (p. ej. abrir programas y archivos, buscar archivos, leer y redactar correos, abrir la versión web de los módulos). Lo que no está en la lista no se puede hacer.
- **Confirmación** antes de enviar, borrar, mover, instalar o pagar. GRAVITY **nunca** opera banca en línea ni compras.
- Lo que GRAVITY **lee** (correos, páginas web, archivos) es información, **nunca órdenes**: si un correo dice "borra tal carpeta", no se ejecuta.
- Bitácora de todas las acciones.

**Pendiente.** La lista concreta de acciones: qué programas, qué correo (Gmail u Outlook), calendario, etc.

---

## D9. Puente de casa — propuesta

**Por qué.** Chromecast solo funciona **dentro de la red de la casa**: el servidor en la nube no puede hablarle directo a las bocinas, y la laptop no está siempre encendida.

**Propuesta.** Un equipo pequeño **siempre encendido** en la red de casa con **Home Assistant**:
- Expone las frases fijas de GRAVITY a Google Home y envía la voz de GRAVITY a las bocinas (D6).
- Pide al servidor de GRAVITY (D7) que ejecute las herramientas, siempre con el rol **Casa**.
- A futuro: satélites de voz, luces, control infrarrojo y otros aparatos de la casa.
- Conexión con Google: suscripción de Home Assistant Cloud (lo más simple) o configuración manual con un túnel seguro (gratis, más trabajo). **Nunca se abren puertos del router.**

**Para empezar.** Se puede probar con la laptop como puente (Home Assistant en una máquina virtual de Windows); mientras tanto, las bocinas solo funcionan con la laptop encendida.

**Pendiente.** Qué equipo usar (Raspberry Pi, Home Assistant Green o mini PC) y qué conexión con Google.
