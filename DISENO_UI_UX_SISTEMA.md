# Sistema de diseño UI/UX de SEGUNDO CEREBRO (propuesta v0.1)

> **Estado: propuesta.** Todo lo de este documento necesita la aprobación del dueño del proyecto. **No modifica el contrato** (`CONTRATO_CONEXION_APPS.md` v2.0): solo define cómo se **ve y se comporta** el sistema. Las pantallas visuales están en el artefacto «Sistema de pantallas SEGUNDO CEREBRO».
>
> Fuentes leídas: contrato v2.0; `HABITOS/diseno-app-habitos.md` (Anexo G); `HABITOS/docs/PANTALLAS_PENDIENTES.md`; `FINNZAS/docs/PANTALLAS_Y_NAVEGACION.md`; `GRAVITY/docs/UX_PROVISIONAL.md`. Las cifras y nombres de los ejemplos son **ilustrativos**.

---

## 1. Un solo sistema

SEGUNDO CEREBRO se vive como **un solo sistema**: quien usa Presupuesto, Hábitos o GRAVITY debe sentir la misma casa, con el mismo lenguaje visual, los mismos gestos y las mismas palabras.

| Se unifica (este documento) | No cambia (lo fija el contrato) |
|---|---|
| Color, tipografía, espaciado, iconos | Un solo escritor por tipo de dato |
| Barra de navegación, encabezados, hojas inferiores | Cada app se instala y funciona sin las otras |
| Componentes (tarjeta, chip de estado, banner, botón…) | Datos por archivo JSON, enlaces y Health Connect |
| Patrón de importar, exportar y abrir otra app | Nada de dinero ni datos clínicos en archivos ni en GRAVITY |
| Tono y vocabulario | GRAVITY no es dueña de datos ni intermediaria |

«Un solo sistema» es de **experiencia**, no de datos ni de instalación. Si una app falta, las demás siguen completas; sus accesos de conexión se ocultan o dicen «Instala la app de …».

**Apps del sistema:** Presupuesto y Alimentación, Hábitos y Objetivos, GRAVITY (Android y escritorio). La app de cuidados queda fuera: es externa y su esquema sigue en borrador.

---

## 2. Principios

1. **Calma antes que alarma.** Nada se pinta de rojo de alerta; un exceso o un fallo se llama «ajuste».
2. **Qué sigue, en 3 segundos.** Cada app abre en una pantalla de «hoy» con una acción principal.
3. **Una decisión por pantalla** en los asistentes; progreso visible; se pueden pausar.
4. **Nunca se guarda en silencio.** Importar, voz y abrir otra app pasan por una tarjeta de confirmación.
5. **Todo estado se dice con icono y texto**, nunca solo con color.
6. **La privacidad se ve:** lo que no se comparte (dinero, salud) se dice en pantalla antes de compartir.
7. **Funciona sin las otras.** Todo estado vacío, sin app, sin permiso o sin conexión tiene una pantalla digna, no un error.

---

## 3. Fundamentos visuales

Material 3 como base, con estos valores propios. Tema **claro y oscuro** (automático por defecto).

### 3.1 Color

| Token | Claro | Oscuro | Uso |
|---|---|---|---|
| `papel` | `#F6F5F1` | `#12171E` | Fondo de pantalla |
| `superficie` | `#FFFFFF` | `#1B232D` | Tarjetas, hojas |
| `superficie-2` | `#EFEDE6` | `#222C38` | Campos, fondos de fila |
| `linea` | `#D9D6CC` | `#33404F` | Bordes y divisores |
| `tinta` | `#1B2430` | `#EEF0F3` | Texto principal |
| `tinta-2` | `#4A5565` | `#AEB8C5` | Texto secundario |
| `primario` | `#25507A` | `#8DB6E0` | Acción principal, pestaña activa |
| `sobre-primario` | `#FFFFFF` | `#0F1F30` | Texto sobre primario |
| `primario-suave` | `#E1EAF3` | `#1F3247` | Fondos de selección |

El **primario es uno solo para todo el sistema** (azul marino). Las apps se distinguen por su nombre e icono en el encabezado, no por color.

### 3.2 Estado (semántico, igual en todas las apps)

