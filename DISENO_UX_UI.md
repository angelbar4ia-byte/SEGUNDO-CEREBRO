# Diseño UX/UI de GRAVITY

> **Versión 0.2 (20/oct/2026), borrador para definir juntos.** Documento común de experiencia y diseño visual de toda la app: la **pantalla principal de GRAVITY en la laptop**, las **pantallas de los módulos** y la **app del teléfono**. Las pantallas de cada módulo siguen en sus diseños (FINANZAS, sección 8; HÁBITOS, Anexo G) y deben respetar este documento.
>
> **(decidido)** = ya lo confirmaste. **(propuesto)** = sugerencia para revisar. Las preguntas para definir están en la sección 17.
>
> **Bocetos para comparar** (lienzo privado): [GRAVITY — estilos de pantalla](https://claude.ai/artifact/M4y2F9SJJvqXVKXjDJ7rwT). Incluye los tres estilos de la pantalla principal de la laptop (A, B y C), una pantalla dentro de un módulo (Finanzas › Semana) y tres pantallas del teléfono (Hoy del Dueño, Mi turno de la cuidadora y Registrar gasto). Los datos que aparecen son ejemplos.

---

## 1. Lo que ya está decidido

| Tema | Decisión | Origen |
|---|---|---|
| Plataformas | Laptop Windows con el sistema completo; teléfono Android con lo mínimo | D4 |
| Laptop | Pantalla principal de GRAVITY **tipo JARVIS** | D12 |
| Teléfono | **App normal**, sin pantalla tipo JARVIS; GRAVITY como botón de micrófono | D12 |
| Base | Material 3, tema claro y oscuro | HÁBITOS G.1 |
| Colores de Hábitos por área | Espiritual violeta, Salud verde, Inglés naranja, Personal azul verdoso, Laboral gris azulado, Hábitos a eliminar terracota (nunca rojo de alarma) | HÁBITOS G.1 |
| Tono | Cercano y sin culpa: un fallo es un "ajuste", no un error | HÁBITOS G.1 y G.7 |
| Rapidez | Registrar un gasto en menos de 10 s; la acción diaria de Hábitos en 3 toques o menos | FINANZAS 1 y decisión 24; HÁBITOS 1 |
| Privacidad en pantalla | Montos ocultos en la pantalla bloqueada; notificaciones discretas en hábitos sensibles | FINANZAS decisión 68; HÁBITOS G.6 |
| Datos sensibles | Diario de oración y hábitos sensibles cifrados en la nube o solo en el teléfono | D13 |
| Zonas táctiles | Mínimo 48 dp; acciones principales al alcance del pulgar | HÁBITOS G.1 |

---

## 2. Principios (propuesto)

1. **Una app, dos formas de uso.** En la laptop se piensa y se planea (mucha información, teclado y voz). En el teléfono se actúa (rápido, con una mano, pocas decisiones).
2. **Cada persona ve solo lo suyo.** La interfaz se arma según el rol (D5): nada de pantallas vacías ni botones bloqueados por permisos.
3. **Primero lo de hoy.** Al abrir, lo que toca ahora; el detalle, a un toque o un clic.
4. **Semáforos y barras en el teléfono; tablas completas en la laptop.**
5. **Siempre se confirma antes de escribir**, sobre todo lo que llega por voz o por GRAVITY.
6. **Privacidad visible.** El dinero y los datos de cuidados se ocultan con un toque o un atajo.
7. **Todo tiene estado** vacío, cargando, sin conexión y error, con un mensaje claro y una acción.
8. **Accesible:** letra grande opcional, buen contraste, lector de pantalla, nada que dependa solo del color.

---

## 3. Personas y contextos de uso (propuesto)

| Persona | Dónde | Contexto | Qué pide al diseño |
|---|---|---|---|
| **Tú, en la laptop** | Escritorio | Planear, revisar y configurar; sesiones largas | Pantalla con mucha información, atajos de teclado, voz, paneles |
| **Tú, en el teléfono** | Súper, coche, bici, calle | Prisa, una mano, a veces sin señal | Botón "+" siempre visible, registro en segundos, modo de solo audio al manejar |
| **Pareja** | Teléfono | Lo suyo y el resumen del presupuesto | Igual que el tuyo, pero reducido |
| **Cuidadora** | Teléfono, en su turno | Atiende a una persona con Alzheimer, con interrupciones constantes; quizá con poca experiencia en apps | Botones grandes, pocas opciones, lenguaje simple, confirmar en un toque, todo en "Mi turno" |
| **Hermana** | Teléfono, los martes | Llega después del turno de la cuidadora | Entrar directo a la entrega de turno |
| **Familiares** | Teléfono | Sus hábitos | Lo más simple |

---

## 4. Estilo visual: opciones y recomendación

| Opción | Cómo se ve | A favor | En contra |
|---|---|---|---|
| **A · Futurista (HUD)** | Fondo casi negro, líneas finas cian, anillos que giran, letra técnica | La sensación JARVIS más clara | Cansa en sesiones largas con tablas |
| **B · Minimalista oscuro** | Gris oscuro, tarjetas redondeadas, círculo que "respira" | Tranquilo y legible por horas | Menos "JARVIS" |
| **C · Claro sereno** | Fondo claro, GRAVITY en una franja superior | Muy legible de día | Se siente como una app de oficina |

**Recomendación (propuesto):** combinar.
- **Pantalla principal de GRAVITY → estilo A**, la sensación JARVIS que pediste.
- **Dentro de los módulos de la laptop → estilo B** (oscuro y tranquilo), con el mismo acento cian de GRAVITY, porque ahí se pasan horas con tablas y cifras. Ver el boceto *Laptop · Finanzas › Semana*.
- **Teléfono → claro o automático**, legible al sol (súper, calle), con los colores de cada módulo.

---

## 5. Laptop: pantalla principal de GRAVITY (propuesto)

```
┌──────────────────────────────────────────────────────────────────┐
│ GRAVITY                  mar 20 oct · 19:42            ● en línea │
├────────────────┬────────────────────────────────┬────────────────┤
│ HOY            │                                │ FINANZAS       │
│ 20:00 Inglés   │                                │ Semana  ● verde│
│ Hábitos 3/5    │          ◯  núcleo             │ Quedan  $ •••  │
│                │       (reacciona a la voz)     │                │
│ CUIDADOS       │                                │ AVISOS         │
│ Turno: Ana     │  "Buenas noches. Te faltan     │ Tarjeta vence  │
│ Medic. 8 pm ✓  │   2 hábitos de hoy."           │ el viernes     │
├────────────────┴────────────────────────────────┴────────────────┤
│ >  Escribe o habla a GRAVITY…                    🎤   Ctrl+Espacio │
├──────────────────────────────────────────────────────────────────┤
│  Finanzas · Hábitos · Cuidados · Alimentación · Casa · Ajustes   │
└──────────────────────────────────────────────────────────────────┘
```

| Zona | Qué hace |
|---|---|
| **Núcleo central** | Animación que muestra el estado de GRAVITY: en espera, escuchando, pensando o hablando |
| **Paneles** | Resumen de cada módulo activo; se pueden mover u ocultar |
| **Barra de órdenes** | Texto y voz. En la Fase 0 solo navega (*"abre presupuesto"*); en la Fase 6 conversa con IA |
| **Barra de módulos** | Abre cada módulo completo |
| **Atajo global** | Una combinación de teclas abre GRAVITY desde cualquier parte de Windows (sección 10) |
| **Modo privado** | Un atajo oculta montos y datos de cuidados, por si alguien está viendo |

---

## 6. Laptop: dentro de un módulo (propuesto)

- **Barra lateral** con las secciones del módulo y, arriba, el botón **GRAVITY** para volver a la pantalla principal.
- **Área principal** con tablas completas, filtros y la acción principal arriba a la derecha (p. ej. *Registrar movimiento*).
- **Panel de detalle** a la derecha o como hoja, sin perder la tabla de vista.
- GRAVITY sigue disponible con el atajo global y con la barra de órdenes.
- Si la ventana se hace angosta (p. ej. media pantalla), la barra lateral se vuelve menú y los paneles se apilan.

---

## 7. Teléfono: app normal (propuesto)

**Barra inferior según el rol**

| Rol | Pestañas |
|---|---|
| Dueño | Hoy · Finanzas · **(+)** · Hábitos · Más |
| Pareja | Hoy · Finanzas (resumen) · **(+)** · Hábitos · Más |
| Cuidador | Mi turno · Medicamentos · Comidas · Bitácora |
| Familiar | Hoy · Hábitos · Más |

- **Hoy** junta lo del día de todos los módulos: lo que sigue, hábitos, finanzas de la semana, pagos que vencen y cuidados.
- **(+)** registra un gasto, un ingreso extra, un hábito o un consumo (cigarrillo o azúcar), y abre el SOS.
- **GRAVITY en el teléfono:** un botón de micrófono arriba, sin pantalla especial.
- **Cómo se juntan las navegaciones de los diseños anteriores.** FINANZAS proponía *Inicio · Presupuesto · Registrar · Metas · Más* y HÁBITOS *Hoy · Agenda · Áreas · Progreso · Coach*. En la app única, Agenda, Áreas y Progreso quedan dentro de Hábitos, Metas dentro de Finanzas, y el Coach pasa a GRAVITY.

---

## 8. Mapa de pantallas de las fases 0 a 3 (propuesto)

**Laptop (Dueño)**

| Módulo | Pantallas | Fase |
|---|---|---|
| GRAVITY | Pantalla principal | 0 |
| Ajustes | Personas y roles · Privacidad (modo privado y datos sensibles, D13) · Copias de seguridad · Notificaciones · Asistente de configuración | 0 |
| Finanzas | Tablero · Semana · Movimientos · Cuentas · Ingresos · Gastos y categorías · Importar datos | 1 |
| Finanzas | Deudas · Ahorro · Alertas | 2 |
| Hábitos | Hoy · Agenda · Objetivos · Hábitos a eliminar · Espiritual (lector, planes, devocional, oración) · Progreso · Revisión semanal | 3 |

Cuidados, Casa y Alimentación aparecen cuando llegan sus fases (5, 6 y 7).

**Teléfono**

| Rol | Pantallas |
|---|---|
| Dueño | **Hoy** · **Finanzas:** resumen de la semana, próximos pagos, avance de ahorro, movimientos recientes · **(+):** gasto, ingreso extra, hábito, consumo, SOS · **Hábitos:** hoy, agenda del día, lectura (lector, devocional, oración), panel de hábitos a eliminar · **Más:** cuidados (Fase 5), ajustes, privacidad |
| Pareja | Igual que el Dueño, con el presupuesto solo de lectura (pregunta 6) |
| Cuidador (Fase 5) | **Mi turno:** entrega de turno, siguiente medicamento, comidas, gasto de cuidado · **Medicamentos** · **Comidas** · **Bitácora** |
| Familiar | Hoy · Hábitos · Más |

---

## 9. Flujos clave (propuesto)

| # | Flujo | Pasos | Meta |
|---|---|---|---|
| F1 | **Registrar un gasto** (teléfono) | (+) → Gasto → monto (el teclado ya está abierto) → categoría (la última preseleccionada y 5 sugeridas) → cuenta (la última usada) → Guardar → aviso *"Guardado · Deshacer"* | Menos de 10 s |
| F2 | **Marcar un hábito** | Hoy → *Hecho* (o deslizar) → la racha se actualiza, con deshacer. También desde la notificación | 3 toques o menos |
| F3 | **SOS "Tengo un antojo"** | Hoy, (+) o widget → temporizador con una alternativa → *"¿Lo superaste?"* Sí / No, sin culpa | Al alcance en 1 toque |
| F4 | **Orden a GRAVITY** (laptop) | Ctrl+Espacio → escribir → sugerencias mientras escribes → Enter. Si no entiende, muestra opciones parecidas. Desde la Fase 6 conversa, y toda escritura pasa por la tarjeta de confirmación | — |
| F5 | **Revisión semanal de finanzas** (laptop) | Semana → Revisión semanal → planeado contra real → desvíos → ajustar la siguiente semana → confirmar el abono extra o el ahorro | Unos 3 min (FINANZAS 5.9 bis) |
| F6 | **Invitar a una persona** (laptop) | Ajustes → Personas y roles → Invitar → nombre y rol → invitación por correo → instala la app y entra → ve solo lo de su rol. Dar de baja: un clic y confirmación; pierde el acceso al instante | — |
| F7 | **Cambio urgente de medicamento** (Fase 5) | Teléfono del Dueño: Más → Cuidados → medicamento → suspender o agregar → nota → confirmar → aviso al instante a la cuidadora de turno, que marca *Enterada* | — |

**Sin señal:** lo registrado se guarda en el teléfono con el aviso *"Guardado en el teléfono; se sube al volver la señal"*.

---

## 10. Atajos de teclado en la laptop (propuesto)

| Atajo | Acción |
|---|---|
| Ctrl + Espacio | Abrir GRAVITY desde cualquier parte de Windows |
| Ctrl + K | Barra de órdenes dentro de la app |
| Ctrl + N | Registrar un movimiento |
| Ctrl + Shift + O | Modo privado (ocultar montos y cuidados) |
| Ctrl + 1 a 5 | Ir a cada módulo |
| Esc | Volver a la pantalla principal de GRAVITY |

Todos se pueden cambiar en Ajustes.

---

## 11. Voz y personalidad de GRAVITY (propuesto)

- **Trato:** de tú con el Dueño, la pareja y los familiares. En Cuidados, textos **impersonales** (*"¿Cómo comió?"*, *"Marcar como leída"*), para no tener que elegir entre tú y usted con la cuidadora.
- **Carácter:** tranquila, breve y precisa; sin culpa; el humor ligero viene apagado y se puede activar.
- **Siempre dice lo que hizo** (*"Listo: registré $85 en Alimentación"*) y pide confirmación antes de escribir.
- **Nunca dice montos en voz alta** con el modo privado activo ni por las bocinas (D6).
- **Voz:** por elegir (masculina, femenina o neutra), según las voces disponibles en Windows, en Android y en el proveedor de voz.
- **Activación:** en la laptop, el atajo o la palabra *"Gravity"*. En las bocinas, *"Hey Google"* con las frases fijas (D6).

---

## 12. Notificaciones (propuesto)

| Tipo | En la pantalla bloqueada | Al abrir |
|---|---|---|
| Pago próximo | *"Tienes un pago próximo"* | Detalle con monto |
| Categoría excedida | *"Revisa una categoría"* | Detalle |
| Hábito | *"Inglés · 20:00"* | — |
| Hábito sensible (cigarrillo, azúcar) | *"Recordatorio"* | Detalle |
| Medicamento (cuidadora de turno) | *"Medicamento de las 20:00"* | Detalle |
| Cambio urgente (cuidadora de turno) | *"Hay una indicación nueva en Cuidados"* | Detalle |

- Máximo 3 avisos no críticos al día y horas silenciosas de 22:00 a 07:00 (FINANZAS decisión 68).
- **Medicamentos y cambios urgentes sí suenan en horas silenciosas** *(propuesto)*.

---

## 13. Sistema visual (por definir)

| Elemento | Propuesta | Nota |
|---|---|---|
| Tema | Laptop: oscuro (A en la pantalla principal, B en los módulos). Teléfono: automático, sigue al sistema | Sección 4 |
| Color de GRAVITY | Cian (#35d4f0 en los bocetos) | Pregunta 1 |
| Color por módulo | Finanzas índigo, Cuidados rosa oscuro, Alimentación ámbar; Hábitos conserva sus colores por área | No deben chocar con los de Hábitos |
| Semáforo | Verde, ámbar y rojo en dinero y medicamentos; verde, ámbar y terracota en hábitos | El rojo, solo para alertas reales |
| Tipografía | Bocetos: Chakra Petch e IBM Plex en la pantalla principal (A), Manrope en los módulos (B), Inter en el teléfono. Números de ancho fijo en montos | Pregunta 9 |
| Iconos | Sobrios, de línea | Pregunta 8 |
| Montos | Formato de México: `$1,234.50`; ocultables | — |
| Densidad | Compacta en la laptop, cómoda en el teléfono | — |

---

## 14. Componentes compartidos (propuesto)

- **Tarjeta de resumen de módulo:** se usa en los paneles de la laptop y en "Hoy" del teléfono.
- **Tarjeta de confirmación:** cada escritura que llega por voz o por GRAVITY se muestra antes de guardarse.
- **Registro rápido (+)** con teclado numérico grande, categorías sugeridas y deshacer.
- **Monto** con modo oculto.
- **Semáforo, barra de progreso y chip de racha.**
- **Fila con deslizar:** hecho, posponer, omitir.
- **Hoja inferior** para detalles sin salir de la pantalla.
- **Aviso urgente de cuidados:** destacado, para cambios de medicamento.
- **Estado vacío** con una sola acción sugerida.

---

## 15. Accesibilidad y uso seguro

- Zonas táctiles de 48 dp o más, buen contraste, letra ajustable y lector de pantalla.
- Nada que obligue a mirar la pantalla al manejar o en la bici (modo de solo audio).
- Para el rol Cuidador, letra grande por defecto *(propuesto)*.
- Las animaciones del núcleo se detienen si Windows tiene activada la opción de reducir movimiento.

---

## 16. Privacidad en pantalla

- Montos ocultables y modo privado en la laptop.
- Notificaciones discretas en dinero, hábitos sensibles y cuidados (sección 12).
- PIN o huella en el teléfono; en la laptop, GRAVITY se bloquea tras un rato sin uso *(propuesto)*.

---

## 17. Preguntas para definir juntos

**Estilo**
1. ¿Aceptas la recomendación de la sección 4 (A en la pantalla principal, B en los módulos, teléfono claro o automático), o prefieres otra combinación?
2. **Núcleo central:** ¿anillos que giran (A), círculo que respira (B) u otra forma?
3. **Paneles al abrir la laptop:** ¿hoy, finanzas, hábitos, cuidados, avisos? ¿Agregas clima, correo u otro?
4. ¿GRAVITY te saluda en voz alta al encender la laptop?

**Voz**

5. ¿Voz masculina, femenina o neutra? ¿Te parece bien el carácter de la sección 11?

**Teléfono**

6. **Pareja:** ¿puede registrar sus propios gastos aunque el presupuesto lo vea solo de lectura?
7. ¿Te parecen bien la barra inferior por rol y las pantallas de "Hoy" y "Registrar gasto"?
8. ¿Iconos sobrios como en los bocetos, o prefieres emojis?
9. Tamaño de letra cómodo para ti, para la lectura de la Biblia y para la cuidadora.

**Colores, cuidadora y atajos**

10. ¿Algún color que te guste o quieras evitar?
11. ¿Qué tanto usa apps la cuidadora? ¿Letra grande desde el inicio?
12. En el teléfono de la cuidadora, ¿la app se ve con el nombre "GRAVITY" o con otro más sencillo?
13. ¿Te sirven los atajos de la sección 10?

---

## Control de cambios

| Versión | Fecha | Cambio |
|---|---|---|
| 0.1 | 20/oct/2026 | Borrador inicial: lo ya decidido, principios, personas, pantalla principal de la laptop, navegación del teléfono por rol, sistema visual y preguntas |
| 0.2 | 20/oct/2026 | Bocetos A, B y C y recomendación de estilo; pantalla dentro de un módulo; mapa de pantallas de las fases 0 a 3; flujos clave; atajos; voz y personalidad de GRAVITY; notificaciones |
