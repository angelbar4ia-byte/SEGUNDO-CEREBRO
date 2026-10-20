# Diseño UX/UI de GRAVITY

> **Versión 0.1 (20/oct/2026), borrador para definir juntos.** Documento común de experiencia y diseño visual de toda la app: la **pantalla principal de GRAVITY en la laptop** y la **app del teléfono**. Las pantallas de cada módulo siguen en sus diseños (FINANZAS, sección 8; HÁBITOS, Anexo G) y deben respetar este documento.
>
> **(decidido)** = ya lo confirmaste. **(propuesto)** = sugerencia para revisar. Las preguntas para definir están en la sección 11.

---

## 1. Lo que ya está decidido

| Tema | Decisión | Origen |
|---|---|---|
| Plataformas | Laptop Windows con el sistema completo; teléfono Android con lo mínimo | D4 |
| Laptop | Pantalla principal de GRAVITY **tipo JARVIS** | Roadmap |
| Teléfono | **App normal**, sin pantalla tipo JARVIS | Roadmap |
| Base | Material 3, tema claro y oscuro | HÁBITOS G.1 |
| Colores de Hábitos por área | Espiritual violeta, Salud verde, Inglés naranja, Personal azul verdoso, Laboral gris azulado, Hábitos a eliminar terracota (nunca rojo de alarma) | HÁBITOS G.1 |
| Tono | Cercano y sin culpa: un fallo es un "ajuste", no un error | HÁBITOS G.1 y G.7 |
| Rapidez | Registrar un gasto en menos de 10 s; la acción diaria de Hábitos en 3 toques o menos | FINANZAS 1 y decisión 24; HÁBITOS 1 |
| Privacidad en pantalla | Montos ocultos en la pantalla bloqueada; notificaciones discretas en hábitos sensibles | FINANZAS decisión 68; HÁBITOS G.6 |
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