| Estado | Texto en pantalla | Claro (texto / fondo) | Oscuro (texto / fondo) | Cuándo |
|---|---|---|---|---|
| **En orden** | «En orden», «Cumplido» | `#23704A` / `#DFF0E6` | `#6CCB93` / `#173325` | Dentro del plan o la meta |
| **Atención** | «Cuidado», «En parte» | `#7A5200` / `#FBEBC4` | `#E8BE62` / `#3A2E10` | Cerca del límite; requiere mirar |
| **Ajuste** | «Pasado», «Ajustemos» | `#A03E22` / `#F7E1D9` | `#F0A48C` / `#3F2018` | Se pasó o falló; se propone un ajuste |

Siempre llevan **icono + texto** (✔ ◐ ⇄ ✕ o su equivalente de línea). El estado «Ajuste» usa terracota, no rojo de alarma (ver sección 12).

### 3.3 Acentos de área (solo Hábitos)

Marcador pequeño (barra o punto) junto al título; **nunca** transmite estado ni fondo de pantalla completa.

| Área | Claro | Oscuro |
|---|---|---|
| Espiritual | `#6B4FA0` | `#B7A3E3` |
| Salud | `#2E7D4F` | `#7FD3A1` |
| Inglés | `#B5581A` | `#F0A66E` |
| Personal | `#1F7A7A` | `#7BCFCF` |
| Laboral | `#50607A` | `#A9B7CE` |
| Hábitos a eliminar | `#A03E22` | `#F0A48C` |

### 3.4 Tipografía, espacio y forma

| Aspecto | Valor |
|---|---|
| Familia | **IBM Plex Sans** (una sola; con cifras tabulares para montos y cantidades) |
| Escala (sp) | Título de pantalla 24/600 · Título de tarjeta 17/600 · Cuerpo 15/400 · Apoyo 13/400 · Etiqueta 12/600 en mayúsculas con espaciado |
| Tamaño ajustable | Todo respeta el tamaño de letra del sistema (hasta 200 %) |
| Espaciado | Base de 4 dp: 4, 8, 12, 16, 24, 32. Márgenes de pantalla 16 dp |
| Radios | Tarjetas 16 · Campos y botones 12 · Chips 999 |
| Elevación | Sin sombras fuertes: borde de 1 dp en `linea`; la hoja inferior sube con velo |
| Zonas táctiles | Mínimo 48 dp |
| Movimiento | 150–250 ms, solo para transiciones de contexto; se respeta «reducir animaciones» |
| Iconos | Línea de 1.75 dp, redondeada; sin emojis en la interfaz final |

Contrastes: texto normal ≥ 4.5:1; texto grande ≥ 3:1. Los tokens de arriba se eligieron para cumplirlo en ambos temas.

---

## 4. Navegación

**Patrón común:** barra inferior de **5 destinos** + una acción global «+» donde hay captura. Primer destino siempre es «hoy». Ajustes y privacidad se alcanzan desde el encabezado (⚙) o desde el último destino.

| App | Destinos de la barra | «+» global |
|---|---|---|
| Hábitos | Hoy · Agenda · Áreas · Progreso · Coach | Botón circular flotante, arriba a la derecha de la barra (G.1) |
| Presupuesto | Inicio · Presupuesto · Registrar (+) · Metas · Más | Ocupa el centro de la barra (sección 8 del doc. principal) |
| GRAVITY (Android) | Conversación · Mis permisos *(propuesto)* | No aplica: la entrada de texto y voz es el «+» |
| GRAVITY (escritorio) | Ventana con conversación y panel lateral de permisos | Atajo de teclado global |

- El «+» es siempre un **círculo primario** de 56 dp; solo cambia dónde vive.
- **Selector de contexto** (componente único): en Presupuesto es **Yo · Pareja · Hogar**; en Hábitos es el **integrante** (solo si hay más de uno). Se coloca arriba a la izquierda del encabezado.
- **Volver** es siempre «◀» arriba a la izquierda; las hojas inferiores se cierran con arrastre o «Cancelar».
- Entre apps solo se «salta» por **enlace** (`habitos://…`, `presupuesto://…`) tras una tarjeta de confirmación; el enlace **nunca** importa ni escribe (contrato 7).

