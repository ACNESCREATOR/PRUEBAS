<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>ONEGA MUEBLES CLOUD | Gestión y Cotizaciones</title>

  <!-- Google Fonts: Montserrat & Roboto -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700;800&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />

  <!-- Librerías de Exportación PDF (html2canvas + jsPDF) -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>

  <style>
    /* ==========================================================================
       1. VARIABLES DE DISEÑO & RESET GLOBAL — ONEGA MUEBLES CLOUD
       ========================================================================== */
    :root {
      --accent-orange: #ff6600;
      --accent-orange-hover: #ff8533;
      --accent-orange-soft: rgba(255, 102, 0, 0.14);
      --bg-dark: #000000;
      --panel-bg: #111111;
      --card-bg: #16181b;
      --input-bg: #08090a;
      --border-subtle: #26292e;
      --border-orange: rgba(255, 102, 0, 0.35);
      --text-main: #f5f5f7;
      --text-muted: #9ca3af;
      --success-green: #10b981;
      --danger-red: #ef4444;
      --warning-amber: #f59e0b;
    }

    * {
      box-sizing: border-box;
    }
/* ... existing code ... -->
    .editing-banner {
      display: none;
      background: rgba(255, 102, 0, 0.14);
      border: 1px solid var(--accent-orange);
      border-radius: 10px;
      padding: 10px 12px;
      margin-bottom: 14px;
      font-size: 0.78rem;
      color: #ffd8bd;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 8px;
    }

    .editing-banner.visible {
      display: flex;
    }

    .editing-banner-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .editing-banner button {
      background: transparent;
      border: 1px solid var(--accent-orange);
      color: var(--accent-orange);
      border-radius: 6px;
      padding: 5px 9px;
      font-size: 0.68rem;
      font-family: 'Montserrat', sans-serif;
      font-weight: 700;
      cursor: pointer;
      transition: 0.2s;
    }

    .editing-banner button.btn-banner-save {
      background: var(--accent-orange);
      color: #000000;
    }

    .editing-banner button:hover {
      background: #ffffff;
      border-color: #ffffff;
      color: #000000;
    }

    .section-title {
      color: var(--accent-orange);
      font-family: 'Montserrat', sans-serif;
/* ... existing code ... -->
    .actions-stack {
      display: flex;
      flex-direction: column;
      gap: 10px;
      margin-top: 20px;
    }

    .auto-save-check-row {
      display: flex;
      align-items: center;
      gap: 9px;
      background: #17181c;
      border: 1px solid #2b2e36;
      border-radius: 10px;
      padding: 10px 12px;
      cursor: pointer;
      font-size: 0.78rem;
      color: #e5e7eb;
      user-select: none;
      transition: border-color 0.2s ease;
    }

    .auto-save-check-row:hover {
      border-color: var(--accent-orange);
    }

    .auto-save-check-row input[type="checkbox"] {
      width: 16px;
      height: 16px;
      accent-color: var(--accent-orange);
      cursor: pointer;
      flex-shrink: 0;
    }

    .btn-cloud-save {
      width: 100%;
      background: linear-gradient(135deg, #1b1e24 0%, #121418 100%);
      color: #ffffff;
      border: 1.5px solid var(--accent-orange);
      padding: 13px;
      border-radius: 12px;
      font-family: 'Montserrat', sans-serif;
      font-weight: 800;
      font-size: 0.85rem;
      cursor: pointer;
      transition: all 0.25s ease;
      text-transform: uppercase;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
/* ... existing code ... -->
    .btn-card-secondary:hover {
      border-color: var(--accent-orange);
      color: #ffffff;
    }

    .btn-card-archive {
      background: rgba(245, 158, 11, 0.14);
      color: #fbbf24;
      border: 1px solid rgba(245, 158, 11, 0.42);
      border-radius: 9px;
      padding: 10px 13px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.74rem;
      font-weight: 800;
      cursor: pointer;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 5px;
    }

    .btn-card-archive:hover {
      background: #f59e0b;
      color: #000000;
      border-color: #f59e0b;
    }

    .btn-whatsapp-card {
      background: rgba(16, 185, 129, 0.14);
      color: #34d399;
      border: 1px solid rgba(16, 185, 129, 0.42);
      border-radius: 9px;
      padding: 10px 13px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.74rem;
      font-weight: 800;
      text-decoration: none;
      cursor: pointer;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 5px;
    }

    .btn-whatsapp-card:hover {
      background: #10b981;
      color: #000000;
      border-color: #10b981;
    }

    .btn-card-danger {
      background: rgba(239, 68, 68, 0.12);
      color: #f87171;
      border: 1px solid rgba(239, 68, 68, 0.35);
      border-radius: 9px;
      padding: 10px 12px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.73rem;
      font-weight: 700;
      cursor: pointer;
      transition: 0.2s;
    }

    .btn-card-danger:hover,
    .btn-card-danger.confirming {
      background: #ef4444;
      color: #ffffff;
      border-color: #ef4444;
    }

    .btn-card-danger.confirming {
      box-shadow: 0 0 14px rgba(239, 68, 68, 0.55);
    }

    .archive-type-badge {
      font-family: 'Montserrat', sans-serif;
      font-size: 0.68rem;
      font-weight: 800;
      text-transform: uppercase;
      padding: 4px 9px;
      border-radius: 6px;
      letter-spacing: 0.5px;
    }

    .archive-type-badge.tipo-cotizacion {
      background: rgba(255, 102, 0, 0.16);
      color: #ff944d;
      border: 1px solid rgba(255, 102, 0, 0.35);
    }

    .archive-type-badge.tipo-solicitud {
      background: rgba(59, 130, 246, 0.16);
      color: #93c5fd;
      border: 1px solid rgba(59, 130, 246, 0.35);
    }

    .archived-date-pill {
      display: inline-flex;
      align-items: center;
      gap: 5px;
      font-size: 0.73rem;
      color: #fbbf24;
      background: rgba(245, 158, 11, 0.08);
      border: 1px solid rgba(245, 158, 11, 0.25);
      border-radius: 7px;
      padding: 5px 10px;
    }

    .empty-state-box {
      grid-column: 1 / -1;
      background: var(--panel-bg);
/* ... existing code ... -->
        <!-- COLUMNA IZQUIERDA: PANEL FORMULARIO -->
        <div class="panel-formulario">
          
          <!-- Banner indicador cuando se edita un presupuesto guardado -->
          <div id="editingBanner" class="editing-banner">
            <span>✏️ Editando: <strong id="editingFolioLabel">#ONG-100</strong></span>
            <div class="editing-banner-actions">
              <button type="button" id="bannerSaveChangesBtn" class="btn-banner-save">💾 Guardar</button>
              <button type="button" id="cancelEditModeBtn">+ Nueva</button>
            </div>
          </div>

          <div class="section-title" style="margin-top: 0;">🧹 Acciones Rápidas</div>
          <button type="button" id="btn-limpiar-form" class="btn-limpiar">
            🧹 Limpiar / Nueva Cotización
          </button>

          <div class="section-title">📄 Datos Generales</div>
          <div class="form-group">
            <label for="input-filename">Nombre del Archivo (Sin .pdf)</label>
            <input type="text" id="input-filename" class="form-control" placeholder="Ej. Cotizacion_Booths_Restaurante" />
          </div>

          <div class="form-group">
            <label for="input-folio">Folio (Ej. #ONG-102)</label>
            <input type="text" id="input-folio" class="form-control" placeholder="Se genera automático" />
          </div>

          <div class="form-group">
            <label for="input-cliente">Nombre del Cliente</label>
            <input type="text" id="input-cliente" class="form-control" placeholder="Ej. Arq. Valeria Torres" />
          </div>

          <div class="form-group">
            <label for="input-empresa">Restaurante / Bar / Empresa (Opcional)</label>
            <input type="text" id="input-empresa" class="form-control" placeholder="Ej. Terraza Mezcal &amp; Brasa" />
          </div>

          <div class="form-group">
            <label for="input-telefono">Teléfono / WhatsApp (Opcional)</label>
            <input type="tel" id="input-telefono" class="form-control" placeholder="Ej. 55 1234 5678" />
          </div>

          <div class="section-title">🛋️ Muebles / Partidas a Cotizar</div>
          <div class="form-group">
            <label for="num-proyectos">¿Cuántos muebles o partidas incluirás?</label>
            <select id="num-proyectos" class="form-control" style="border-color: #ff6600; font-weight: 700;">
              <option value="1" selected>1 Mueble / Partida</option>
              <option value="2">2 Muebles / Partidas</option>
              <option value="3">3 Muebles / Partidas</option>
              <option value="4">4 Muebles / Partidas</option>
              <option value="5">5 Muebles / Partidas</option>
              <option value="6">6 Muebles / Partidas</option>
            </select>
          </div>

          <!-- Contenedor dinámico de 1 a 6 partidas -->
          <div id="forms-proyectos-container"></div>

          <div class="section-title">🖼️ Foto General / Muestra de Tela (Opcional)</div>
          <div class="form-group">
            <div class="label-with-btn">
              <label for="input-render">Sube foto catálogo o muestra global</label>
              <span class="btn-clear-img" id="btn-clear-render">🗑️ BORRAR</span>
            </div>
            <input type="file" id="input-render" class="form-control" accept="image/*" />
          </div>

          <div class="section-title">🤝 Condiciones y Cierre</div>
          <div class="form-group">
            <label for="input-descuento">Descuento Especial (MXN) - Opcional</label>
            <input type="number" id="input-descuento" class="form-control" placeholder="Ej. 1500" min="0" />
          </div>

          <div class="form-group">
            <label for="input-garantia">Tiempo de Garantía o Entrega (Opcional)</label>
            <select id="input-garantia" class="form-control">
              <option value="">-- Sin garantía especificada --</option>
              <option value="1 año de garantía estructural en madera estufada, costuras y espumas de alta densidad.">1 Año de Garantía Estructural</option>
              <option value="6 meses de garantía en mano de obra, herrajes y materiales de tapicería.">6 Meses de Garantía</option>
              <option value="Tiempo estimado de fabricación y entrega: 10 a 15 días hábiles a partir del anticipo.">Entrega en 10-15 días hábiles</option>
              <option value="Tiempo estimado de fabricación y entrega: 15 a 25 días hábiles para proyectos integrales.">Entrega en 15-25 días hábiles (Integral)</option>
            </select>
          </div>

          <div class="form-group">
            <label for="input-instalacion">Detalles de Logística / Entrega</label>
            <textarea id="input-instalacion" class="form-control" placeholder="Ej. Incluye flete, maniobras e instalación en sitio dentro de CDMX y Área Metropolitana..."></textarea>
          </div>

          <!-- Botones de Guardado Cloud y Exportación PDF -->
          <div class="actions-stack">
            <label class="auto-save-check-row" for="autoSaveOnPdfCheckbox">
              <input type="checkbox" id="autoSaveOnPdfCheckbox" checked />
              <span>Guardar automáticamente en Activas al generar PDF</span>
            </label>
            <button type="button" id="btnGuardarCloud" class="btn-cloud-save">
              <span>💾 Guardar en Cotizaciones Activas</span>
            </button>
            <button type="button" id="btnGenerarPdf" class="btn-generar">
              📥 Generar PDF de Alta Calidad
            </button>
          </div>
        </div>

        <!-- COLUMNA DERECHA: VISTA PREVIA PDF DE 800PX -->
        <div class="panel-vista-previa" id="previewContainerOuter">
          <div class="preview-scale-wrapper" id="previewScaleWrapper">
            <div id="documento-imagen">
              
              <!-- CABECERA CORPORATIVA ONEGA MUEBLES (SVG LIMPIO SIN CORS) -->
              <div class="doc-header">
                <div class="doc-header-left">
                  <svg class="doc-logo-svg" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <rect x="2" y="2" width="60" height="60" rx="14" fill="#18181b" stroke="#ff6600" stroke-width="3" />
                    <rect x="14" y="16" width="36" height="13" rx="3" stroke="#ffffff" stroke-width="2.5" />
                    <rect x="14" y="35" width="36" height="13" rx="3" stroke="#ffffff" stroke-width="2.5" />
                    <line x1="26" y1="22.5" x2="38" y2="22.5" stroke="#ff6600" stroke-width="3" stroke-linecap="round" />
                    <line x1="26" y1="41.5" x2="38" y2="41.5" stroke="#ff6600" stroke-width="3" stroke-linecap="round" />
                  </svg>
                  <div class="doc-empresa-info">
                    <h3>ONEGA MUEBLES</h3>
                    <p>Diseño y Fabricación de Mobiliario a la Medida</p>
                  </div>
                </div>
                <div class="doc-header-right">
                  <h2>COTIZACIÓN</h2>
                  <p>Folio: <span id="out-folio">#ONG-100</span></p>
                </div>
              </div>

              <div class="doc-body">
                
                <!-- DATOS GENERALES LADO A LADO -->
                <div class="info-grid-top">
                  <div class="info-card">
                    <label>Atención a:</label>
                    <span id="out-cliente">Nombre del Cliente</span>
                    <small id="out-empresa-sub" style="display: none;"></small>
                  </div>
                  <div class="info-card">
                    <label>Fecha de Emisión:</label>
                    <span id="out-fecha">--/--/----</span>
                    <small id="out-telefono-sub" style="display: none;"></small>
                  </div>
                </div>

                <!-- PARTIDAS DINÁMICAS (1 A 6) -->
                <div id="outputs-proyectos-container"></div>

                <!-- MUESTRA DE TELA / CATÁLOGO GLOBAL -->
                <div id="box-render-final" style="display: none; flex-direction: column; margin-bottom: 24px;">
                  <h3 style="font-family: 'Montserrat', sans-serif; color: #111111; margin: 0 0 10px 0; border-bottom: 2px solid var(--accent-orange); padding-bottom: 5px; font-size: 15px;">
                    Muestra de Tela / Catálogo Seleccionado
                  </h3>
                  <div class="img-container" style="min-height: 220px; background-color: #fafafa; border-radius: 8px; border: 1px dashed #cccccc; display: flex; align-items: center; justify-content: center; position: relative; padding: 10px;">
                    <img id="out-render-img" src="" alt="Muestra Global" style="max-width: 100%; max-height: 400px; width: auto; height: auto; object-fit: contain !important; display: none; border-radius: 6px;" />
                  </div>
                </div>

                <!-- CONDICIONES Y TOTALES -->
                <div class="resumen-final">
                  <div class="condiciones-box" id="box-condiciones">
                    <div id="wrap-garantia" style="display: none; margin-bottom: 10px;">
                      <h5>🛡️ Garantía y Términos</h5>
                      <p id="out-garantia"></p>
                    </div>
                    <div id="wrap-instalacion" style="display: none;">
                      <h5>🚚 Logística y Entrega</h5>
                      <p id="out-instalacion"></p>
                    </div>
                  </div>

                  <div class="precio-box">
                    <h4>INVERSIÓN TOTAL</h4>
                    <div class="precio-fila">
                      <span>Subtotal:</span>
                      <span id="out-subtotal-global">$0.00</span>
                    </div>
                    <div class="precio-fila" id="row-descuento" style="display: none;">
                      <span>- Descuento:</span>
                      <span id="out-descuento">-$0.00</span>
                    </div>
                    <div class="precio-fila" id="row-subtotal-desc" style="display: none;">
                      <span>Total con Descuento:</span>
                      <span id="out-subtotal-desc">$0.00</span>
                    </div>
                    <div class="precio-fila">
                      <span>IVA (16%):</span>
                      <span id="out-iva">$0.00</span>
                    </div>
                    <div class="precio-fila-total">
                      <span style="font-size: 13px; font-weight: 700;">TOTAL FINAL:</span>
                      <span class="monto" id="out-total-final">$0.00</span>
                    </div>
                  </div>
                </div>

                <!-- PIE DE PÁGINA CORPORATIVO -->
                <div class="doc-footer-container">
                  <div>
                    <p style="margin: 0;"><strong>ONEGA MUEBLES · Atención telefónica y WhatsApp</strong></p>
                    <p style="margin: 3px 0 0 0; color: #555555;">Presupuestos válidos por 15 días naturales. Precios en MXN.</p>
                  </div>
                  <div class="firma-generator"><span>ONEGA MUEBLES CLOUD</span></div>
                </div>

              </div>
            </div>
          </div>
        </div>

      </div>
    </section>

    <!-- ========================================================================
         VISTA 2: SOLICITUDES WEB (FIRESTORE: onega_cotizaciones)
         ======================================================================== -->
    <section id="view-solicitudes" class="view-section">
      <div class="section-header-bar">
        <div>
          <h2>Solicitudes <span>Web</span></h2>
          <p>Prospectos recibidos en tiempo real desde el formulario de contacto de la página principal de Onega Muebles.</p>
        </div>
      </div>

      <!-- Barra de búsqueda y filtro por estado -->
      <div class="toolbar-row">
        <div class="search-box">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <circle cx="11" cy="11" r="8" />
            <line x1="21" y1="21" x2="16.65" y2="16.65" />
          </svg>
          <input type="text" id="searchSolicitudesInput" placeholder="Buscar por folio, cliente, restaurante o teléfono..." />
        </div>

        <div class="filter-pills" id="solicitudesStatusFilters">
          <button type="button" class="filter-pill-btn active" data-status-filter="ALL">Todos</button>
          <button type="button" class="filter-pill-btn" data-status-filter="Nuevo">Nuevo</button>
          <button type="button" class="filter-pill-btn" data-status-filter="Recibido en Taller">Recibido en Taller</button>
          <button type="button" class="filter-pill-btn" data-status-filter="En Cotización">En Cotización</button>
          <button type="button" class="filter-pill-btn" data-status-filter="Cotizado">Cotizado</button>
          <button type="button" class="filter-pill-btn" data-status-filter="Descartado">Descartado</button>
        </div>
      </div>

      <div id="solicitudesGrid" class="cards-grid"></div>
    </section>

    <!-- ========================================================================
         VISTA 3: COTIZACIONES ACTIVAS (FIRESTORE: onega_presupuestos, archivada !== true)
         ======================================================================== -->
    <section id="view-activas" class="view-section">
      <div class="section-header-bar">
        <div>
          <h2>Cotizaciones <span>Activas</span></h2>
          <p>Presupuestos vigentes guardados en Onega Muebles Cloud listos para seguimiento, edición o archivo.</p>
        </div>
      </div>

      <!-- KPIs Resumen Activas -->
      <div class="kpi-grid">
        <div class="kpi-card">
          <div class="kpi-label">Cotizaciones Activas</div>
          <div class="kpi-value" id="kpiActivasCount">0</div>
        </div>
        <div class="kpi-card">
          <div class="kpi-label">Monto Total Activo (IVA Inc.)</div>
          <div class="kpi-value accent" id="kpiActivasTotal">$0.00</div>
        </div>
        <div class="kpi-card">
          <div class="kpi-label">Ticket Promedio</div>
          <div class="kpi-value" id="kpiActivasAvg">$0.00</div>
        </div>
      </div>

      <div class="toolbar-row">
        <div class="search-box">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <circle cx="11" cy="11" r="8" />
            <line x1="21" y1="21" x2="16.65" y2="16.65" />
          </svg>
          <input type="text" id="searchActivasInput" placeholder="Buscar cotización activa por folio, cliente o empresa..." />
        </div>

        <div class="filter-pills" id="activasStatusFilters">
          <button type="button" class="filter-pill-btn active" data-active-status="ALL">Todas</button>
          <button type="button" class="filter-pill-btn" data-active-status="Enviada">Enviada</button>
          <button type="button" class="filter-pill-btn" data-active-status="En Revisión">En Revisión</button>
          <button type="button" class="filter-pill-btn" data-active-status="Aprobada">Aprobada</button>
          <button type="button" class="filter-pill-btn" data-active-status="En Fabricación">En Fabricación</button>
        </div>
      </div>

      <div id="activasGrid" class="cards-grid"></div>
    </section>

    <!-- ========================================================================
         VISTA 4: ARCHIVADAS (UNIFICADA: COTIZACIONES + SOLICITUDES WEB ARCHIVADAS)
         ======================================================================== -->
    <section id="view-archivadas" class="view-section">
      <div class="section-header-bar">
        <div>
          <h2>Registros <span>Archivados</span></h2>
          <p>Historial unificado de cotizaciones y solicitudes web archivadas. Restaura cualquier registro a Activas o cárgalo en el generador.</p>
        </div>
      </div>

      <!-- KPIs Resumen Archivadas -->
      <div class="kpi-grid">
        <div class="kpi-card">
          <div class="kpi-label">Total Archivados</div>
          <div class="kpi-value" id="kpiArchivadasCount">0</div>
        </div>
        <div class="kpi-card">
          <div class="kpi-label">Cotizaciones Archivadas</div>
          <div class="kpi-value" id="kpiArchivadasBudgetsCount">0</div>
        </div>
        <div class="kpi-card">
          <div class="kpi-label">Monto Total Cotizaciones Archivadas</div>
          <div class="kpi-value accent" id="kpiArchivadasTotal">$0.00</div>
        </div>
      </div>

      <div class="toolbar-row">
        <div class="search-box">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <circle cx="11" cy="11" r="8" />
            <line x1="21" y1="21" x2="16.65" y2="16.65" />
          </svg>
          <input type="text" id="searchArchivadasInput" placeholder="Buscar en archivadas por folio, cliente, restaurante o empresa..." />
        </div>

        <div class="filter-pills" id="archivadasTypeFilters">
          <button type="button" class="filter-pill-btn active" data-archive-filter="ALL">Todas</button>
          <button type="button" class="filter-pill-btn" data-archive-filter="COTIZACIONES">Cotizaciones Archivadas</button>
          <button type="button" class="filter-pill-btn" data-archive-filter="SOLICITUDES">Solicitudes Web Archivadas</button>
        </div>
      </div>

      <div id="archivadasGrid" class="cards-grid"></div>
    </section>

  </main>

  <footer class="app-footer">
    ONEGA MUEBLES CLOUD • <span>SISTEMA INTERNO DE COTIZACIONES &amp; PROYECTOS</span>
  </footer>

  <!-- ==========================================================================
       MODAL DE CONFIRMACIÓN PERSONALIZADO (SIN window.confirm NI window.alert)
       ========================================================================== -->
  <div id="confirmModal" class="custom-modal-overlay" role="dialog" aria-modal="true" aria-labelledby="confirmModalTitle">
    <div class="custom-modal-box">
      <h3 id="confirmModalTitle">Confirmar Acción</h3>
      <p id="confirmModalMessage">¿Deseas continuar?</p>
      <div class="custom-modal-actions">
        <button type="button" id="confirmModalCancelBtn" class="btn-modal-cancel">Cancelar</button>
        <button type="button" id="confirmModalAcceptBtn" class="btn-modal-confirm">Confirmar</button>
      </div>
    </div>
  </div>

  <!-- Contenedor de Notificaciones Toast -->
  <div id="toastContainer" class="toast-container" aria-live="polite"></div>

  <!-- ==========================================================================
       SCRIPT MÓDULO ES6: FIREBASE FIRESTORE V10 + LÓGICA COMPLETA CLOUD
       ========================================================================== -->
  <script type="module">
    import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.2/firebase-app.js";
    import {
      getFirestore,
      collection,
      doc,
      addDoc,
      updateDoc,
      deleteDoc,
      onSnapshot,
      serverTimestamp
    } from "https://www.gstatic.com/firebasejs/10.12.2/firebase-firestore.js";

    // ==========================================================================
    // 1. CREDENCIALES FIREBASE (PROYECTO: acnes-clientes)
    // ==========================================================================
    const firebaseConfig = {
      apiKey: "AIzaSyCUeewNCmWsgOFTcpM7RVOg09Eg0mtS-Gs",
      authDomain: "acnes-clientes.firebaseapp.com",
      projectId: "acnes-clientes",
      storageBucket: "acnes-clientes.firebasestorage.app",
      messagingSenderId: "18765540716",
      appId: "1:18765540716:web:dbd0a3a17fad87c1315749"
    };

    const COL_SOLICITUDES = "onega_cotizaciones";
    const COL_PRESUPUESTOS = "onega_presupuestos";

    let db = null;
    try {
      const app = initializeApp(firebaseConfig);
      db = getFirestore(app);
    } catch (err) {
      console.error("Error inicializando Firebase:", err);
      setSyncStatus(false, "Error de conexión");
    }

    // ==========================================================================
    // 2. ESTADO GLOBAL DE LA APLICACIÓN
    // ==========================================================================
    let solicitudesWebList = [];
    let presupuestosList = [];
    let solicitudesStatusFilter = "ALL";
    let activasStatusFilter = "ALL";
    let archivadasTypeFilter = "ALL";
    let currentEditingBudgetId = null;
    let currentEditingBudgetArchived = false;
    let linkedSolicitudId = null;

    // Almacén en memoria de las imágenes base64 actuales del generador (alta calidad para PDF)
    const generatorImages = {
      render: "",
      fotos: { 1: "", 2: "", 3: "", 4: "", 5: "", 6: "" },
      ejemplos: { 1: "", 2: "", 3: "", 4: "", 5: "", 6: "" },
      panoramica: { 1: false, 2: false, 3: false, 4: false, 5: false, 6: false }
    };
// ... existing code ... -->
    function formatDateDisplay(item, customIsoField = null) {
      if (customIsoField && item[customIsoField]) {
        const dCustom = new Date(item[customIsoField]);
        if (!isNaN(dCustom.getTime())) {
          return dCustom.toLocaleString("es-MX", {
            day: "2-digit",
            month: "short",
            year: "numeric",
            hour: "2-digit",
            minute: "2-digit"
          });
        }
      }
      if (item.fechaCreacion && typeof item.fechaCreacion.toDate === "function") {
        return item.fechaCreacion.toDate().toLocaleString("es-MX", {
          day: "2-digit",
          month: "short",
          year: "numeric",
          hour: "2-digit",
          minute: "2-digit"
        });
      }
      if (item.createdAt && typeof item.createdAt.toDate === "function") {
        return item.createdAt.toDate().toLocaleString("es-MX", {
          day: "2-digit",
          month: "short",
          year: "numeric",
          hour: "2-digit",
          minute: "2-digit"
        });
      }
      const iso = item.updatedAtISO || item.createdAtISO || item.fechaRegistroISO || item.fechaCreacion;
      if (iso) {
        const d = new Date(iso);
        if (!isNaN(d.getTime())) {
          return d.toLocaleString("es-MX", {
            day: "2-digit",
            month: "short",
            year: "numeric",
            hour: "2-digit",
            minute: "2-digit"
          });
        }
      }
      return "Fecha reciente";
    }

    function getTimestampMs(item) {
      if (item.fechaCreacion && typeof item.fechaCreacion.toMillis === "function") {
        return item.fechaCreacion.toMillis();
      }
      if (item.createdAt && typeof item.createdAt.toMillis === "function") {
        return item.createdAt.toMillis();
      }
      const iso = item.archivedAtISO || item.updatedAtISO || item.createdAtISO || item.fechaRegistroISO || item.fechaCreacion;
      if (iso) {
        const t = new Date(iso).getTime();
        if (!isNaN(t)) return t;
      }
      return 0;
    }
// ... existing code ... -->
    function generarNuevoFolio() {
      const folioAleatorio = "#ONG-" + Math.floor(Math.random() * 900 + 100);
      document.getElementById("input-folio").value = folioAleatorio;
      document.getElementById("out-folio").innerText = folioAleatorio;
    }

    function setEditingMode(budgetId, folioStr, isArchived = false) {
      currentEditingBudgetId = budgetId;
      currentEditingBudgetArchived = Boolean(isArchived);
      const banner = document.getElementById("editingBanner");
      const saveBtn = document.getElementById("btnGuardarCloud");
      if (budgetId) {
        document.getElementById("editingFolioLabel").textContent = folioStr || "#ONG-100";
        banner.classList.add("visible");
        saveBtn.innerHTML = `<span>💾 Actualizar en Cotizaciones Activas</span>`;
      } else {
        banner.classList.remove("visible");
        saveBtn.innerHTML = `<span>💾 Guardar en Cotizaciones Activas</span>`;
      }
    }

    document.getElementById("cancelEditModeBtn").addEventListener("click", () => {
      setEditingMode(null, "", false);
      generarNuevoFolio();
      showToast("Modo creación nueva activado", "info");
    });

    document.getElementById("bannerSaveChangesBtn").addEventListener("click", () => {
      guardarPresupuestoEnCloud({ silentToast: false });
    });

    function construirBloquesProyectos() {
// ... existing code ... -->
      borrarImagen("render", null);
      setEditingMode(null, "", false);
      linkedSolicitudId = null;
      generarNuevoFolio();
      cambiarCantidadProyectos();
    }
// ... existing code ... -->
    async function prepararPayloadSeguroFirestore(rawPayload) {
      // Clonamos el objeto para comprimir imágenes a 650px / 0.72 manteniendo intacta la memoria para PDF
      const clone = JSON.parse(JSON.stringify(rawPayload));
      const maxBytes = 840 * 1024;

      const levels = [
        { maxDim: 650, quality: 0.72 },
        { maxDim: 500, quality: 0.6 },
        { maxDim: 380, quality: 0.5 }
      ];

      for (let idx = 0; idx < levels.length; idx++) {
        const lvl = levels[idx];
        const currentSize = new TextEncoder().encode(JSON.stringify(clone)).length;
        if (idx > 0 && currentSize <= maxBytes) break;

        if (clone.renderGlobalBase64) {
          clone.renderGlobalBase64 = await recompressDataUrl(clone.renderGlobalBase64, lvl.maxDim, lvl.quality);
        }
        for (const p of clone.partidas) {
          if (p.fotoBase64) {
            p.fotoBase64 = await recompressDataUrl(p.fotoBase64, lvl.maxDim, lvl.quality);
          }
          if (p.ejemploBase64) {
            p.ejemploBase64 = await recompressDataUrl(p.ejemploBase64, lvl.maxDim, lvl.quality);
          }
        }
      }

      return clone;
    }

    // ==========================================================================
    // 8. GUARDAR PRESUPUESTO EN FIRESTORE ("onega_presupuestos")
    // ==========================================================================
    async function guardarPresupuestoEnCloud({ silentToast = false, autoMode = false } = {}) {
      if (!db) {
        if (!silentToast) showToast("No hay conexión disponible con Firebase Firestore", "error");
        return false;
      }

      const folio = document.getElementById("input-folio").value.trim() || "#ONG-100";
      const clienteInput = document.getElementById("input-cliente").value.trim();
      const empresa = document.getElementById("input-empresa").value.trim();
      const telefono = document.getElementById("input-telefono").value.trim();
      const filename = document.getElementById("input-filename").value.trim();
      const garantia = document.getElementById("input-garantia").value;
      const instalacion = document.getElementById("input-instalacion").value.trim();

      if (!clienteInput && !empresa && !autoMode) {
        showToast("Ingresa al menos el nombre del cliente o empresa antes de guardar", "error");
        document.getElementById("input-cliente").focus();
        return false;
      }

      const clienteFinal = clienteInput || empresa || "Cliente General";
      const btn = document.getElementById("btnGuardarCloud");
      btn.disabled = true;
      btn.innerHTML = `<span>⏳ Guardando en Activas...</span>`;

      try {
        const calc = calcularTotalesActuales();
        const nowIso = new Date().toISOString();

        const rawPayload = {
          folio,
          cliente: clienteFinal,
          empresa,
          telefono,
          filename,
          numProyectos: calc.numProyectos,
          partidas: calc.partidas,
          renderGlobalBase64: generatorImages.render || "",
          descuento: calc.descuento,
          garantia,
          instalacion,
          subtotal: calc.subtotalGlobal,
          subtotalConDescuento: calc.subtotalConDescuento,
          iva: calc.ivaGlobal,
          totalFinal: calc.totalFinal,
          archivada: false,
          solicitudOrigenId: linkedSolicitudId || "",
          updatedAtISO: nowIso
        };

        const safePayload = await prepararPayloadSeguroFirestore(rawPayload);

        if (currentEditingBudgetId) {
          await updateDoc(doc(db, COL_PRESUPUESTOS, currentEditingBudgetId), safePayload);
          setEditingMode(currentEditingBudgetId, folio, false);
          if (!silentToast) showToast(`Cotización ${folio} actualizada en Activas`, "success");
        } else {
          const docRef = await addDoc(collection(db, COL_PRESUPUESTOS), {
            ...safePayload,
            estadoPresupuesto: "Enviada",
            createdAt: serverTimestamp(),
            createdAtISO: nowIso
          });
          setEditingMode(docRef.id, folio, false);
          if (!silentToast) showToast(`Cotización ${folio} guardada en Cotizaciones Activas`, "success");
        }
        return true;
      } catch (saveErr) {
        console.error("Error guardando presupuesto en Firestore:", saveErr);
        if (!silentToast) showToast("Error al guardar en Firestore. Verifica tu conexión.", "error");
        return false;
      } finally {
        btn.disabled = false;
        setEditingMode(currentEditingBudgetId, folio, false);
      }
    }

    document.getElementById("btnGuardarCloud").addEventListener("click", () => {
      guardarPresupuestoEnCloud({ silentToast: false, autoMode: false });
    });

    // ==========================================================================
    // 9. EXPORTACIÓN PDF DE ALTA CALIDAD (HTML2CANVAS + JSPDF)
    // ==========================================================================
    document.getElementById("btnGenerarPdf").addEventListener("click", async () => {
      const original = document.getElementById("documento-imagen");
      const btn = document.getElementById("btnGenerarPdf");
      const autoSaveChecked = document.getElementById("autoSaveOnPdfCheckbox").checked;
      let filenameInput = document.getElementById("input-filename").value.trim();
      const folioClean = (document.getElementById("input-folio").value.trim() || "ONG").replace(/[^a-zA-Z0-9_-]/g, "");
      if (filenameInput === "") {
        filenameInput = `Cotizacion_Onega_${folioClean}`;
      }

      btn.innerHTML = "⏳ Renderizando PDF...";
      btn.disabled = true;

      if (autoSaveChecked) {
        await guardarPresupuestoEnCloud({ silentToast: true, autoMode: true });
      }

      const contenedorFantasma = document.createElement("div");
      contenedorFantasma.style.position = "absolute";
      contenedorFantasma.style.top = "-99999px";
      contenedorFantasma.style.left = "0";
      contenedorFantasma.style.width = "800px";

      const clon = original.cloneNode(true);
      clon.style.transform = "none";
      clon.style.zoom = "1";
      clon.style.width = "800px";
      clon.style.minWidth = "800px";
      clon.style.position = "relative";
      clon.style.left = "0";
      clon.style.margin = "0";

      contenedorFantasma.appendChild(clon);
      document.body.appendChild(contenedorFantasma);

      setTimeout(() => {
        html2canvas(clon, {
          scale: 3,
          useCORS: true,
          backgroundColor: "#ffffff",
          width: 800,
          windowWidth: 800,
          scrollY: 0
        })
          .then((canvas) => {
            const imgData = canvas.toDataURL("image/jpeg", 0.95);
            const { jsPDF } = window.jspdf;
            const pdf = new jsPDF({
              orientation: "portrait",
              unit: "px",
              format: [canvas.width, canvas.height]
            });
            pdf.addImage(imgData, "JPEG", 0, 0, canvas.width, canvas.height);

            const pdfBlob = pdf.output("blob");
            const pdfUrl = URL.createObjectURL(pdfBlob);

            window.open(pdfUrl, "_blank");

            setTimeout(() => {
              const enlaceDescarga = document.createElement("a");
              enlaceDescarga.style.display = "none";
              enlaceDescarga.href = pdfUrl;
              enlaceDescarga.download = `${filenameInput}.pdf`;
              document.body.appendChild(enlaceDescarga);
              enlaceDescarga.click();
              document.body.removeChild(enlaceDescarga);
            }, 300);

            document.body.removeChild(contenedorFantasma);
            btn.innerHTML = "✅ ¡PDF Creado con Éxito!";
            btn.style.backgroundColor = "#10b981";
            btn.style.color = "#ffffff";
            showToast(
              autoSaveChecked
                ? "PDF generado y cotización guardada en Activas"
                : "PDF generado y descargado correctamente",
              "success"
            );

            setTimeout(() => {
              btn.innerHTML = "📥 Generar PDF de Alta Calidad";
              btn.style.backgroundColor = "#ff6600";
              btn.style.color = "#000000";
              btn.disabled = false;
            }, 3500);
          })
          .catch((error) => {
            console.error("Error generando PDF:", error);
            if (document.body.contains(contenedorFantasma)) {
              document.body.removeChild(contenedorFantasma);
            }
            btn.innerHTML = "❌ Error al generar PDF";
            btn.style.backgroundColor = "#ef4444";
            btn.style.color = "#ffffff";
            showToast("Ocurrió un error al renderizar el PDF", "error");

            setTimeout(() => {
              btn.innerHTML = "📥 Generar PDF de Alta Calidad";
              btn.style.backgroundColor = "#ff6600";
              btn.style.color = "#000000";
              btn.disabled = false;
            }, 3000);
          });
      }, 160);
    });

    // ==========================================================================
    // 10. SUSCRIPCIONES EN TIEMPO REAL FIRESTORE (onSnapshot)
    // ==========================================================================
    function actualizarContadoresNavbar() {
      const solicitudesActivas = solicitudesWebList.filter((s) => s.archivada !== true);
      const solicitudesArchivadas = solicitudesWebList.filter((s) => s.archivada === true);
      const presupuestosActivos = presupuestosList.filter((p) => p.archivada !== true);
      const presupuestosArchivados = presupuestosList.filter((p) => p.archivada === true);

      document.getElementById("count-solicitudes").textContent = solicitudesActivas.length;
      document.getElementById("count-activas").textContent = presupuestosActivos.length;
      document.getElementById("count-archivadas").textContent =
        solicitudesArchivadas.length + presupuestosArchivados.length;
    }

    function iniciarListenersTiempoReal() {
      if (!db) return;

      // Listener 1: Solicitudes Web (onega_cotizaciones)
      onSnapshot(
        collection(db, COL_SOLICITUDES),
        (snapshot) => {
          setSyncStatus(true, "Firestore En Vivo");
          const items = [];
          snapshot.forEach((docSnap) => {
            items.push({ id: docSnap.id, ...docSnap.data() });
          });
          items.sort((a, b) => getTimestampMs(b) - getTimestampMs(a));
          solicitudesWebList = items;
          actualizarContadoresNavbar();
          renderSolicitudesWeb();
          renderRegistrosArchivados();
        },
        (error) => {
          console.error("Error escuchando Solicitudes Web:", error);
          setSyncStatus(false, "Revisar permisos Firestore");
        }
      );

      // Listener 2: Presupuestos Activos y Archivados (onega_presupuestos)
      onSnapshot(
        collection(db, COL_PRESUPUESTOS),
        (snapshot) => {
          setSyncStatus(true, "Firestore En Vivo");
          const items = [];
          snapshot.forEach((docSnap) => {
            items.push({ id: docSnap.id, ...docSnap.data() });
          });
          items.sort((a, b) => getTimestampMs(b) - getTimestampMs(a));
          presupuestosList = items;

          actualizarContadoresNavbar();
          renderPresupuestosActivos();
          renderRegistrosArchivados();
        },
        (error) => {
          console.error("Error escuchando Presupuestos:", error);
          setSyncStatus(false, "Revisar permisos Firestore");
        }
      );
    }

    // Helper para confirmar eliminación en dos clics inline sin bloquear el navegador
    function bindTwoClickDelete(buttonEl, onConfirmAction) {
      let resetTimer = null;
      buttonEl.addEventListener("click", async () => {
        if (!buttonEl.classList.contains("confirming")) {
          buttonEl.classList.add("confirming");
          buttonEl.dataset.originalHtml = buttonEl.innerHTML;
          buttonEl.innerHTML = "⚠️ ¿Confirmar?";
          resetTimer = setTimeout(() => {
            buttonEl.classList.remove("confirming");
            if (buttonEl.dataset.originalHtml) {
              buttonEl.innerHTML = buttonEl.dataset.originalHtml;
            }
          }, 3500);
          return;
        }

        if (resetTimer) clearTimeout(resetTimer);
        buttonEl.disabled = true;
        buttonEl.innerHTML = "⏳...";
        await onConfirmAction();
      });
    }

    // ==========================================================================
    // 11. RENDERIZADO & ACCIONES DE "SOLICITUDES WEB" (archivada !== true)
    // ==========================================================================
    function normalizeSolicitudFields(item) {
      const nombre = item.nombre || item.nombreCompleto || "Prospecto Web";
      const empresa = item.empresa || "Establecimiento por definir";
      const telefono = item.telefono || "";
      const correo = item.email || item.correo || "No especificado";
      const tipo = item.tipoProyecto || item.tipoEstablecimiento || "Proyecto";
      const capacidad = item.capacidad || item.capacidadPiezas || "Por definir";
      const planos =
        typeof item.tienePlanos === "boolean"
          ? item.tienePlanos
            ? "Sí"
            : "No"
          : item.cuentaConPlanos || "No";
      const notas = item.notas || item.notasProyecto || "";
      const rawMob = item.mobiliario ?? item.mobiliarioRequerido;
      const mobiliarioArr = Array.isArray(rawMob)
        ? rawMob
        : rawMob
          ? [rawMob]
          : ["Mobiliario bajo diseño"];

      return { nombre, empresa, telefono, correo, tipo, capacidad, planos, notas, mobiliarioArr };
    }

    function formatWhatsappUrl(phoneStr, clientName, folio) {
      const digits = String(phoneStr || "").replace(/\D/g, "");
      if (!digits) return null;
      const fullNum = digits.length === 10 ? `52${digits}` : digits;
      const msg = encodeURIComponent(
        `Hola ${clientName || ""}, te saludamos de Onega Muebles respecto a tu solicitud de proyecto (${folio || ""}).`
      );
      return `https://wa.me/${fullNum}?text=${msg}`;
    }

    function cargarSolicitudEnCotizador(item) {
      const norm = normalizeSolicitudFields(item);
      resetearFormularioSilencioso();
      linkedSolicitudId = item.id;

      const folioWeb = item.folio || "";
      const cleanName = (norm.empresa || norm.nombre || "Proyecto").replace(/[^a-zA-Z0-9áéíóúÁÉÍÓÚñÑ_-]/g, "_");

      document.getElementById("input-filename").value = `Cotizacion_${cleanName}`;
      document.getElementById("input-cliente").value = norm.nombre;
      document.getElementById("input-empresa").value = item.empresa || "";
      document.getElementById("input-telefono").value = norm.telefono;

      const numPartidas = Math.min(6, Math.max(1, norm.mobiliarioArr.length));
      document.getElementById("num-proyectos").value = String(numPartidas);
      cambiarCantidadProyectos();

      norm.mobiliarioArr.slice(0, 6).forEach((rubro, idx) => {
        const pIndex = idx + 1;
        const extraDetalle = [
          `${rubro} bajo diseño para ${norm.tipo}.`,
          norm.capacidad && norm.capacidad !== "Por definir" ? `Capacidad / piezas: ${norm.capacidad}.` : "",
          idx === 0 && norm.notas ? `Requerimientos del cliente: ${norm.notas}` : "",
          idx === 0 && folioWeb ? `(Ref. Solicitud Web: ${folioWeb})` : ""
        ]
          .filter(Boolean)
          .join("\n");

        document.getElementById(`input-desc-${pIndex}`).value = extraDetalle;
      });

      actualizarVista();
      switchCloudView("generador");
      window.scrollTo({ top: 0, behavior: "smooth" });
      showToast(`Datos de ${norm.nombre} cargados en el cotizador`, "success");
    }

    function renderSolicitudesWeb() {
      const grid = document.getElementById("solicitudesGrid");
      const term = document.getElementById("searchSolicitudesInput").value.trim().toLowerCase();

      const activasWeb = solicitudesWebList.filter((item) => item.archivada !== true);

      const filtered = activasWeb.filter((item) => {
        const norm = normalizeSolicitudFields(item);
        const statusActual = item.estado || "Nuevo";
        if (solicitudesStatusFilter !== "ALL" && statusActual !== solicitudesStatusFilter) {
          return false;
        }
        if (!term) return true;
        const blob = `${item.folio || ""} ${norm.nombre} ${norm.empresa} ${norm.telefono} ${norm.tipo}`.toLowerCase();
        return blob.includes(term);
      });

      if (filtered.length === 0) {
        grid.innerHTML = `
          <div class="empty-state-box">
            <h3>No hay solicitudes web activas</h3>
            <p>Los formularios enviados desde la página principal de Onega Muebles aparecerán aquí en tiempo real.</p>
          </div>
        `;
        return;
      }

      grid.innerHTML = filtered
        .map((item) => {
          const norm = normalizeSolicitudFields(item);
          const folio = item.folio || item.id.slice(0, 8).toUpperCase();
          const estado = item.estado || "Nuevo";
          const waUrl = formatWhatsappUrl(norm.telefono, norm.nombre, folio);

          return `
            <article class="cloud-card">
              <div>
                <div class="cloud-card-top">
                  <div>
                    <span class="folio-tag">${escapeHtml(folio)}</span>
                    <span class="date-tag">${escapeHtml(formatDateDisplay(item))}</span>
                  </div>
                  <select class="status-select" data-solicitud-status-id="${escapeHtml(item.id)}" aria-label="Estado de solicitud">
                    <option value="Nuevo" ${estado === "Nuevo" ? "selected" : ""}>Nuevo</option>
                    <option value="Recibido en Taller" ${estado === "Recibido en Taller" ? "selected" : ""}>Recibido en Taller</option>
                    <option value="En Cotización" ${estado === "En Cotización" ? "selected" : ""}>En Cotización</option>
                    <option value="Cotizado" ${estado === "Cotizado" ? "selected" : ""}>Cotizado</option>
                    <option value="Descartado" ${estado === "Descartado" ? "selected" : ""}>Descartado</option>
                  </select>
                </div>

                <div style="margin-top: 12px;">
                  <h3 class="card-client-title">${escapeHtml(norm.nombre)}</h3>
                  <p class="card-subtitle">${escapeHtml(norm.empresa)} · <strong>${escapeHtml(norm.tipo)}</strong></p>
                </div>
              </div>

              <div class="card-meta-list">
                <div class="meta-item">
                  <span>Teléfono / WhatsApp</span>
                  <strong>${escapeHtml(norm.telefono || "No especificado")}</strong>
                </div>
                <div class="meta-item">
                  <span>Correo Electrónico</span>
                  <strong>${escapeHtml(norm.correo)}</strong>
                </div>
                <div class="meta-item">
                  <span>Capacidad / Piezas</span>
                  <strong>${escapeHtml(norm.capacidad)}</strong>
                </div>
                <div class="meta-item">
                  <span>Planos / Renders</span>
                  <strong>${escapeHtml(norm.planos)}</strong>
                </div>
              </div>

              <div class="furniture-badges">
                ${norm.mobiliarioArr.map((m) => `<span class="furniture-badge">${escapeHtml(m)}</span>`).join("")}
              </div>

              ${
                norm.notas
                  ? `<div class="notes-box"><strong>Notas:</strong> ${escapeHtml(norm.notas)}</div>`
                  : ""
              }

              <div class="card-actions-row">
                <button type="button" class="btn-card-primary" data-pass-to-quote="${escapeHtml(item.id)}">
                  ⚡ Pasar al Cotizador
                </button>
                ${
                  waUrl
                    ? `<a href="${waUrl}" target="_blank" rel="noopener noreferrer" class="btn-whatsapp-card">💬 WhatsApp</a>`
                    : ""
                }
                <button type="button" class="btn-card-archive" data-archive-solicitud="${escapeHtml(item.id)}">
                  📦 Archivar
                </button>
              </div>
            </article>
          `;
        })
        .join("");

      // Eventos de cambio de estado en Firestore
      grid.querySelectorAll("[data-solicitud-status-id]").forEach((sel) => {
        sel.addEventListener("change", async (e) => {
          const docId = e.target.dataset.solicitudStatusId;
          const nuevoEstado = e.target.value;
          try {
            await updateDoc(doc(db, COL_SOLICITUDES, docId), { estado: nuevoEstado });
            showToast(`Estado actualizado a "${nuevoEstado}"`, "success");
          } catch (err) {
            console.error("Error actualizando estado:", err);
            showToast("No se pudo actualizar el estado", "error");
          }
        });
      });

      // Eventos de "Pasar al Cotizador"
      grid.querySelectorAll("[data-pass-to-quote]").forEach((btn) => {
        btn.addEventListener("click", async () => {
          const docId = btn.dataset.passToQuote;
          const item = solicitudesWebList.find((s) => s.id === docId);
          if (!item) return;

          cargarSolicitudEnCotizador(item);

          const st = item.estado || "Nuevo";
          if ((st === "Nuevo" || st === "Recibido en Taller") && db) {
            try {
              await updateDoc(doc(db, COL_SOLICITUDES, item.id), { estado: "En Cotización" });
            } catch (e) {
              console.warn("No se pudo cambiar estado automático:", e);
            }
          }
        });
      });

      // Eventos de "Archivar" Solicitud Web
      grid.querySelectorAll("[data-archive-solicitud]").forEach((btn) => {
        btn.addEventListener("click", async () => {
          const docId = btn.dataset.archiveSolicitud;
          btn.disabled = true;
          try {
            await updateDoc(doc(db, COL_SOLICITUDES, docId), {
              archivada: true,
              archivedAtISO: new Date().toISOString()
            });
            showToast("Solicitud web archivada correctamente", "info");
          } catch (err) {
            console.error("Error archivando solicitud:", err);
            btn.disabled = false;
            showToast("No se pudo archivar la solicitud", "error");
          }
        });
      });
    }

    document.getElementById("searchSolicitudesInput").addEventListener("input", renderSolicitudesWeb);

    document.querySelectorAll("#solicitudesStatusFilters .filter-pill-btn").forEach((btn) => {
      btn.addEventListener("click", () => {
        solicitudesStatusFilter = btn.dataset.statusFilter;
        document.querySelectorAll("#solicitudesStatusFilters .filter-pill-btn").forEach((b) => b.classList.remove("active"));
        btn.classList.add("active");
        renderSolicitudesWeb();
      });
    });

    // ==========================================================================
    // 12. RENDERIZADO & ACCIONES DE "COTIZACIONES ACTIVAS" Y "ARCHIVADAS"
    // ==========================================================================
    function cargarPresupuestoEnGenerador(budget) {
      resetearFormularioSilencioso();
      setEditingMode(budget.id, budget.folio || "#ONG-100", Boolean(budget.archivada));
      linkedSolicitudId = budget.solicitudOrigenId || null;

      document.getElementById("input-filename").value = budget.filename || "";
      document.getElementById("input-folio").value = budget.folio || "#ONG-100";
      document.getElementById("input-cliente").value = budget.cliente || "";
      document.getElementById("input-empresa").value = budget.empresa || "";
      document.getElementById("input-telefono").value = budget.telefono || "";
      document.getElementById("input-descuento").value = budget.descuento > 0 ? budget.descuento : "";
      document.getElementById("input-garantia").value = budget.garantia || "";
      document.getElementById("input-instalacion").value = budget.instalacion || "";

      const partidas = Array.isArray(budget.partidas) && budget.partidas.length > 0 ? budget.partidas : [];
      const count = Math.min(6, Math.max(1, partidas.length));
      document.getElementById("num-proyectos").value = String(count);
      cambiarCantidadProyectos();

      partidas.slice(0, 6).forEach((p, idx) => {
        const i = idx + 1;
        document.getElementById(`input-cant-${i}`).value = p.cantidad || 1;
        document.getElementById(`input-precio-${i}`).value = p.precioUnitario || "";
        document.getElementById(`input-desc-${i}`).value = p.descripcion || "";

        if (p.fotoBase64) {
          aplicarImagenEnUI("foto", i, p.fotoBase64, Boolean(p.esPanoramica));
        }
        if (p.ejemploBase64) {
          aplicarImagenEnUI("ejemplo", i, p.ejemploBase64, false);
        }
      });

      if (budget.renderGlobalBase64) {
        aplicarImagenEnUI("render", null, budget.renderGlobalBase64, false);
      }

      actualizarVista();
      switchCloudView("generador");
      window.scrollTo({ top: 0, behavior: "smooth" });
      showToast(`Cotización ${budget.folio || ""} cargada en el generador`, "info");
    }

    function renderPresupuestosActivos() {
      const grid = document.getElementById("activasGrid");
      const term = document.getElementById("searchActivasInput").value.trim().toLowerCase();
      const activasAll = presupuestosList.filter((p) => p.archivada !== true);

      const sumaTotal = activasAll.reduce((acc, item) => acc + (Number(item.totalFinal) || 0), 0);
      const promedio = activasAll.length > 0 ? sumaTotal / activasAll.length : 0;

      document.getElementById("kpiActivasCount").textContent = activasAll.length;
      document.getElementById("kpiActivasTotal").textContent = formatearMoneda(sumaTotal);
      document.getElementById("kpiActivasAvg").textContent = formatearMoneda(promedio);

      const filtered = activasAll.filter((b) => {
        const st = b.estadoPresupuesto || "Enviada";
        if (activasStatusFilter !== "ALL" && st !== activasStatusFilter) {
          return false;
        }
        if (!term) return true;
        const blob = `${b.folio || ""} ${b.cliente || ""} ${b.empresa || ""}`.toLowerCase();
        return blob.includes(term);
      });

      if (filtered.length === 0) {
        grid.innerHTML = `
          <div class="empty-state-box">
            <h3>Sin cotizaciones activas</h3>
            <p>Usa el botón <strong>"Guardar en Cotizaciones Activas"</strong> dentro del Generador para almacenar tus presupuestos aquí.</p>
          </div>
        `;
        return;
      }

      grid.innerHTML = filtered
        .map((budget) => {
          const partidas = Array.isArray(budget.partidas) ? budget.partidas : [];
          const estadoPresupuesto = budget.estadoPresupuesto || "Enviada";
          const resumenPartidas = partidas
            .map((p) => `${p.cantidad || 1}x ${(p.descripcion || "Partida").slice(0, 48)}`)
            .join(" · ");

          return `
            <article class="cloud-card">
              <div>
                <div class="cloud-card-top">
                  <div>
                    <span class="folio-tag">${escapeHtml(budget.folio || "#ONG-100")}</span>
                    <span class="date-tag">${escapeHtml(formatDateDisplay(budget))}</span>
                  </div>
                  <select class="status-select" data-budget-status-id="${escapeHtml(budget.id)}" aria-label="Estado de cotización">
                    <option value="Enviada" ${estadoPresupuesto === "Enviada" ? "selected" : ""}>Enviada</option>
                    <option value="En Revisión" ${estadoPresupuesto === "En Revisión" ? "selected" : ""}>En Revisión</option>
                    <option value="Aprobada" ${estadoPresupuesto === "Aprobada" ? "selected" : ""}>Aprobada</option>
                    <option value="En Fabricación" ${estadoPresupuesto === "En Fabricación" ? "selected" : ""}>En Fabricación</option>
                  </select>
                </div>

                <div style="margin-top: 12px;">
                  <h3 class="card-client-title">${escapeHtml(budget.cliente || "Cliente")}</h3>
                  <p class="card-subtitle">${escapeHtml(budget.empresa || "Proyecto a la medida")} ${budget.telefono ? `· ${escapeHtml(budget.telefono)}` : ""}</p>
                </div>
              </div>

              ${
                resumenPartidas
                  ? `<div class="notes-box">${escapeHtml(resumenPartidas)}</div>`
                  : ""
              }

              <div class="budget-amount-bar">
                <span>Total Final (${partidas.length} partida/s)</span>
                <strong>${formatearMoneda(budget.totalFinal || 0)}</strong>
              </div>

              <div class="card-actions-row">
                <button type="button" class="btn-card-primary" data-edit-budget="${escapeHtml(budget.id)}">
                  ✏️ Cargar en Generador
                </button>
                <button type="button" class="btn-card-archive" data-archive-budget="${escapeHtml(budget.id)}">
                  📦 Archivar
                </button>
                <button type="button" class="btn-card-danger" data-delete-budget="${escapeHtml(budget.id)}" data-delete-folio="${escapeHtml(budget.folio || "")}">
                  🗑️ Eliminar
                </button>
              </div>
            </article>
          `;
        })
        .join("");

      // Selector de estado rápido en Cotizaciones Activas
      grid.querySelectorAll("[data-budget-status-id]").forEach((sel) => {
        sel.addEventListener("change", async (e) => {
          const id = e.target.dataset.budgetStatusId;
          const nuevoEstado = e.target.value;
          try {
            await updateDoc(doc(db, COL_PRESUPUESTOS, id), {
              estadoPresupuesto: nuevoEstado,
              updatedAtISO: new Date().toISOString()
            });
            showToast(`Cotización marcada como "${nuevoEstado}"`, "success");
          } catch (err) {
            console.error(err);
            showToast("Error al actualizar estado", "error");
          }
        });
      });

      // Cargar en Generador
      grid.querySelectorAll("[data-edit-budget]").forEach((btn) => {
        btn.addEventListener("click", () => {
          const item = presupuestosList.find((b) => b.id === btn.dataset.editBudget);
          if (item) cargarPresupuestoEnGenerador(item);
        });
      });

      // Archivar Cotización Activa
      grid.querySelectorAll("[data-archive-budget]").forEach((btn) => {
        btn.addEventListener("click", async () => {
          const id = btn.dataset.archiveBudget;
          btn.disabled = true;
          try {
            await updateDoc(doc(db, COL_PRESUPUESTOS, id), {
              archivada: true,
              archivedAtISO: new Date().toISOString(),
              updatedAtISO: new Date().toISOString()
            });
            showToast("Cotización movida a Archivadas", "info");
          } catch (err) {
            console.error(err);
            btn.disabled = false;
            showToast("Error al archivar la cotización", "error");
          }
        });
      });

      // Eliminar Cotización (confirmación inline de dos clics)
      grid.querySelectorAll("[data-delete-budget]").forEach((btn) => {
        const id = btn.dataset.deleteBudget;
        const folio = btn.dataset.deleteFolio || "";
        bindTwoClickDelete(btn, async () => {
          try {
            await deleteDoc(doc(db, COL_PRESUPUESTOS, id));
            if (currentEditingBudgetId === id) {
              setEditingMode(null, "", false);
            }
            showToast(`Cotización ${folio} eliminada`, "info");
          } catch (err) {
            console.error(err);
            showToast("No se pudo eliminar la cotización", "error");
          }
        });
      });
    }

    document.getElementById("searchActivasInput").addEventListener("input", renderPresupuestosActivos);

    document.querySelectorAll("#activasStatusFilters .filter-pill-btn").forEach((btn) => {
      btn.addEventListener("click", () => {
        activasStatusFilter = btn.dataset.activeStatus;
        document.querySelectorAll("#activasStatusFilters .filter-pill-btn").forEach((b) => b.classList.remove("active"));
        btn.classList.add("active");
        renderPresupuestosActivos();
      });
    });

    // ==========================================================================
    // 13. VISTA UNIFICADA "ARCHIVADAS" (COTIZACIONES + SOLICITUDES WEB)
    // ==========================================================================
    function renderRegistrosArchivados() {
      const grid = document.getElementById("archivadasGrid");
      const term = document.getElementById("searchArchivadasInput").value.trim().toLowerCase();

      const presupuestosArch = presupuestosList
        .filter((p) => p.archivada === true)
        .map((p) => ({ kind: "COTIZACION", data: p, sortMs: getTimestampMs(p) }));

      const solicitudesArch = solicitudesWebList
        .filter((s) => s.archivada === true)
        .map((s) => ({ kind: "SOLICITUD", data: s, sortMs: getTimestampMs(s) }));

      const totalUnificado = presupuestosArch.length + solicitudesArch.length;
      const sumaCotizacionesArch = presupuestosArch.reduce(
        (acc, entry) => acc + (Number(entry.data.totalFinal) || 0),
        0
      );

      document.getElementById("kpiArchivadasCount").textContent = totalUnificado;
      document.getElementById("kpiArchivadasBudgetsCount").textContent = presupuestosArch.length;
      document.getElementById("kpiArchivadasTotal").textContent = formatearMoneda(sumaCotizacionesArch);

      let combined = [];
      if (archivadasTypeFilter === "ALL") {
        combined = [...presupuestosArch, ...solicitudesArch];
      } else if (archivadasTypeFilter === "COTIZACIONES") {
        combined = [...presupuestosArch];
      } else if (archivadasTypeFilter === "SOLICITUDES") {
        combined = [...solicitudesArch];
      }

      combined.sort((a, b) => b.sortMs - a.sortMs);

      const filtered = combined.filter((entry) => {
        if (!term) return true;
        if (entry.kind === "COTIZACION") {
          const b = entry.data;
          return `${b.folio || ""} ${b.cliente || ""} ${b.empresa || ""}`.toLowerCase().includes(term);
        } else {
          const norm = normalizeSolicitudFields(entry.data);
          return `${entry.data.folio || ""} ${norm.nombre} ${norm.empresa} ${norm.telefono}`.toLowerCase().includes(term);
        }
      });

      if (filtered.length === 0) {
        grid.innerHTML = `
          <div class="empty-state-box">
            <h3>No hay registros archivados</h3>
            <p>Usa el botón <strong>"📦 Archivar"</strong> en Cotizaciones Activas o en Solicitudes Web para mover registros a este historial.</p>
          </div>
        `;
        return;
      }

      grid.innerHTML = filtered
        .map((entry) => {
          if (entry.kind === "COTIZACION") {
            const budget = entry.data;
            const partidas = Array.isArray(budget.partidas) ? budget.partidas : [];
            const fechaArch = formatDateDisplay(budget, "archivedAtISO");
            const resumenPartidas = partidas
              .map((p) => `${p.cantidad || 1}x ${(p.descripcion || "Partida").slice(0, 48)}`)
              .join(" · ");

            return `
              <article class="cloud-card">
                <div>
                  <div class="cloud-card-top">
                    <div>
                      <span class="folio-tag">${escapeHtml(budget.folio || "#ONG-100")}</span>
                      <span class="date-tag">Creada: ${escapeHtml(formatDateDisplay(budget))}</span>
                    </div>
                    <span class="archive-type-badge tipo-cotizacion">Cotización Archivada</span>
                  </div>

                  <div style="margin-top: 10px;">
                    <span class="archived-date-pill">📦 Archivada: ${escapeHtml(fechaArch)}</span>
                  </div>

                  <div style="margin-top: 12px;">
                    <h3 class="card-client-title">${escapeHtml(budget.cliente || "Cliente")}</h3>
                    <p class="card-subtitle">${escapeHtml(budget.empresa || "Proyecto a la medida")} ${budget.telefono ? `· ${escapeHtml(budget.telefono)}` : ""}</p>
                  </div>
                </div>

                ${resumenPartidas ? `<div class="notes-box">${escapeHtml(resumenPartidas)}</div>` : ""}

                <div class="budget-amount-bar">
                  <span>Total Final (${partidas.length} partida/s)</span>
                  <strong>${formatearMoneda(budget.totalFinal || 0)}</strong>
                </div>

                <div class="card-actions-row">
                  <button type="button" class="btn-card-primary" data-restore-item-kind="COTIZACION" data-restore-item-id="${escapeHtml(budget.id)}">
                    ♻️ Restaurar a Activas
                  </button>
                  <button type="button" class="btn-card-secondary" data-edit-archived-budget="${escapeHtml(budget.id)}">
                    ✏️ Cargar en Generador
                  </button>
                  <button type="button" class="btn-card-danger" data-delete-archived-kind="COTIZACION" data-delete-archived-id="${escapeHtml(budget.id)}" data-delete-archived-folio="${escapeHtml(budget.folio || "")}">
                    🗑️ Eliminar
                  </button>
                </div>
              </article>
            `;
          } else {
            const item = entry.data;
            const norm = normalizeSolicitudFields(item);
            const folio = item.folio || item.id.slice(0, 8).toUpperCase();
            const fechaArch = formatDateDisplay(item, "archivedAtISO");

            return `
              <article class="cloud-card">
                <div>
                  <div class="cloud-card-top">
                    <div>
                      <span class="folio-tag">${escapeHtml(folio)}</span>
                      <span class="date-tag">Recibida: ${escapeHtml(formatDateDisplay(item))}</span>
                    </div>
                    <span class="archive-type-badge tipo-solicitud">Solicitud Web Archivada</span>
                  </div>

                  <div style="margin-top: 10px;">
                    <span class="archived-date-pill">📦 Archivada: ${escapeHtml(fechaArch)}</span>
                  </div>

                  <div style="margin-top: 12px;">
                    <h3 class="card-client-title">${escapeHtml(norm.nombre)}</h3>
                    <p class="card-subtitle">${escapeHtml(norm.empresa)} · <strong>${escapeHtml(norm.tipo)}</strong></p>
                  </div>
                </div>

                <div class="card-meta-list">
                  <div class="meta-item">
                    <span>Teléfono / WhatsApp</span>
                    <strong>${escapeHtml(norm.telefono || "No especificado")}</strong>
                  </div>
                  <div class="meta-item">
                    <span>Capacidad / Piezas</span>
                    <strong>${escapeHtml(norm.capacidad)}</strong>
                  </div>
                </div>

                <div class="furniture-badges">
                  ${norm.mobiliarioArr.map((m) => `<span class="furniture-badge">${escapeHtml(m)}</span>`).join("")}
                </div>

                <div class="card-actions-row">
                  <button type="button" class="btn-card-primary" data-restore-item-kind="SOLICITUD" data-restore-item-id="${escapeHtml(item.id)}">
                    ♻️ Restaurar a Activas
                  </button>
                  <button type="button" class="btn-card-secondary" data-quote-archived-solicitud="${escapeHtml(item.id)}">
                    ⚡ Pasar al Cotizador
                  </button>
                  <button type="button" class="btn-card-danger" data-delete-archived-kind="SOLICITUD" data-delete-archived-id="${escapeHtml(item.id)}" data-delete-archived-folio="${escapeHtml(folio)}">
                    🗑️ Eliminar
                  </button>
                </div>
              </article>
            `;
          }
        })
        .join("");

      // Restaurar a Activas (Cotizaciones o Solicitudes Web)
      grid.querySelectorAll("[data-restore-item-id]").forEach((btn) => {
        btn.addEventListener("click", async () => {
          const id = btn.dataset.restoreItemId;
          const kind = btn.dataset.restoreItemKind;
          const targetCol = kind === "COTIZACION" ? COL_PRESUPUESTOS : COL_SOLICITUDES;
          btn.disabled = true;

          try {
            await updateDoc(doc(db, targetCol, id), {
              archivada: false,
              updatedAtISO: new Date().toISOString()
            });
            showToast(
              kind === "COTIZACION"
                ? "Cotización restaurada a Cotizaciones Activas"
                : "Solicitud web restaurada a Solicitudes Activas",
              "success"
            );
          } catch (err) {
            console.error(err);
            btn.disabled = false;
            showToast("Error al restaurar el registro", "error");
          }
        });
      });

      // Cargar cotización archivada en Generador
      grid.querySelectorAll("[data-edit-archived-budget]").forEach((btn) => {
        btn.addEventListener("click", () => {
          const item = presupuestosList.find((b) => b.id === btn.dataset.editArchivedBudget);
          if (item) cargarPresupuestoEnGenerador(item);
        });
      });

      // Pasar solicitud archivada al Cotizador
      grid.querySelectorAll("[data-quote-archived-solicitud]").forEach((btn) => {
        btn.addEventListener("click", () => {
          const item = solicitudesWebList.find((s) => s.id === btn.dataset.quoteArchivedSolicitud);
          if (item) cargarSolicitudEnCotizador(item);
        });
      });

      // Eliminar registro archivado (confirmación inline en dos clics)
      grid.querySelectorAll("[data-delete-archived-id]").forEach((btn) => {
        const id = btn.dataset.deleteArchivedId;
        const kind = btn.dataset.deleteArchivedKind;
        const folio = btn.dataset.deleteArchivedFolio || "";
        const targetCol = kind === "COTIZACION" ? COL_PRESUPUESTOS : COL_SOLICITUDES;

        bindTwoClickDelete(btn, async () => {
          try {
            await deleteDoc(doc(db, targetCol, id));
            if (kind === "COTIZACION" && currentEditingBudgetId === id) {
              setEditingMode(null, "", false);
            }
            showToast(`Registro ${folio} eliminado permanentemente`, "info");
          } catch (err) {
            console.error(err);
            showToast("No se pudo eliminar el registro", "error");
          }
        });
      });
    }

    document.getElementById("searchArchivadasInput").addEventListener("input", renderRegistrosArchivados);

    document.querySelectorAll("#archivadasTypeFilters .filter-pill-btn").forEach((btn) => {
      btn.addEventListener("click", () => {
        archivadasTypeFilter = btn.dataset.archiveFilter;
        document.querySelectorAll("#archivadasTypeFilters .filter-pill-btn").forEach((b) => b.classList.remove("active"));
        btn.classList.add("active");
        renderRegistrosArchivados();
      });
    });

    // ==========================================================================
    // 14. INICIALIZACIÓN AL CARGAR EL DOCUMENTO
    // ==========================================================================
    document.addEventListener("DOMContentLoaded", () => {
      const fecha = new Date();
      document.getElementById("out-fecha").innerText = fecha.toLocaleDateString("es-MX", {
        day: "2-digit",
        month: "2-digit",
        year: "numeric"
      });

      // Listeners de inputs generales
      ["input-folio", "input-cliente", "input-empresa", "input-telefono", "input-descuento", "input-instalacion"].forEach((id) => {
        document.getElementById(id).addEventListener("input", actualizarVista);
      });
      document.getElementById("input-garantia").addEventListener("change", actualizarVista);
      document.getElementById("num-proyectos").addEventListener("change", cambiarCantidadProyectos);

      document.getElementById("input-render").addEventListener("change", (e) => {
        cargarImagenOptimizada(e, "render", null);
      });
      document.getElementById("btn-clear-render").addEventListener("click", () => {
        borrarImagen("render", null);
      });

      generarNuevoFolio();
      construirBloquesProyectos();
      cambiarCantidadProyectos();
      adjustPreviewScale();
      iniciarListenersTiempoReal();
    });
  </script>
</body>
</html>