## 4. Laptop: pantalla principal de GRAVITY (propuesto)

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
│ >  Escribe o habla a GRAVITY…                         🎤   Ctrl+K │
├──────────────────────────────────────────────────────────────────┤
│  Finanzas · Hábitos · Cuidados · Alimentación · Casa · Ajustes   │
└──────────────────────────────────────────────────────────────────┘
```

| Zona | Qué hace |
|---|---|
| **Núcleo central** | Animación que muestra el estado de GRAVITY: en espera, escuchando, pensando o hablando |
| **Paneles** | Resumen de cada módulo activo; se pueden mover u ocultar |
| **Barra de comandos** | Texto y voz. En la Fase 0 solo navega (*"abre presupuesto"*); en la Fase 6 conversa con IA |
| **Barra de módulos** | Abre cada módulo completo |
| **Atajo global** | Una combinación de teclas abre GRAVITY desde cualquier parte de Windows |
| **Modo privado** | Un atajo oculta montos y datos de cuidados, por si alguien está viendo |

---

## 5. Teléfono: app normal (propuesto)

**Barra inferior según el rol**

| Rol | Pestañas |
|---|---|
| Dueño | Hoy · Finanzas · **(+)** · Hábitos · Más |
| Pareja | Hoy · Finanzas (resumen) · **(+)** · Hábitos · Más |
| Cuidador | Mi turno · Medicamentos · Comidas · Bitácora |
| Familiar | Hoy · Hábitos · Más |

- **Hoy** junta lo del día de todos los módulos: agenda, hábitos, menú y pagos que vencen.
- **(+)** registra un gasto, un ingreso, un hábito, un consumo (cigarrillo o azúcar) o una comida.
- **GRAVITY en el teléfono:** un botón de micrófono dentro de la app, sin pantalla especial.
- **Cómo se juntan las navegaciones de los diseños anteriores.** FINANZAS proponía *Inicio · Presupuesto · Registrar · Metas · Más* y HÁBITOS *Hoy · Agenda · Áreas · Progreso · Coach*. En la app única, Agenda, Áreas y Progreso quedan dentro de Hábitos, Metas dentro de Finanzas, y el Coach pasa a GRAVITY.

---

## 6. Sistema visual (por definir)

| Elemento | Propuesta | Nota |
|---|---|---|
| Tema | Laptop: oscuro por defecto (estilo JARVIS). Teléfono: automático, sigue al sistema | Pregunta 7 |
| Color de GRAVITY | Cian o azul eléctrico | Pregunta 1 |
| Color por módulo | Finanzas índigo, Cuidados rosa suave, Alimentación ámbar; Hábitos conserva sus colores por área | No deben chocar con los de Hábitos |
| Semáforo | Verde, ámbar y rojo en dinero y medicamentos; verde, ámbar y terracota en hábitos | El rojo, solo para alertas reales |
| Tipografía | Una familia muy legible para todo, con números de ancho fijo en montos; una tipografía más técnica para los títulos de GRAVITY en la laptop | Pregunta 9 |
| Iconos | Sobrios (Material Symbols) | Pregunta 8 |
| Montos | Formato de México: `$1,234.50`; ocultables | — |
| Densidad | Compacta en la laptop, cómoda en el teléfono | — |

---

## 7. Componentes compartidos (propuesto)

- **Tarjeta de resumen de módulo:** se usa en los paneles de la laptop y en "Hoy" del teléfono.
- **Tarjeta de confirmación:** cada escritura que llega por voz o por GRAVITY se muestra antes de guardarse.
- **Registro rápido (+)** con botones grandes y deshacer.
- **Monto** con modo oculto.
- **Semáforo, barra de progreso y chip de racha.**
- **Fila con deslizar:** hecho, posponer, omitir.
- **Hoja inferior** para detalles sin salir de la pantalla.
- **Aviso urgente de cuidados:** destacado, para cambios de medicamento.
- **Estado vacío** con una sola acción sugerida.

---

## 8. Tono y lenguaje (propuesto)

- Español de México. Tuteo en la app (pregunta 5 para GRAVITY y la cuidadora).
- Mensajes sin culpa (ejemplos en HÁBITOS G.7).
- En Cuidados, lenguaje claro y sin términos médicos innecesarios.

---

## 9. Accesibilidad y uso seguro

- Zonas táctiles de 48 dp o más, buen contraste, letra ajustable y lector de pantalla.
- Nada que obligue a mirar la pantalla al manejar o en la bici (modo de solo audio).
- Para el rol Cuidador, letra grande por defecto *(propuesto)*.

---

## 10. Privacidad en pantalla

- Montos ocultables y modo privado en la laptop.
- Notificaciones discretas en dinero, hábitos sensibles y cuidados.
- PIN o huella en el teléfono; en la laptop, GRAVITY se bloquea tras un rato sin uso *(propuesto)*.

---

## 11. Preguntas para definir juntos

**Laptop y GRAVITY**
1. **Estética de la pantalla principal:** (A) futurista tipo HUD, con fondo oscuro, líneas finas y cian; (B) minimalista y elegante, oscuro con acentos sobrios; (C) otra. ¿Tienes referencias que te gusten (películas, apps, imágenes)?
2. **Núcleo central:** ¿orbe, anillo, onda de voz, una forma abstracta o nada?
3. **Paneles al abrir:** ¿cuáles quieres? (hoy, finanzas, hábitos, cuidados, clima, correo, otros)
4. ¿GRAVITY te saluda en voz alta al encender la laptop?

**Personalidad**

5. **Voz y trato de GRAVITY:** ¿voz masculina, femenina o neutra? ¿Te habla de tú o de usted? ¿Con algo de humor o serio? ¿Y a la cuidadora, de tú o de usted?

**Teléfono**

6. ¿Te parece bien la barra inferior propuesta para cada rol?
7. **Tema:** claro, oscuro o automático.
8. **Iconos:** sobrios o con emojis.
9. **Tamaño de letra** cómodo para ti, para la lectura de la Biblia y para la cuidadora.

**Colores**

10. ¿Algún color que te guste o quieras evitar? ¿Te parecen bien los colores por módulo?

**Cuidadora**

11. ¿Qué tanto usa apps la cuidadora? ¿Letra grande desde el inicio?
12. En el teléfono de la cuidadora, ¿la app se ve con el nombre "GRAVITY" o con otro más sencillo?

---

## Control de cambios

| Versión | Fecha | Cambio |
|---|---|---|
| 0.1 | 20/oct/2026 | Borrador inicial: lo ya decidido, principios, personas, pantalla principal de la laptop, navegación del teléfono por rol, sistema visual y preguntas |