---

## 5. Componentes compartidos

| Componente | Descripción | Apps |
|---|---|---|
| **Encabezado** | Selector de contexto o título, ⚙ y estado de bloqueo (🔒 si aplica) | Todas |
| **Barra inferior** | 5 destinos, activo con `primario-suave` + etiqueta | Móviles |
| **Tarjeta** | Superficie con borde, radio 16, 16 dp de relleno | Todas |
| **Tarjeta «Sigue»** | Próximo bloque o comida con acción principal y «Posponer» | Hábitos |
| **Chip de estado** | Icono + texto en los 3 estados semánticos | Todas |
| **Chip de regla** | Alergia, exclusión, restricción, preferencia (icono + texto) | Hábitos, Presupuesto |
| **Fila con acción** | Título, apoyo, acción a la derecha; deslizar es atajo, siempre hay botón | Todas |
| **Medidor** | Barra de progreso con etiqueta «X de Y»; anuncia el valor al lector de pantalla | Todas |
| **Hoja inferior** | Acciones y detalles sin salir de la pantalla | Todas |
| **Banner** | `info`, `atención`, `privacidad` y `ajuste`; con texto exacto del contrato de UX (sección 7) | Todas |
| **Tarjeta de confirmación** | Resumen + «Cancelar» / acción; sirve para voz, importar y «Voy a abrir X» | Todas |
| **Botón** | Primario (relleno), secundario (borde), texto; deshabilitado con razón visible | Todas |
| **Campo** | Etiqueta arriba, ayuda abajo, contador cuando hay límite (200 caracteres) | Todas |
| **Estado vacío** | Una frase, una sola acción; nunca error | Todas |

---

## 6. Pantallas del sistema (ids existentes, no se renumera nada)

| En el artefacto | Id origen | App |
|---|---|---|
| Sistema (tokens y componentes) | Este documento | — |
| Hoy | P01 | Hábitos |
| Alimentación: plan de hoy | P22 | Hábitos |
| Importar plan: revisión | P34 *(propuesto)* | Hábitos |
| Marcar comida | P35 *(propuesto)* | Hábitos |
| Inicio | PR01 | Presupuesto |
| Exportar plan | PR21 | Presupuesto |
| Importar seguimiento: revisión | PR22 | Presupuesto |
| Cumplimiento semanal | PR23 | Presupuesto |
| Conversación + «¿Abrir?» | G01, G03 | GRAVITY (Android) |
| Consentimiento de archivo | G05 | GRAVITY (Android) |
| Ventana de escritorio | G01, G03, G08 | GRAVITY (escritorio) |

---

## 7. Patrones de conexión (una sola experiencia)

Estos patrones reutilizan el **bloque compartido** que ya usan los tres documentos de pantallas; no se redactan textos nuevos.

**Importar (cualquier app).** Elegir o recibir archivo → validar → **revisión** (resumen, avisos) → [vincular integrante, solo Hábitos y solo la primera vez] → confirmar o cancelar. Nada se guarda antes de confirmar. Siempre hay botón «Importar archivo».

**Exportar.** Resumen de lo que incluye y de lo que **no** incluye (dinero, cuentas, precios, comercios) → banner de privacidad → botón «Compartir». Para `persona_bajo_cuidado`, solo envío directo a la app destino.

**Abrir otra app.** Tarjeta de confirmación («Voy a abrir …») → enlace. Parámetros inválidos: no hace nada y avisa «Ese enlace no es válido.» App ausente: botón oculto o «Instala la app de …».

**Textos exactos** (idénticos en todas las apps):

- «Este plan ya estaba importado (revisión N). No se hizo ningún cambio.»
- «Este archivo es una revisión anterior (N) a la que ya tienes (M). No se importó.»
- «Esta revisión (N) reemplaza a la anterior (M). Revisa los cambios antes de confirmar.»
- «Este archivo usa una versión del formato (X) que esta app no entiende. No se importó nada. Actualiza las apps.»
- «El archivo supera el límite permitido (motivo). No se importó.»
- «Se descartaron N registros que no corresponden al plan. Puedes importar el resto.»
- «Este archivo incluye alergias y notas, que son datos de salud. Compártelo directo con la otra app, no por mensajería ni nube.»

