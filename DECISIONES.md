# Decisiones de arquitectura (SEGUNDO CEREBRO)

Registro de las decisiones que cambian cómo se conectan las piezas del sistema. Cada una dice **qué** se decidió, **por qué** y **qué cambia**.

Estados: **confirmada** (aprobada por el dueño del proyecto), **propuesta** (falta su visto bueno), **pendiente** (falta decidir).

Cuando las decisiones confirmadas cambian el contrato, se reescribe `CONTRATO_CONEXION_APPS.md` (siguiente versión: 3.0). Mientras tanto, **este archivo manda sobre el contrato v2.0** donde se contradigan.

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
- **Familiares:** del mismo código se genera una versión solo con los módulos que les tocan (p. ej. solo Hábitos), **sin el módulo de dinero**.

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

**Pendiente.** Si GRAVITY puede usar datos de cuidados (p. ej. recordar un medicamento) → D3. Si los datos clínicos se sincronizan en la nube (necesario si hay más de un cuidador) → D4.

---

## D3. GRAVITY, dinero y datos de cuidados — pendiente

**Pregunta.** ¿GRAVITY puede usar dinero y datos de cuidados **dentro del dispositivo** (respuestas calculadas en el teléfono o la laptop, p. ej. *"te quedan $X en súper"*, *"medicamento a las 8:00"*) **sin enviarlos nunca al modelo de IA en la nube**?

- **Sí:** las herramientas de esos módulos entregan su respuesta directo a la pantalla o a la voz, sin pasar por el modelo en la nube.
- **No:** quedan totalmente fuera de GRAVITY, como en el contrato v2.0.

Opción futura relacionada: un modelo de IA local en la laptop (D4) podría analizar esos datos sin que salgan de casa.

---

## D4. Teléfono y laptop — propuesta

**Propuesta.** Los datos viven en **Firebase** (punto de encuentro); el **teléfono y la laptop son dos pantallas de la misma app**. Ninguna depende de que la otra esté encendida, y ambas funcionan sin conexión y se sincronizan al volver.

| | Teléfono (lo diario) | Laptop (planear y analizar) |
|---|---|---|
| Presupuesto y Alimentación | Gasto al momento, lista de compras en el súper, qué como hoy | Presupuesto del mes, estados de cuenta, menú semanal, recetas, reportes |
| Hábitos y Objetivos | Marcar hábitos y comidas, ejercicio y bici (GPS), sueño, peso y agua (Health Connect) | Revisión semanal, objetivos |
| Cuidados | Medicamentos a tiempo, bitácora del cuidador | Citas, resumen, costos |
| GRAVITY | Voz en cualquier lugar, recordatorios | Texto y voz en el escritorio, tareas largas |

**Por qué no la laptop como centro que alimenta al teléfono.** La laptop se apaga o se queda en casa; lo diario (y Health Connect, que solo existe en el teléfono) pasa en el teléfono; exponer la laptop a internet para que el teléfono la alcance agrega riesgo y trabajo.

**Pendiente.**
- Qué debe hacer GRAVITY en la laptop. Si solo es usar los módulos: versión web en el navegador. Si debe controlar la computadora (programas, archivos, correo): app de escritorio, y hay que definir el sistema operativo.
- Si los datos clínicos de cuidados se sincronizan en la nube o se quedan solo en el dispositivo (D2).
