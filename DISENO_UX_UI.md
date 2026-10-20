# Diseño UX/UI de GRAVITY

> **Versión 0.3 (20/oct/2026), borrador para definir juntos.** Documento común de experiencia y diseño visual de toda la app: la **pantalla principal de GRAVITY en la laptop**, las **pantallas de los módulos**, la **app del teléfono** y la **tablet de la casa**. Las pantallas de cada módulo siguen en sus diseños (FINANZAS, sección 8; HÁBITOS, Anexo G) y deben respetar este documento.
>
> **(decidido)** = ya lo confirmaste. **(propuesto)** = sugerencia para revisar. Las preguntas para definir están en la sección 20.
>
> **Bocetos para comparar** (lienzo privado): [GRAVITY — estilos de pantalla](https://claude.ai/artifact/M4y2F9SJJvqXVKXjDJ7rwT). Datos de ejemplo.
> - **Laptop, pantalla principal:** A futurista, B minimalista, C claro, D arquitectónico (cianotipo o papel, se cambia en *Tweaks*) y E glass (noche o día).
> - **Teléfono:** Hoy del Dueño, Mi turno de la cuidadora, Registrar gasto y Bici en vivo (personalidad sport).
> - **Módulos y gadgets:** Finanzas › Semana en la laptop y el catálogo de gadgets por módulo.
> - **Tablet:** maestra de la casa con vista en planta y cambio de usuario.

---

## 1. Lo que ya está decidido

| Tema | Decisión | Origen |
|---|---|---|
| Plataformas | Laptop Windows con el sistema completo; teléfono Android con lo mínimo; **tablet de la casa** | D4, D14 |
| Laptop | Pantalla principal de GRAVITY **tipo JARVIS** | D12 |
| Teléfono | **App normal**, sin pantalla tipo JARVIS; GRAVITY como botón de micrófono | D12 |
| Estilo | **Configurable**; el futurista te gusta | 20/oct/2026 |
| Claro / oscuro | **Automático según la hora**, además de las opciones fijas | 20/oct/2026 |
| Personalidad | **Cambia por módulo y submódulo** (p. ej. Finanzas distinto de bici y entrenamiento), sin volverse "tutifruti": personalidad con uso y función | 20/oct/2026 |
| Gadgets | Medidores, contadores, anillos y relojes en lugar de pantallas planas | 20/oct/2026 |
| Voces | **Se pueden cambiar** | 20/oct/2026 |
| Base | Material 3 | HÁBITOS G.1 |
| Colores de Hábitos por área | Espiritual violeta, Salud verde, Inglés naranja, Personal azul verdoso, Laboral gris azulado, Hábitos a eliminar terracota (nunca rojo de alarma) | HÁBITOS G.1 |
| Tono | Cercano y sin culpa: un fallo es un "ajuste", no un error | HÁBITOS G.1 y G.7 |
| Rapidez | Registrar un gasto en menos de 10 s; la acción diaria de Hábitos en 3 toques o menos | FINANZAS 1 y decisión 24; HÁBITOS 1 |
| Privacidad en pantalla | Montos ocultos en la pantalla bloqueada; notificaciones discretas en hábitos sensibles | FINANZAS decisión 68; HÁBITOS G.6 |
| Datos sensibles | Diario de oración y hábitos sensibles cifrados en la nube o solo en el teléfono | D13 |
| Zonas táctiles | Mínimo 48 dp; acciones principales al alcance del pulgar | HÁBITOS G.1 |

---

## 2. Principios (propuesto)

1. **Una app, varias formas de uso.** En la laptop se piensa y se planea; en el teléfono se actúa; en la tablet se comparte la casa.
2. **Personalidad con propósito.** Cada cambio visual responde al uso: en la bici, números enormes porque se ven de reojo y en movimiento; en Finanzas, calma y precisión.
3. **Cada persona ve solo lo suyo.** La interfaz se arma según el rol (D5): nada de pantallas vacías ni botones bloqueados por permisos.
4. **Primero lo de hoy.** Al abrir, lo que toca ahora; el detalle, a un toque o un clic.
5. **Gadgets antes que tablas en el teléfono y la tablet; tablas completas en la laptop.**
6. **Siempre se confirma antes de escribir**, sobre todo lo que llega por voz o por GRAVITY.
7. **Privacidad visible.** El dinero y los datos de cuidados se ocultan con un toque o un atajo.
8. **Todo tiene estado** vacío, cargando, sin conexión y error, con un mensaje claro y una acción.
9. **Accesible:** letra grande opcional, buen contraste, lector de pantalla, nada que dependa solo del color.

---

## 3. Personas y contextos de uso (propuesto)

| Persona | Dónde | Contexto | Qué pide al diseño |
|---|---|---|---|
| **Tú, en la laptop** | Escritorio | Planear, revisar y configurar; sesiones largas | Pantalla con mucha información, atajos de teclado, voz, paneles |
| **Tú, en el teléfono** | Súper, coche, bici, calle | Prisa, una mano, a veces sin señal | Botón "+" siempre visible, registro en segundos, modo de solo audio al manejar |
| **Cualquiera, en la tablet** | Cocina o sala | De pasada, con las manos ocupadas, varias personas | Lo de la casa a la vista, voz, cambio de usuario rápido |
| **Pareja** | Teléfono | Lo suyo y el resumen del presupuesto | Igual que el tuyo, pero reducido |
| **Cuidadora** | Teléfono o tablet, en su turno | Atiende a una persona con Alzheimer, con interrupciones constantes; quizá con poca experiencia en apps | Botones grandes, pocas opciones, lenguaje simple, confirmar en un toque, todo en "Mi turno" |
| **Hermana** | Teléfono o tablet, los martes | Llega después del turno de la cuidadora | Entrar directo a la entrega de turno |
| **Familiares** | Teléfono | Sus hábitos | Lo más simple |

---

## 4. Sistema de estilos (configurable)

El aspecto se arma en **cuatro capas**. Así cada módulo tiene personalidad sin que la app se vuelva un "tutifruti".

| Capa | Qué define | Quién la elige |
|---|---|---|
| **1. Base común** | Rejilla y márgenes, posición de la navegación y los botones, tipografía de lectura, iconos, comportamiento (confirmar, deshacer), accesibilidad | Fija: **no cambia nunca** |
| **2. Estilo** | Superficies, bordes, decoración, tipografía de títulos y números, animación del núcleo | Tú, en Ajustes (global) |
| **3. Personalidad del módulo** | Color de acento, gadgets, densidad, ritmo de animación | Automática por módulo y submódulo; se puede fijar a mano (sección 5) |
| **4. Claro / oscuro** | Fondo y contraste | Automático por hora, del sistema, siempre claro o siempre oscuro |

**Estilos disponibles** (bocetos en el lienzo)

| Estilo | Cómo se ve | Dónde luce más |
|---|---|---|
| **A · Futurista (HUD)** | Fondo casi negro, líneas finas cian, anillos que giran, letra técnica | Pantalla principal de GRAVITY |
| **B · Minimalista** | Oscuro o claro, tarjetas redondeadas, círculo que "respira" | Sesiones largas en los módulos |
| **C · Claro sereno** | Fondo claro, GRAVITY en una franja superior | Uso de día |
| **D · Arquitectónico** | Retícula de fondo, ejes con globos (A, B, C), cotas como barras de avance, cajetín con proyecto, plano, escala y usuario, flecha de norte. Dos variantes: **cianotipo** (azul con líneas claras) y **papel** (papel con trazo de grafito y acento rojo de corrección) | Laptop y tablet (vista en planta) |
| **E · Glass** | Paneles translúcidos y esmerilados sobre un fondo de color difuminado; versión de noche y de día | Laptop y tablet |
| **F · Swagger** | Con actitud: letra grande y condensada, negro y blanco con un color neón, etiquetas tipo sticker | Personalidad sport (bici, entrenamiento) y para quien la quiera global |

**Reglas (propuesto)**
- **Claro / oscuro automático por hora:** claro de 07:00 a 19:00 por defecto (editable) o según el amanecer y el atardecer. El cambio es suave y nunca a mitad de una acción.
- **Excepciones por función:**
  - **Cuidados** usa siempre una variante clara y de alto contraste, sin decoración, sea cual sea el estilo.
  - **La bici** usa siempre alto contraste, por el sol.
- **Glass en el teléfono:** sin el efecto de esmerilado, que gasta batería y puede hacer lenta la app; se usa una versión translúcida sólida. El esmerilado completo, solo en laptop y tablet.
- **Cómo se construye sin rehacer:** cada estilo es un juego de valores de diseño (colores, tipografías, formas, sombras, animación, densidad) en el tema central. La personalidad del módulo solo sustituye algunos de esos valores, y las pantallas nunca usan colores fijos. Agregar un estilo nuevo no obliga a tocar pantallas.
- **Por fases:** la Fase 0 arranca con el sistema de estilos y dos estilos (Futurista y uno claro). Los demás estilos, las personalidades y los gadgets llegan en el Pulido 1 (ROADMAP).

---

## 5. Personalidad por módulo y submódulo (propuesto)

| Módulo / submódulo | Personalidad | Qué cambia | Por qué |
|---|---|---|---|
| **GRAVITY (pantalla principal)** | Asistente | El estilo elegido completo, núcleo animado | Es la cara del sistema |
| **Finanzas** | Precisa y serena | Acento índigo, números de ancho fijo, tablas, medidores, poca animación | Se lee con calma y sin errores |
| **Hábitos · Espiritual** | Contemplativa | Acento violeta, letra de lectura más grande, sin animación | Lectura larga, a menudo de noche |
| **Hábitos · Entrenamiento y bici** | Sport (estilo F) | Neón, números enormes y condensados, alto contraste, cronómetros | Se ve de reojo, en movimiento y al sol |
| **Hábitos · Inglés** | Lúdica | Acento naranja, progreso por niveles | Motivación diaria |
| **Hábitos a eliminar** | Empática | Terracota, contador grande, botón SOS siempre visible | Momentos de antojo; sin culpa |
| **Cuidados** | Clara y cálida | Rosa oscuro, letra y botones grandes, alto contraste | Se usa con interrupciones; no puede haber confusión |
| **Alimentación / Casa** | Cálida y práctica | Ámbar, recetas paso a paso con letra grande y voz | Se usa cocinando, con las manos ocupadas |

En Ajustes, cada módulo tiene tres opciones: **Automática** (la de la tabla), **Igual al estilo global** o **Elegir otro estilo**.

---

## 6. Gadgets (propuesto)

Cada gadget responde a una pregunta concreta y toma el estilo activo y la personalidad de su módulo. Se pueden poner en la pantalla principal de GRAVITY, en "Hoy" del teléfono, en la tablet y como widgets de Android.

| Gadget | Módulo | Responde a |
|---|---|---|
| Medidor de presupuesto | Finanzas | ¿Cuánto llevo gastado y cuánto me queda? |
| Cascada | Finanzas | ¿A dónde va el ingreso de la semana? |
| Anillos del día | Hábitos | ¿Cómo voy hoy en cada área? |
| Contador de días libres + SOS | Hábitos a eliminar | ¿Cuántos días llevo? Tengo un antojo |
| Velocímetro y cronómetro | Bici | ¿A qué ritmo voy? |
| Serie y descanso | Entrenamiento | ¿Qué sigue y cuánto descanso? |
| Reloj del turno | Cuidados | ¿Quién está de turno y qué sigue? |
| Menú y lista de compras | Casa / Alimentación | ¿Qué comemos y qué falta? |
| Núcleo de GRAVITY | GRAVITY | ¿Me está escuchando? |

---

## 7. Laptop: pantalla principal de GRAVITY (propuesto)

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
| **Paneles y gadgets** | Resumen de cada módulo activo; se pueden mover, cambiar u ocultar |
| **Barra de órdenes** | Texto y voz. En la Fase 0 solo navega (*"abre presupuesto"*); en la Fase 6 conversa con IA |
| **Barra de módulos** | Abre cada módulo completo |
| **Atajo global** | Una combinación de teclas abre GRAVITY desde cualquier parte de Windows (sección 13) |
| **Modo privado** | Un atajo oculta montos y datos de cuidados, por si alguien está viendo |

---

## 8. Laptop: dentro de un módulo (propuesto)

- **Barra lateral** con las secciones del módulo y, arriba, el botón **GRAVITY** para volver a la pantalla principal.
- **Área principal** con tablas completas, filtros y la acción principal arriba a la derecha (p. ej. *Registrar movimiento*).
- **Panel de detalle** a la derecha o como hoja, sin perder la tabla de vista.
- Al entrar, la pantalla toma la **personalidad del módulo** (sección 5).
- GRAVITY sigue disponible con el atajo global y con la barra de órdenes.
- Si la ventana se hace angosta (p. ej. media pantalla), la barra lateral se vuelve menú y los paneles se apilan.

---

## 9. Teléfono: app normal (propuesto)

**Barra inferior según el rol**

| Rol | Pestañas |
|---|---|
| Dueño | Hoy · Finanzas · **(+)** · Hábitos · Más |
| Pareja | Hoy · Finanzas (resumen) · **(+)** · Hábitos · Más |
| Cuidador | Mi turno · Medicamentos · Comidas · Bitácora |
| Familiar | Hoy · Hábitos · Más |

- **Hoy** junta lo del día de todos los módulos con sus gadgets.
- **(+)** registra un gasto, un ingreso extra, un hábito o un consumo (cigarrillo o azúcar), y abre el SOS.
- **GRAVITY en el teléfono:** un botón de micrófono arriba, sin pantalla especial.
- **Pantallas en movimiento** (bici, entrenamiento, modo traslado): ocupan toda la pantalla con personalidad sport, botones enormes y nada que obligue a leer en movimiento.
- **Cómo se juntan las navegaciones de los diseños anteriores.** FINANZAS proponía *Inicio · Presupuesto · Registrar · Metas · Más* y HÁBITOS *Hoy · Agenda · Áreas · Progreso · Coach*. En la app única, Agenda, Áreas y Progreso quedan dentro de Hábitos, Metas dentro de Finanzas, y el Coach pasa a GRAVITY.

---

## 10. Tablet: maestra de la casa (D14)

- **Dispositivo:** tablet Android fija en la cocina o la sala, con cargador. Es la misma app, con diseño para tablet.
- **Modo Casa (al encender y en reposo):** rol Casa (D5). Muestra lo de hoy en la casa, el menú, la lista de compras, el turno de cuidados con recordatorios genéricos y GRAVITY. Sin dinero ni datos clínicos.
- **Vista en planta** *(propuesto)*: la casa dibujada como plano, y cada cuarto muestra lo suyo (cocina: menú y lista; recámara de papá: turno; estudio: finanzas con candado; gimnasio y patio: entrenamiento y bici). Más adelante se puede dibujar o importar la planta real. Alternativa: vista de lista.
- **Cambio de usuario:** se toca un nombre y se entra con PIN o huella a las pantallas de esa persona según su rol. Después de 2 minutos sin uso (editable) regresa sola al modo Casa.
- **Cuidadora y hermana** pueden trabajar su turno desde la tablet ("Mi turno" en grande).
- **GRAVITY en casa:** la tablet puede ser el **micrófono propio de GRAVITY**, con conversación libre, algo que las bocinas Xiaomi no permiten (D6) *(propuesto)*.

---

## 11. Mapa de pantallas de las fases 0 a 3 (propuesto)

**Laptop (Dueño)**

| Módulo | Pantallas | Fase |
|---|---|---|
| GRAVITY | Pantalla principal | 0 |
| Ajustes | Personas y roles · Apariencia (estilo, claro/oscuro, personalidad por módulo) · Voz · Privacidad (modo privado y datos sensibles, D13) · Copias de seguridad · Notificaciones · Asistente de configuración | 0 |
| Finanzas | Tablero · Semana · Movimientos · Cuentas · Ingresos · Gastos y categorías · Importar datos | 1 |
| Finanzas | Deudas · Ahorro · Alertas | 2 |
| Hábitos | Hoy · Agenda · Objetivos · Hábitos a eliminar · Espiritual (lector, planes, devocional, oración) · Progreso · Revisión semanal | 3 |

Cuidados, Casa y Alimentación aparecen cuando llegan sus fases (5, 6 y 7).

**Teléfono**

| Rol | Pantallas |
|---|---|
| Dueño | **Hoy** · **Finanzas:** resumen de la semana, próximos pagos, avance de ahorro, movimientos recientes · **(+):** gasto, ingreso extra, hábito, consumo, SOS · **Hábitos:** hoy, agenda del día, lectura (lector, devocional, oración), panel de hábitos a eliminar · **Más:** cuidados (Fase 5), ajustes, privacidad |
| Pareja | Como el Dueño, con el presupuesto solo de lectura |
| Cuidador (Fase 5) | **Mi turno:** entrega de turno, siguiente medicamento, comidas, gasto de cuidado · **Medicamentos** · **Comidas** · **Bitácora** |
| Familiar | Hoy · Hábitos · Más |

**Tablet:** modo Casa, cambio de usuario y, por usuario, las pantallas del teléfono con diseño de tablet.

---

## 12. Flujos clave (propuesto)

| # | Flujo | Pasos | Meta |
|---|---|---|---|
| F1 | **Registrar un gasto** (teléfono) | (+) → Gasto → monto (el teclado ya está abierto) → categoría (la última preseleccionada y 5 sugeridas) → cuenta (la última usada) → Guardar → aviso *"Guardado · Deshacer"* | Menos de 10 s |
| F2 | **Marcar un hábito** | Hoy → *Hecho* (o deslizar) → la racha se actualiza, con deshacer. También desde la notificación | 3 toques o menos |
| F3 | **SOS "Tengo un antojo"** | Hoy, (+) o widget → temporizador con una alternativa → *"¿Lo superaste?"* Sí / No, sin culpa | Al alcance en 1 toque |
| F4 | **Orden a GRAVITY** (laptop) | Ctrl+Espacio → escribir → sugerencias mientras escribes → Enter. Si no entiende, muestra opciones parecidas. Desde la Fase 6 conversa, y toda escritura pasa por la tarjeta de confirmación | — |
| F5 | **Revisión semanal de finanzas** (laptop) | Semana → Revisión semanal → planeado contra real → desvíos → ajustar la siguiente semana → confirmar el abono extra o el ahorro | Unos 3 min (FINANZAS 5.9 bis) |
| F6 | **Invitar a una persona** (laptop) | Ajustes → Personas y roles → Invitar → nombre y rol → invitación por correo → instala la app y entra → ve solo lo de su rol. Dar de baja: un clic y confirmación; pierde el acceso al instante | — |
| F7 | **Cambio urgente de medicamento** (Fase 5) | Teléfono del Dueño: Más → Cuidados → medicamento → suspender o agregar → nota → confirmar → aviso al instante a la cuidadora de turno, que marca *Enterada* | — |
| F8 | **Cambiar de usuario en la tablet** | Tocar el nombre → PIN o huella → pantallas de esa persona → 2 min sin uso → modo Casa | Menos de 5 s |
| F9 | **Cambiar el estilo** | Ajustes → Apariencia → estilo (vista previa en vivo) → claro/oscuro (automático por hora) → personalidad por módulo | — |

**Sin señal:** lo registrado se guarda en el teléfono con el aviso *"Guardado en el teléfono; se sube al volver la señal"*.

---

## 13. Atajos de teclado en la laptop (propuesto)

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

## 14. Voz y personalidad de GRAVITY

- **Voces configurables (decidido):** en Ajustes → Voz se elige la voz (de las disponibles en Windows, en Android o en el proveedor de voz), la velocidad y el tono. **Cada persona elige la suya**; en la tablet, la voz cambia con el usuario activo, y el modo Casa tiene su propia voz.
- **Trato (propuesto):** de tú con el Dueño, la pareja y los familiares. En Cuidados, textos **impersonales** (*"¿Cómo comió?"*, *"Marcar como leída"*), para no tener que elegir entre tú y usted con la cuidadora.
- **Carácter (propuesto):** tranquila, breve y precisa; sin culpa; el humor ligero viene apagado y se puede activar.
- **Siempre dice lo que hizo** (*"Listo: registré $85 en Alimentación"*) y pide confirmación antes de escribir.
- **Nunca dice montos en voz alta** con el modo privado activo, en el modo Casa ni por las bocinas (D6).
- **Activación:** en la laptop, el atajo o la palabra *"Gravity"*; en la tablet, la palabra *"Gravity"* (por definir); en las bocinas, *"Hey Google"* con las frases fijas (D6).

---

## 15. Notificaciones (propuesto)

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

## 16. Sistema visual (por definir)

| Elemento | Propuesta | Nota |
|---|---|---|
| Color de GRAVITY | Cian (#35d4f0 en los bocetos) | Pregunta 2 |
| Color por módulo | Finanzas índigo, Cuidados rosa oscuro, Alimentación ámbar, sport neón; Hábitos conserva sus colores por área | Sección 5 |
| Semáforo | Verde, ámbar y rojo en dinero y medicamentos; verde, ámbar y terracota en hábitos | El rojo, solo para alertas reales |
| Tipografía | Por estilo: Chakra Petch e IBM Plex (A), Manrope (B), DM Sans (C), Space Grotesk e IBM Plex Mono (D), Plus Jakarta Sans (E), Anton (F, números y títulos). Lectura y teléfono: Inter. Números de ancho fijo en montos | — |
| Iconos | Sobrios, de línea | Pregunta 7 |
| Montos | Formato de México: `$1,234.50`; ocultables | — |
| Densidad | Compacta en la laptop, cómoda en el teléfono, grande en la tablet | — |

---

## 17. Componentes compartidos (propuesto)

- **Tarjeta de resumen de módulo** y **gadgets** (sección 6).
- **Tarjeta de confirmación:** cada escritura que llega por voz o por GRAVITY se muestra antes de guardarse.
- **Registro rápido (+)** con teclado numérico grande, categorías sugeridas y deshacer.
- **Monto** con modo oculto.
- **Semáforo, barra de progreso y chip de racha.**
- **Fila con deslizar:** hecho, posponer, omitir.
- **Hoja inferior** para detalles sin salir de la pantalla.
- **Aviso urgente de cuidados:** destacado, para cambios de medicamento.
- **Selector de usuario** (tablet).
- **Estado vacío** con una sola acción sugerida.

---

## 18. Accesibilidad y uso seguro

- Zonas táctiles de 48 dp o más, buen contraste, letra ajustable y lector de pantalla.
- Nada que obligue a mirar la pantalla al manejar o en la bici (modo de solo audio).
- Para el rol Cuidador, letra grande por defecto *(propuesto)*.
- Las animaciones se detienen si el sistema tiene activada la opción de reducir movimiento.
- Ningún estilo puede bajar el contraste mínimo: si un estilo no lo cumple en un módulo, ese módulo usa su variante de alto contraste.

---

## 19. Privacidad en pantalla

- Montos ocultables y modo privado en la laptop.
- Modo Casa en la tablet sin dinero ni datos clínicos; lo personal solo tras PIN o huella.
- Notificaciones discretas en dinero, hábitos sensibles y cuidados (sección 15).
- PIN o huella en el teléfono; en la laptop, GRAVITY se bloquea tras un rato sin uso *(propuesto)*.

---

## 20. Preguntas para definir juntos

**Estilo**
1. **Swagger:** lo interpreté como un estilo "con actitud" (letra grande y condensada, neón, etiquetas tipo sticker). ¿Es lo que buscabas, o te referías a la herramienta *Swagger UI* (documentación de APIs)?
2. ¿Qué estilo quieres **por defecto** en la laptop: A futurista, D arquitectónico (cianotipo o papel) u otro?
3. ¿Te gusta la **vista en planta** para la tablet, o prefieres una vista de lista?
4. **Núcleo central:** ¿anillos que giran (A), plano con ejes (D), esfera de vidrio (E) u otra forma?
5. **Paneles al abrir la laptop:** ¿hoy, finanzas, hábitos, cuidados, avisos? ¿Agregas clima, correo u otro?
6. ¿GRAVITY te saluda en voz alta al encender la laptop?

**Teléfono, tablet y colores**

7. ¿Iconos sobrios como en los bocetos, o prefieres emojis?
8. Tamaño de letra cómodo para ti, para la lectura de la Biblia y para la cuidadora.
9. ¿Algún color que te guste o quieras evitar?
10. ¿Dónde va la tablet: cocina o sala? ¿Ya tienes una o hay que elegirla?

**Cuidadora y atajos**

11. ¿Qué tanto usa apps la cuidadora? ¿Letra grande desde el inicio?
12. En el teléfono de la cuidadora, ¿la app se ve con el nombre "GRAVITY" o con otro más sencillo?
13. ¿Te sirven los atajos de la sección 13?

*Los roles y permisos financieros entre miembros (albacea, confirmaciones, qué registra la pareja) no son de UX/UI: se definen en la especificación de Finanzas.*

---

## Control de cambios

| Versión | Fecha | Cambio |
|---|---|---|
| 0.1 | 20/oct/2026 | Borrador inicial: lo ya decidido, principios, personas, pantalla principal de la laptop, navegación del teléfono por rol, sistema visual y preguntas |
| 0.2 | 20/oct/2026 | Bocetos A, B y C y recomendación de estilo; pantalla dentro de un módulo; mapa de pantallas de las fases 0 a 3; flujos clave; atajos; voz y personalidad de GRAVITY; notificaciones |
| 0.3 | 20/oct/2026 | Estilo configurable en cuatro capas; estilos D arquitectónico, E glass y F swagger; claro/oscuro automático por hora; personalidad por módulo y submódulo; gadgets; tablet maestra de la casa con cambio de usuario; voces configurables; la pregunta sobre la pareja pasa a la especificación de Finanzas |