---

## 8. Voz y tono

- Cercano, sin culpa, sin tecnicismos. «Ajuste», no «error»; «retomemos», no «fallaste».
- **Vocabulario común:** *plan* (qué comer), *seguimiento* (cómo voy), *revisión* (versión del plan), *integrante*, *hoy*, *conexión*.
- Sin juicio en registros sensibles (hábitos a eliminar, comidas omitidas): «Anotado. Mañana es otro día.»
- Montos con formato MXN y sin ocultar el signo; con pantalla bloqueada se ocultan.

---

## 9. Accesibilidad y privacidad en pantalla

- Todo gesto (deslizar) tiene botón equivalente.
- Cada fila anuncia su estado completo («Desayuno, 8:00, Sándwich de queso panela, cumplido»).
- Foco visible; orden de lectura lógico; el banner de privacidad se lee **antes** del botón Compartir.
- Texto importado se muestra como **texto plano**; nada interpreta HTML ni Markdown.
- Bloqueo con PIN o biometría; vista previa de apps recientes sin datos sensibles; notificaciones discretas en hábitos sensibles.
- Modo traslado y bicicleta: audio y voz, sin lectura ni toques en movimiento (Hábitos G.8).

---

## 10. Escritorio (GRAVITY)

La misma identidad visual a ancho de ventana (mínimo 880 px): conversación a la izquierda, panel lateral de «Mis permisos» (consentimientos de archivo, IA, apps detectadas) a la derecha. Teclado primero: foco visible, atajo para invocar, `Enter` envía. Los enlaces `habitos://` y `presupuesto://` **no están definidos** para escritorio; la pantalla de escritorio muestra el estado «sin otras apps» (G08) como habitual, sin inventar un canal nuevo.

---

## 11. Incoherencias que este documento deja a la vista (no resueltas)

Se anotan, no se corrigen en los otros documentos.

1. **Identidad por app vs. un solo sistema.** `PANTALLAS_Y_NAVEGACION.md` (FINNZAS, sección 1) propone una identidad propia para Presupuesto sin color por área. Este documento la sustituye por **un solo primario**. Si lo apruebas, ese punto del documento de FINNZAS queda superado.
2. **Rojo vs. terracota.** El doc. principal de Presupuesto (5.6) habla de semáforo verde/ámbar/rojo; Hábitos (G.1) prohíbe el rojo de alarma. Aquí se adopta **En orden / Atención / Ajuste (terracota)** para todo.
3. **«+» en la barra vs. flotante.** Presupuesto lo pone en el centro de la barra; Hábitos lo flota. Se respetan ambos con el mismo círculo primario.
4. **Coach (Hábitos) vs. GRAVITY.** Dos asistentes conversacionales. Se propone nombrar la pestaña de Hábitos «Coach» (IA de coaching) y a GRAVITY «GRAVITY», con icono distinto; falta decisión.
5. **Numeración P34–P37** está solo propuesta en `PANTALLAS_PENDIENTES.md`; aquí se usa tal cual.
6. **Estados de plan vs. seguimiento.** Los textos «ya importado / revisión» son del plan; Presupuesto importa seguimiento (sin `revision`). Mismo problema anotado en FINNZAS.
7. **Escritorio** y la sección 7 del contrato (Android): sin resolver, y no se toca el contrato.

---

## 12. Preguntas abiertas

1. ¿Aprobar **un solo primario** (azul marino) y terracota en lugar de rojo para todo el sistema?
2. ¿IBM Plex Sans como familia única, o prefieres otra?
3. ¿Iconos de línea (propuesto) o con emojis como en los bocetos de Hábitos (G.9, pregunta 3)?
4. ¿Tema claro, oscuro o automático por defecto?
5. ¿Cómo distinguir visualmente «Coach» de GRAVITY?
6. ¿Copiamos este documento a cada repositorio a mano? (`sincronizar-contrato.sh` solo copia el contrato; no se toca.)

---

## 13. Control de cambios

| Versión | Fecha | Cambio |
|---|---|---|
| 0.1 | 28/oct/2026 | Primera propuesta: sistema común, tokens, navegación, componentes y patrones de conexión |
