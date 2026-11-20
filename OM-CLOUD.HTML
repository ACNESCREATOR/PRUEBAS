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
      --bg-dark: #070708;
      --panel-bg: #111214;
      --card-bg: #16181b;
      --input-bg: #0b0c0e;
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

    body {
      font-family: 'Roboto', sans-serif;
      background-color: var(--bg-dark);
      color: var(--text-main);
      margin: 0;
      padding: 0;
      overflow-x: hidden;
      width: 100%;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }

    /* ==========================================================================
       2. BARRA SUPERIOR DE NAVEGACIÓN & PESTAÑAS CLOUD
       ========================================================================== */
    .cloud-navbar {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(11, 12, 14, 0.94);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border-orange);
      padding: 12px 20px;
    }

    .cloud-navbar-inner {
      max-width: 1420px;
      margin: 0 auto;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 14px;
    }

    .brand-cluster {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .brand-icon-box {
      width: 40px;
      height: 40px;
      border-radius: 10px;
      background: linear-gradient(135deg, #1f1610 0%, #121212 100%);
      border: 1px solid var(--border-orange);
      display: flex;
      align-items: center;
      justify-content: center;
      flex-shrink: 0;
    }

    .brand-titles h1 {
      font-family: 'Montserrat', sans-serif;
      font-size: 1.15rem;
      font-weight: 800;
      margin: 0;
      letter-spacing: 1px;
      color: #ffffff;
      display: flex;
      align-items: center;
      gap: 8px;
      flex-wrap: wrap;
    }

    .brand-titles h1 span.accent {
      color: var(--accent-orange);
    }

    .sync-pill {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.65rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.8px;
      padding: 3px 9px;
      border-radius: 999px;
      background: rgba(16, 185, 129, 0.14);
      color: #34d399;
      border: 1px solid rgba(16, 185, 129, 0.35);
    }

    .sync-pill.offline {
      background: rgba(245, 158, 11, 0.14);
      color: #fbbf24;
      border-color: rgba(245, 158, 11, 0.35);
    }

    .sync-dot {
      width: 7px;
      height: 7px;
      border-radius: 50%;
      background-color: #10b981;
      box-shadow: 0 0 8px #10b981;
      animation: pulseDot 2s infinite;
    }

    .sync-pill.offline .sync-dot {
      background-color: #f59e0b;
      box-shadow: 0 0 8px #f59e0b;
    }

    @keyframes pulseDot {
      0%, 100% { opacity: 1; transform: scale(1); }
      50% { opacity: 0.45; transform: scale(0.85); }
    }

    /* Pestañas de navegación */
    .cloud-tabs {
      display: flex;
      align-items: center;
      gap: 8px;
      overflow-x: auto;
      max-width: 100%;
      padding-bottom: 2px;
    }

    .cloud-tab-btn {
      appearance: none;
      border: 1px solid var(--border-subtle);
      background: var(--panel-bg);
      color: #d1d5db;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.76rem;
      font-weight: 700;
      padding: 9px 14px;
      border-radius: 10px;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      white-space: nowrap;
      transition: all 0.2s ease;
    }

    .cloud-tab-btn:hover {
      border-color: var(--accent-orange);
      color: #ffffff;
    }

    .cloud-tab-btn.active {
      background: var(--accent-orange);
      border-color: var(--accent-orange);
      color: #000000;
      box-shadow: 0 4px 16px rgba(255, 102, 0, 0.35);
    }

    .tab-counter {
      font-size: 0.7rem;
      font-weight: 800;
      padding: 2px 7px;
      border-radius: 999px;
      background: rgba(255, 255, 255, 0.12);
      color: #ffffff;
    }

    .cloud-tab-btn.active .tab-counter {
      background: rgba(0, 0, 0, 0.22);
      color: #000000;
    }

    /* Contenedor Principal de Vistas */
    .main-workspace {
      max-width: 1420px;
      width: 100%;
      margin: 0 auto;
      padding: 22px 18px 40px;
      flex: 1;
    }

    .view-section {
      display: none;
      animation: fadeInView 0.22s ease;
    }

    .view-section.active {
      display: block;
    }

    @keyframes fadeInView {
      from { opacity: 0; transform: translateY(6px); }
      to { opacity: 1; transform: translateY(0); }
    }

    /* ==========================================================================
       3. VISTA 1: GENERADOR DE COTIZACIONES (ESTRUCTURA 2 COLUMNAS)
       ========================================================================== */
    .layout-container {
      display: grid;
      grid-template-columns: 390px 1fr;
      gap: 28px;
      align-items: start;
    }

    .panel-formulario {
      background-color: var(--panel-bg);
      padding: 20px;
      border-radius: 14px;
      border: 1px solid var(--border-orange);
      box-shadow: 0 12px 32px rgba(0, 0, 0, 0.55);
    }

    .editing-banner {
      display: none;
      background: rgba(255, 102, 0, 0.14);
      border: 1px solid var(--accent-orange);
      border-radius: 10px;
      padding: 10px 12px;
      margin-bottom: 14px;
      font-size: 0.78rem;
      color: #ffd8bd;
      align-items: center;
      justify-content: space-between;
      gap: 8px;
    }

    .editing-banner.visible {
      display: flex;
    }

    .editing-banner button {
      background: transparent;
      border: 1px solid var(--accent-orange);
      color: var(--accent-orange);
      border-radius: 6px;
      padding: 4px 8px;
      font-size: 0.68rem;
      font-family: 'Montserrat', sans-serif;
      font-weight: 700;
      cursor: pointer;
    }

    .section-title {
      color: var(--accent-orange);
      font-family: 'Montserrat', sans-serif;
      font-size: 0.85rem;
      font-weight: 800;
      margin-top: 22px;
      margin-bottom: 14px;
      border-bottom: 1px solid #2a2d32;
      padding-bottom: 6px;
      text-transform: uppercase;
      letter-spacing: 0.6px;
    }

    .form-group {
      margin-bottom: 14px;
    }

    .form-group label {
      display: block;
      margin-bottom: 6px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.72rem;
      color: #cbd5e1;
      text-transform: uppercase;
      font-weight: 700;
    }

    .form-control {
      width: 100%;
      padding: 10px 12px;
      background-color: var(--input-bg);
      border: 1px solid #2f333a;
      color: #ffffff;
      border-radius: 8px;
      font-family: 'Roboto', sans-serif;
      font-size: 0.9rem;
      transition: all 0.25s ease;
    }

    .form-control:focus {
      outline: none;
      border-color: var(--accent-orange);
      box-shadow: 0 0 0 3px rgba(255, 102, 0, 0.18);
    }

    textarea.form-control {
      resize: vertical;
      min-height: 70px;
    }

    .proyecto-form-block {
      background-color: #181a1e;
      padding: 15px;
      border-radius: 10px;
      margin-bottom: 14px;
      border-left: 3px solid var(--accent-orange);
      border-top: 1px solid #262930;
      border-right: 1px solid #262930;
      border-bottom: 1px solid #262930;
      display: none;
    }

    .proyecto-form-block h4 {
      margin: 0 0 14px 0;
      color: var(--accent-orange);
      font-family: 'Montserrat', sans-serif;
      font-size: 0.82rem;
      text-transform: uppercase;
    }

    .label-with-btn {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 6px;
    }

    .label-with-btn label {
      margin-bottom: 0;
    }

    .btn-clear-img {
      color: #ff4d4d;
      font-size: 0.65rem;
      cursor: pointer;
      font-family: 'Montserrat', sans-serif;
      font-weight: 700;
      background: #1f1414;
      padding: 3px 8px;
      border-radius: 5px;
      border: 1px solid rgba(255, 77, 77, 0.5);
      display: none;
      transition: 0.2s;
    }

    .btn-clear-img:hover {
      background: #ef4444;
      color: #ffffff;
    }

    .actions-stack {
      display: flex;
      flex-direction: column;
      gap: 10px;
      margin-top: 20px;
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

    .btn-cloud-save:hover {
      background: rgba(255, 102, 0, 0.16);
      box-shadow: 0 0 18px rgba(255, 102, 0, 0.35);
      transform: translateY(-1px);
    }

    .btn-cloud-save:disabled {
      opacity: 0.6;
      cursor: not-allowed;
      transform: none;
    }

    .btn-generar {
      width: 100%;
      background-color: var(--accent-orange);
      color: #000000;
      border: none;
      padding: 14px;
      border-radius: 12px;
      font-family: 'Montserrat', sans-serif;
      font-weight: 800;
      font-size: 0.9rem;
      cursor: pointer;
      transition: all 0.25s ease;
      text-transform: uppercase;
    }

    .btn-generar:hover {
      background-color: #ffffff;
      color: #000000;
      box-shadow: 0 0 22px rgba(255, 102, 0, 0.55);
      transform: translateY(-1px);
    }

    .btn-limpiar {
      width: 100%;
      background-color: #1c1d21;
      color: #f87171;
      border: 1px solid rgba(248, 113, 113, 0.45);
      padding: 10px;
      border-radius: 10px;
      font-family: 'Montserrat', sans-serif;
      font-weight: 700;
      font-size: 0.74rem;
      cursor: pointer;
      transition: 0.2s;
      text-transform: uppercase;
      margin-bottom: 10px;
    }

    .btn-limpiar:hover {
      background-color: #ef4444;
      color: #ffffff;
      border-color: #ef4444;
    }

    /* ==========================================================================
       4. VISTA PREVIA PDF (800PX FIJOS CON ESCALADO RESPONSIVO EN MÓVIL)
       ========================================================================== */
    .panel-vista-previa {
      display: flex;
      justify-content: center;
      align-items: flex-start;
      background-color: #16181c;
      padding: 22px;
      border-radius: 14px;
      border: 1px dashed #32363f;
      width: 100%;
      overflow: hidden;
    }

    .preview-scale-wrapper {
      width: 800px;
      transform-origin: top center;
    }

    #documento-imagen {
      width: 800px !important;
      min-width: 800px !important;
      max-width: 800px !important;
      background-color: #ffffff !important;
      color: #111111;
      position: relative;
      box-shadow: 0 12px 40px rgba(0, 0, 0, 0.65);
      display: flex;
      flex-direction: column;
      padding: 0;
      margin: 0 auto;
    }

    /* Cabecera elegante corporativa ONEGA MUEBLES */
    .doc-header {
      background: #0b0b0b;
      color: #ffffff;
      padding: 28px 40px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom: 5px solid var(--accent-orange);
    }

    .doc-header-left {
      display: flex;
      align-items: center;
      gap: 18px;
    }

    .doc-logo-svg {
      width: 52px;
      height: 52px;
      flex-shrink: 0;
    }

    .doc-empresa-info h3 {
      margin: 0;
      font-family: 'Montserrat', sans-serif;
      font-size: 20px;
      font-weight: 800;
      color: #ffffff;
      letter-spacing: 1.5px;
    }

    .doc-empresa-info p {
      margin: 4px 0 0 0;
      font-size: 11px;
      color: #b5b5b5;
      font-family: 'Roboto', sans-serif;
      letter-spacing: 0.4px;
    }

    .doc-header-right {
      text-align: right;
    }

    .doc-header-right h2 {
      margin: 0;
      font-family: 'Montserrat', sans-serif;
      font-size: 22px;
      font-weight: 800;
      color: var(--accent-orange);
      letter-spacing: 2px;
    }

    .doc-header-right p {
      margin: 4px 0 0 0;
      font-size: 13px;
      color: #e5e5e5;
      font-weight: 600;
    }

    .doc-body {
      padding: 34px 40px;
      flex-grow: 1;
      display: flex;
      flex-direction: column;
    }

    .info-grid-top {
      display: grid;
      grid-template-columns: 1.3fr 0.7fr;
      gap: 20px;
      margin-bottom: 28px;
    }

    .info-card {
      background-color: #f8f9fa;
      border: 1px solid #e9ecef;
      border-left: 4px solid var(--accent-orange);
      padding: 14px 18px;
      border-radius: 0 8px 8px 0;
    }

    .info-card label {
      display: block;
      font-size: 10px;
      font-family: 'Montserrat', sans-serif;
      text-transform: uppercase;
      color: #666666;
      font-weight: 700;
      margin-bottom: 4px;
    }

    .info-card span {
      display: block;
      font-size: 14px;
      font-weight: 700;
      color: #111111;
    }

    .info-card small {
      display: block;
      font-size: 11.5px;
      color: #555555;
      margin-top: 3px;
    }

    /* Bloques de partidas / muebles */
    .content-grid {
      background: #fafafa;
      border: 1px solid #eaeaea;
      border-radius: 10px;
      padding: 20px;
      display: flex;
      gap: 24px;
      margin-bottom: 22px;
    }

    .content-grid.panoramico {
      flex-direction: column;
    }

    .imagenes-col {
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 12px;
    }

    .content-grid.panoramico .imagenes-col {
      flex: none;
      width: 100%;
    }

    .img-container {
      width: 100%;
      background-color: #ffffff;
      border-radius: 8px;
      border: 1px dashed #cccccc;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      padding: 6px;
      overflow: hidden;
    }

    .ref-container {
      min-height: 215px;
    }

    .ej-container {
      min-height: 125px;
      background-color: #f4f4f4;
    }

    .badge-ejemplo {
      position: absolute;
      top: 8px;
      left: 50%;
      transform: translateX(-50%);
      font-size: 9px;
      font-weight: 800;
      color: var(--accent-orange);
      font-family: 'Montserrat', sans-serif;
      background: rgba(255, 255, 255, 0.96);
      padding: 3px 8px;
      border-radius: 4px;
      z-index: 5;
      border: 1px solid rgba(255, 102, 0, 0.25);
      white-space: nowrap;
    }

    .img-container img {
      max-width: 100%;
      max-height: 320px;
      width: auto;
      height: auto;
      object-fit: contain !important;
      display: none;
    }

    .detalles-box {
      flex: 1.3;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .content-grid.panoramico .detalles-box {
      flex: none;
      width: 100%;
    }

    .detalles-box h3 {
      font-family: 'Montserrat', sans-serif;
      color: #111111;
      margin: 0 0 8px 0;
      border-bottom: 2px solid var(--accent-orange);
      padding-bottom: 5px;
      font-size: 15px;
    }

    .detalles-box p {
      font-size: 13px;
      line-height: 1.55;
      color: #333333;
      white-space: pre-wrap;
      margin: 0 0 15px 0;
    }

    .subtotal-proyecto-box {
      background-color: #ffffff;
      padding: 10px 15px;
      border-radius: 6px;
      display: flex;
      justify-content: space-between;
      font-family: 'Montserrat', sans-serif;
      font-size: 12.5px;
      color: #111111;
      border: 1px solid #dddddd;
    }

    /* Resumen final y totales */
    .resumen-final {
      display: flex;
      gap: 24px;
      align-items: stretch;
      margin-top: 12px;
      margin-bottom: 20px;
    }

    .condiciones-box {
      flex: 1.4;
      background-color: #f8f9fa;
      border: 1px solid #e9ecef;
      border-left: 4px solid var(--accent-orange);
      padding: 15px 20px;
      border-radius: 0 8px 8px 0;
      display: none;
      flex-direction: column;
      justify-content: center;
    }

    .condiciones-box h5 {
      margin: 0 0 5px 0;
      color: #111111;
      font-family: 'Montserrat', sans-serif;
      font-size: 12.5px;
      text-transform: uppercase;
    }

    .condiciones-box p {
      margin: 0 0 10px 0;
      font-size: 12px;
      color: #444444;
      line-height: 1.45;
      white-space: pre-wrap;
    }

    .condiciones-box p:last-child {
      margin-bottom: 0;
    }

    .precio-box {
      flex: 1;
      background: linear-gradient(135deg, #1b1b1b 0%, #050505 100%);
      color: #ffffff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 6px 18px rgba(0, 0, 0, 0.16);
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .precio-box h4 {
      margin: 0 0 12px 0;
      font-family: 'Montserrat', sans-serif;
      color: var(--accent-orange);
      font-size: 12px;
      letter-spacing: 1px;
      text-align: center;
      text-transform: uppercase;
    }

    .precio-fila {
      display: flex;
      justify-content: space-between;
      font-size: 13px;
      margin-bottom: 6px;
      font-family: 'Roboto', sans-serif;
      color: #d1d5db;
    }

    #row-descuento,
    #row-subtotal-desc {
      color: #ffaa80;
      font-weight: 500;
    }

    .precio-fila-total {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 8px;
      padding-top: 10px;
      border-top: 1px solid rgba(255, 255, 255, 0.22);
      font-family: 'Montserrat', sans-serif;
      color: #ffffff;
    }

    .precio-fila-total .monto {
      font-size: 24px;
      font-weight: 800;
      color: var(--accent-orange);
    }

    .doc-footer-container {
      margin-top: 26px;
      padding-top: 15px;
      border-top: 2px solid #eaeaea;
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-size: 11px;
      color: #666666;
    }

    .doc-footer-container strong {
      color: #111111;
      font-family: 'Montserrat', sans-serif;
    }

    .firma-generator {
      font-family: 'Montserrat', sans-serif;
      font-size: 9.5px;
      color: #888888;
      letter-spacing: 1.6px;
      text-transform: uppercase;
    }

    .firma-generator span {
      color: var(--accent-orange);
      font-weight: 800;
    }

    /* ==========================================================================
       5. VISTAS CLOUD: SOLICITUDES WEB, ACTIVAS Y ARCHIVADAS
       ========================================================================== */
    .section-header-bar {
      display: flex;
      flex-wrap: wrap;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 20px;
      padding-bottom: 14px;
      border-bottom: 1px solid var(--border-subtle);
    }

    .section-header-bar h2 {
      font-family: 'Montserrat', sans-serif;
      font-size: 1.35rem;
      font-weight: 800;
      margin: 0;
      color: #ffffff;
    }

    .section-header-bar h2 span {
      color: var(--accent-orange);
    }

    .section-header-bar p {
      margin: 4px 0 0 0;
      font-size: 0.85rem;
      color: var(--text-muted);
    }

    /* KPIs Resumen para Activas y Archivadas */
    .kpi-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 16px;
      margin-bottom: 22px;
    }

    .kpi-card {
      background: var(--panel-bg);
      border: 1px solid var(--border-subtle);
      border-left: 4px solid var(--accent-orange);
      border-radius: 12px;
      padding: 16px 20px;
    }

    .kpi-card .kpi-label {
      font-family: 'Montserrat', sans-serif;
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      color: var(--text-muted);
      letter-spacing: 0.8px;
    }

    .kpi-card .kpi-value {
      font-family: 'Montserrat', sans-serif;
      font-size: 1.55rem;
      font-weight: 800;
      color: #ffffff;
      margin-top: 6px;
    }

    .kpi-card .kpi-value.accent {
      color: var(--accent-orange);
    }

    /* Barra de búsqueda y filtros */
    .toolbar-row {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      margin-bottom: 20px;
    }

    .search-box {
      position: relative;
      flex: 1;
      min-width: 250px;
      max-width: 440px;
    }

    .search-box input {
      width: 100%;
      padding: 10px 14px 10px 36px;
      border-radius: 10px;
      border: 1px solid var(--border-subtle);
      background: var(--panel-bg);
      color: #ffffff;
      font-size: 0.88rem;
    }

    .search-box input:focus {
      outline: none;
      border-color: var(--accent-orange);
    }

    .search-box svg {
      position: absolute;
      left: 11px;
      top: 50%;
      transform: translateY(-50%);
      color: var(--text-muted);
    }

    .filter-pills {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
    }

    .filter-pill-btn {
      background: var(--panel-bg);
      border: 1px solid var(--border-subtle);
      color: #d1d5db;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.72rem;
      font-weight: 700;
      padding: 7px 12px;
      border-radius: 8px;
      cursor: pointer;
      transition: 0.2s;
    }

    .filter-pill-btn:hover {
      border-color: var(--accent-orange);
    }

    .filter-pill-btn.active {
      background: var(--accent-orange);
      border-color: var(--accent-orange);
      color: #000000;
    }

    /* Grid de Tarjetas Cloud */
    .cards-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(360px, 1fr));
      gap: 18px;
    }

    .cloud-card {
      background: var(--panel-bg);
      border: 1px solid var(--border-subtle);
      border-radius: 14px;
      padding: 18px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      gap: 14px;
      transition: border-color 0.2s ease, transform 0.2s ease;
    }

    .cloud-card:hover {
      border-color: var(--border-orange);
      transform: translateY(-2px);
    }

    .cloud-card-top {
      display: flex;
      align-items: flex-start;
      justify-content: space-between;
      gap: 10px;
      padding-bottom: 12px;
      border-bottom: 1px solid var(--border-subtle);
    }

    .folio-tag {
      font-family: 'Montserrat', sans-serif;
      font-size: 0.78rem;
      font-weight: 800;
      color: var(--accent-orange);
      background: var(--accent-orange-soft);
      border: 1px solid rgba(255, 102, 0, 0.35);
      padding: 4px 10px;
      border-radius: 7px;
      display: inline-block;
    }

    .date-tag {
      font-size: 0.74rem;
      color: var(--text-muted);
      margin-top: 4px;
      display: block;
    }

    .status-select {
      background: var(--input-bg);
      color: #ffffff;
      border: 1px solid #363a42;
      border-radius: 8px;
      padding: 6px 10px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.72rem;
      font-weight: 700;
      cursor: pointer;
    }

    .status-select:focus {
      outline: none;
      border-color: var(--accent-orange);
    }

    .card-client-title {
      font-family: 'Montserrat', sans-serif;
      font-size: 1.05rem;
      font-weight: 700;
      color: #ffffff;
      margin: 0 0 3px 0;
    }

    .card-subtitle {
      font-size: 0.84rem;
      color: #cbd5e1;
      margin: 0;
    }

    .card-meta-list {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 8px;
      background: var(--input-bg);
      border: 1px solid #22252b;
      border-radius: 10px;
      padding: 11px 12px;
      font-size: 0.78rem;
    }

    .meta-item span {
      display: block;
      font-size: 0.67rem;
      text-transform: uppercase;
      color: var(--text-muted);
      font-family: 'Montserrat', sans-serif;
      font-weight: 700;
      margin-bottom: 2px;
    }

    .meta-item strong {
      color: #f3f4f6;
      font-weight: 500;
    }

    .whatsapp-link {
      color: #34d399;
      text-decoration: none;
      font-weight: 700;
      display: inline-flex;
      align-items: center;
      gap: 4px;
    }

    .whatsapp-link:hover {
      text-decoration: underline;
    }

    .furniture-badges {
      display: flex;
      flex-wrap: wrap;
      gap: 6px;
    }

    .furniture-badge {
      font-size: 0.72rem;
      font-weight: 600;
      background: #1f2228;
      color: #ffd4b8;
      border: 1px solid #323640;
      padding: 4px 9px;
      border-radius: 6px;
    }

    .notes-box {
      background: rgba(255, 255, 255, 0.03);
      border-left: 3px solid #4b5563;
      padding: 8px 11px;
      border-radius: 0 6px 6px 0;
      font-size: 0.8rem;
      color: #d1d5db;
      line-height: 1.4;
    }

    .budget-amount-bar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      background: #0d0e11;
      border: 1px solid #262930;
      border-radius: 10px;
      padding: 10px 14px;
    }

    .budget-amount-bar span {
      font-size: 0.75rem;
      color: var(--text-muted);
      font-family: 'Montserrat', sans-serif;
      font-weight: 700;
      text-transform: uppercase;
    }

    .budget-amount-bar strong {
      font-family: 'Montserrat', sans-serif;
      font-size: 1.15rem;
      font-weight: 800;
      color: var(--accent-orange);
    }

    .card-actions-row {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
      padding-top: 6px;
    }

    .btn-card-primary {
      flex: 1;
      min-width: 150px;
      background: var(--accent-orange);
      color: #000000;
      border: none;
      border-radius: 9px;
      padding: 10px 12px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.75rem;
      font-weight: 800;
      text-transform: uppercase;
      cursor: pointer;
      transition: 0.2s;
      text-align: center;
    }

    .btn-card-primary:hover {
      background: #ffffff;
    }

    .btn-card-secondary {
      background: #1e2127;
      color: #e5e7eb;
      border: 1px solid #323640;
      border-radius: 9px;
      padding: 10px 12px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.73rem;
      font-weight: 700;
      cursor: pointer;
      transition: 0.2s;
    }

    .btn-card-secondary:hover {
      border-color: var(--accent-orange);
      color: #ffffff;
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

    .btn-card-danger:hover {
      background: #ef4444;
      color: #ffffff;
    }

    .empty-state-box {
      grid-column: 1 / -1;
      background: var(--panel-bg);
      border: 1px dashed #32363f;
      border-radius: 14px;
      padding: 46px 20px;
      text-align: center;
      color: var(--text-muted);
    }

    .empty-state-box h3 {
      font-family: 'Montserrat', sans-serif;
      color: #ffffff;
      margin: 0 0 8px 0;
      font-size: 1.05rem;
    }

    /* ==========================================================================
       6. MODAL DE CONFIRMACIÓN PERSONALIZADO & NOTIFICACIONES TOAST
       ========================================================================== */
    .custom-modal-overlay {
      position: fixed;
      inset: 0;
      z-index: 999;
      background: rgba(0, 0, 0, 0.78);
      backdrop-filter: blur(6px);
      display: none;
      align-items: center;
      justify-content: center;
      padding: 16px;
    }

    .custom-modal-overlay.open {
      display: flex;
    }

    .custom-modal-box {
      background: #141619;
      border: 1px solid var(--border-orange);
      border-radius: 16px;
      max-width: 430px;
      width: 100%;
      padding: 24px;
      box-shadow: 0 24px 60px rgba(0, 0, 0, 0.8);
      animation: modalPop 0.2s ease;
    }

    @keyframes modalPop {
      from { opacity: 0; transform: scale(0.95); }
      to { opacity: 1; transform: scale(1); }
    }

    .custom-modal-box h3 {
      font-family: 'Montserrat', sans-serif;
      font-size: 1.05rem;
      margin: 0 0 10px 0;
      color: #ffffff;
    }

    .custom-modal-box p {
      font-size: 0.88rem;
      color: #cbd5e1;
      line-height: 1.5;
      margin: 0 0 22px 0;
    }

    .custom-modal-actions {
      display: flex;
      justify-content: flex-end;
      gap: 10px;
    }

    .btn-modal-cancel {
      background: #22252b;
      color: #e5e7eb;
      border: 1px solid #353942;
      border-radius: 9px;
      padding: 10px 16px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.78rem;
      font-weight: 700;
      cursor: pointer;
    }

    .btn-modal-confirm {
      background: var(--accent-orange);
      color: #000000;
      border: none;
      border-radius: 9px;
      padding: 10px 18px;
      font-family: 'Montserrat', sans-serif;
      font-size: 0.78rem;
      font-weight: 800;
      cursor: pointer;
    }

    .btn-modal-confirm.danger {
      background: #ef4444;
      color: #ffffff;
    }

    /* Toast container */
    .toast-container {
      position: fixed;
      bottom: 20px;
      right: 20px;
      z-index: 1000;
      display: flex;
      flex-direction: column;
      gap: 10px;
      max-width: 340px;
    }

    .toast-item {
      background: #16181d;
      color: #ffffff;
      border: 1px solid var(--border-orange);
      border-left: 4px solid var(--accent-orange);
      border-radius: 10px;
      padding: 12px 16px;
      font-size: 0.82rem;
      font-weight: 500;
      box-shadow: 0 12px 30px rgba(0, 0, 0, 0.65);
      animation: slideInToast 0.25s ease;
    }

    .toast-item.success {
      border-left-color: #10b981;
    }

    .toast-item.error {
      border-left-color: #ef4444;
    }

    @keyframes slideInToast {
      from { opacity: 0; transform: translateX(24px); }
      to { opacity: 1; transform: translateX(0); }
    }

    .app-footer {
      text-align: center;
      padding: 18px;
      border-top: 1px solid #1b1d22;
      font-family: 'Montserrat', sans-serif;
      font-size: 11px;
      color: #6b7280;
      letter-spacing: 1.8px;
      text-transform: uppercase;
    }

    .app-footer span {
      color: var(--accent-orange);
      font-weight: 800;
    }

    /* ==========================================================================
       7. ADAPTACIÓN RESPONSIVA (TABLET Y MÓVIL)
       ========================================================================== */
    @media (max-width: 1080px) {
      .layout-container {
        grid-template-columns: 1fr;
        gap: 20px;
      }

      .panel-vista-previa {
        padding: 14px 8px;
      }
    }

    @media (max-width: 600px) {
      .cloud-navbar {
        padding: 10px 12px;
      }

      .main-workspace {
        padding: 14px 10px 32px;
      }

      .cards-grid {
        grid-template-columns: 1fr;
      }

      .card-meta-list {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>
<body>

  <!-- ==========================================================================
       BARRA SUPERIOR DE NAVEGACIÓN — ONEGA MUEBLES CLOUD
       ========================================================================== -->
  <header class="cloud-navbar">
    <div class="cloud-navbar-inner">
      
      <!-- Identidad & Estado de Sincronización Firebase -->
      <div class="brand-cluster">
        <div class="brand-icon-box" aria-hidden="true">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#ff6600" stroke-width="2">
            <rect x="3" y="4" width="18" height="7" rx="1.5" />
            <rect x="3" y="13" width="18" height="7" rx="1.5" />
            <line x1="9" y1="7.5" x2="15" y2="7.5" stroke="#ffffff" stroke-linecap="round" />
            <line x1="9" y1="16.5" x2="15" y2="16.5" stroke="#ffffff" stroke-linecap="round" />
          </svg>
        </div>
        <div class="brand-titles">
          <h1>
            ONEGA MUEBLES <span class="accent">CLOUD</span>
            <span id="firebaseSyncPill" class="sync-pill">
              <span class="sync-dot"></span>
              <span id="firebaseSyncText">Conectando Cloud...</span>
            </span>
          </h1>
        </div>
      </div>

      <!-- 4 Pestañas Principales con Contadores Dinámicos -->
      <nav class="cloud-tabs" aria-label="Módulos de Onega Muebles Cloud">
        <button type="button" class="cloud-tab-btn active" data-view="generador">
          <span>🧾 Generador de Cotizaciones</span>
        </button>

        <button type="button" class="cloud-tab-btn" data-view="solicitudes">
          <span>📥 Solicitudes Web</span>
          <span class="tab-counter" id="count-solicitudes">0</span>
        </button>

        <button type="button" class="cloud-tab-btn" data-view="activas">
          <span>📂 Cotizaciones Activas</span>
          <span class="tab-counter" id="count-activas">0</span>
        </button>

        <button type="button" class="cloud-tab-btn" data-view="archivadas">
          <span>🗄️ Archivadas</span>
          <span class="tab-counter" id="count-archivadas">0</span>
        </button>
      </nav>

    </div>
  </header>

  <!-- ==========================================================================
       ÁREA DE TRABAJO PRINCIPAL (4 VISTAS MODULARES)
       ========================================================================== -->
  <main class="main-workspace">

    <!-- ========================================================================
         VISTA 1: GENERADOR DE COTIZACIONES (2 COLUMNAS + PDF ALTA CALIDAD)
         ======================================================================== -->
    <section id="view-generador" class="view-section active">
      <div class="layout-container">
        
        <!-- COLUMNA IZQUIERDA: PANEL FORMULARIO -->
        <div class="panel-formulario">
          
          <!-- Banner indicador cuando se edita un presupuesto guardado -->
          <div id="editingBanner" class="editing-banner">
            <span>✏️ Editando: <strong id="editingFolioLabel">#ONG-100</strong></span>
            <button type="button" id="cancelEditModeBtn">Nuevo</button>
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
            <button type="button" id="btnGuardarCloud" class="btn-cloud-save">
              <span>☁️ Guardar en Activas (Cloud)</span>
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
                    <p>Carpintería &amp; Tapicería Contract a la Medida</p>
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
          <button type="button" class="filter-pill-btn" data-status-filter="Recibido en Taller">Recibido en Taller</button>
          <button type="button" class="filter-pill-btn" data-status-filter="En Cotización">En Cotización</button>
          <button type="button" class="filter-pill-btn" data-status-filter="Cotizado">Cotizado</button>
          <button type="button" class="filter-pill-btn" data-status-filter="Descartado">Descartado</button>
        </div>
      </div>

      <div id="solicitudesGrid" class="cards-grid"></div>
    </section>

    <!-- ========================================================================
         VISTA 3: COTIZACIONES ACTIVAS (FIRESTORE: onega_presupuestos, archivada == false)
         ======================================================================== -->
    <section id="view-activas" class="view-section">
      <div class="section-header-bar">
        <div>
          <h2>Cotizaciones <span>Activas</span></h2>
          <p>Presupuestos vigentes guardados en Onega Muebles Cloud listos para seguimiento o edición.</p>
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
          <input type="text" id="searchActivasInput" placeholder="Buscar cotización activa por cliente, empresa o folio..." />
        </div>
      </div>

      <div id="activasGrid" class="cards-grid"></div>
    </section>

    <!-- ========================================================================
         VISTA 4: COTIZACIONES ARCHIVADAS (FIRESTORE: onega_presupuestos, archivada == true)
         ======================================================================== -->
    <section id="view-archivadas" class="view-section">
      <div class="section-header-bar">
        <div>
          <h2>Cotizaciones <span>Archivadas</span></h2>
          <p>Historial de presupuestos cerrados o archivados. Puedes restaurarlos a Activas en cualquier momento.</p>
        </div>
      </div>

      <!-- KPIs Resumen Archivadas -->
      <div class="kpi-grid">
        <div class="kpi-card">
          <div class="kpi-label">Cotizaciones Archivadas</div>
          <div class="kpi-value" id="kpiArchivadasCount">0</div>
        </div>
        <div class="kpi-card">
          <div class="kpi-label">Monto Total Archivado</div>
          <div class="kpi-value accent" id="kpiArchivadasTotal">$0.00</div>
        </div>
      </div>

      <div class="toolbar-row">
        <div class="search-box">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <circle cx="11" cy="11" r="8" />
            <line x1="21" y1="21" x2="16.65" y2="16.65" />
          </svg>
          <input type="text" id="searchArchivadasInput" placeholder="Buscar en archivadas por cliente, empresa o folio..." />
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
    let currentEditingBudgetId = null;
    let linkedSolicitudId = null;

    // Almacén en memoria de las imágenes base64 actuales del generador
    const generatorImages = {
      render: "",
      fotos: { 1: "", 2: "", 3: "", 4: "", 5: "", 6: "" },
      ejemplos: { 1: "", 2: "", 3: "", 4: "", 5: "", 6: "" },
      panoramica: { 1: false, 2: false, 3: false, 4: false, 5: false, 6: false }
    };

    const formatearMoneda = (valor) =>
      "$" + Number(valor || 0).toLocaleString("es-MX", { minimumFractionDigits: 2, maximumFractionDigits: 2 });

    function escapeHtml(str) {
      return String(str ?? "")
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;")
        .replace(/"/g, "&quot;");
    }

    function formatDateDisplay(item) {
      if (item.createdAt && typeof item.createdAt.toDate === "function") {
        return item.createdAt.toDate().toLocaleString("es-MX", {
          day: "2-digit",
          month: "short",
          year: "numeric",
          hour: "2-digit",
          minute: "2-digit"
        });
      }
      if (item.fechaRegistroISO || item.updatedAtISO || item.createdAtISO) {
        const d = new Date(item.updatedAtISO || item.createdAtISO || item.fechaRegistroISO);
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
      if (item.createdAt && typeof item.createdAt.toMillis === "function") {
        return item.createdAt.toMillis();
      }
      const iso = item.updatedAtISO || item.createdAtISO || item.fechaRegistroISO;
      if (iso) {
        const t = new Date(iso).getTime();
        if (!isNaN(t)) return t;
      }
      return 0;
    }

    // ==========================================================================
    // 3. SISTEMA DE TOASTS & MODAL DE CONFIRMACIÓN PERSONALIZADO
    // ==========================================================================
    function showToast(message, type = "info") {
      const container = document.getElementById("toastContainer");
      const toast = document.createElement("div");
      toast.className = `toast-item ${type}`;
      toast.textContent = message;
      container.appendChild(toast);
      setTimeout(() => {
        toast.style.opacity = "0";
        toast.style.transform = "translateX(20px)";
        toast.style.transition = "all 0.25s ease";
        setTimeout(() => toast.remove(), 260);
      }, 3400);
    }

    const confirmModal = document.getElementById("confirmModal");
    let confirmResolveCallback = null;

    function openConfirmModal({ title, message, confirmText = "Confirmar", isDanger = false }) {
      document.getElementById("confirmModalTitle").textContent = title;
      document.getElementById("confirmModalMessage").textContent = message;
      const acceptBtn = document.getElementById("confirmModalAcceptBtn");
      acceptBtn.textContent = confirmText;
      if (isDanger) {
        acceptBtn.classList.add("danger");
      } else {
        acceptBtn.classList.remove("danger");
      }
      confirmModal.classList.add("open");

      return new Promise((resolve) => {
        confirmResolveCallback = resolve;
      });
    }

    function closeConfirmModal(result) {
      confirmModal.classList.remove("open");
      if (confirmResolveCallback) {
        confirmResolveCallback(result);
        confirmResolveCallback = null;
      }
    }

    document.getElementById("confirmModalCancelBtn").addEventListener("click", () => closeConfirmModal(false));
    document.getElementById("confirmModalAcceptBtn").addEventListener("click", () => closeConfirmModal(true));
    confirmModal.addEventListener("click", (e) => {
      if (e.target === confirmModal) closeConfirmModal(false);
    });

    function setSyncStatus(isOnline, labelText) {
      const pill = document.getElementById("firebaseSyncPill");
      const textEl = document.getElementById("firebaseSyncText");
      textEl.textContent = labelText;
      if (isOnline) {
        pill.classList.remove("offline");
      } else {
        pill.classList.add("offline");
      }
    }

    // ==========================================================================
    // 4. NAVEGACIÓN ENTRE LAS 4 PESTAÑAS DE ONEGA MUEBLES CLOUD
    // ==========================================================================
    const tabBtns = document.querySelectorAll(".cloud-tab-btn");
    const viewSections = document.querySelectorAll(".view-section");

    function switchCloudView(viewKey) {
      tabBtns.forEach((btn) => {
        btn.classList.toggle("active", btn.dataset.view === viewKey);
      });
      viewSections.forEach((sec) => {
        sec.classList.toggle("active", sec.id === `view-${viewKey}`);
      });
      if (viewKey === "generador") {
        adjustPreviewScale();
      }
    }

    tabBtns.forEach((btn) => {
      btn.addEventListener("click", () => switchCloudView(btn.dataset.view));
    });

    // ==========================================================================
    // 5. ESCALADO RESPONSIVO DE LA VISTA PREVIA DE 800PX EN PANTALLAS CHICAS
    // ==========================================================================
    function adjustPreviewScale() {
      const outer = document.getElementById("previewContainerOuter");
      const wrapper = document.getElementById("previewScaleWrapper");
      const docEl = document.getElementById("documento-imagen");
      if (!outer || !wrapper || !docEl) return;

      const availableWidth = outer.clientWidth - 24;
      if (availableWidth < 800 && availableWidth > 100) {
        const scale = availableWidth / 800;
        wrapper.style.transform = `scale(${scale})`;
        wrapper.style.height = `${docEl.offsetHeight * scale}px`;
      } else {
        wrapper.style.transform = "none";
        wrapper.style.height = "auto";
      }
    }

    window.addEventListener("resize", adjustPreviewScale);

    // ==========================================================================
    // 6. GENERADOR DE COTIZACIONES: BLOQUES, CÁLCULOS E IMÁGENES
    // ==========================================================================
    function generarNuevoFolio() {
      const folioAleatorio = "#ONG-" + Math.floor(Math.random() * 900 + 100);
      document.getElementById("input-folio").value = folioAleatorio;
      document.getElementById("out-folio").innerText = folioAleatorio;
    }

    function setEditingMode(budgetId, folioStr) {
      currentEditingBudgetId = budgetId;
      const banner = document.getElementById("editingBanner");
      const saveBtn = document.getElementById("btnGuardarCloud");
      if (budgetId) {
        document.getElementById("editingFolioLabel").textContent = folioStr || "#ONG-100";
        banner.classList.add("visible");
        saveBtn.innerHTML = `<span>💾 Actualizar en Activas (Cloud)</span>`;
      } else {
        banner.classList.remove("visible");
        saveBtn.innerHTML = `<span>☁️ Guardar en Activas (Cloud)</span>`;
      }
    }

    document.getElementById("cancelEditModeBtn").addEventListener("click", () => {
      setEditingMode(null, "");
      generarNuevoFolio();
      showToast("Modo creación nueva activado", "info");
    });

    function construirBloquesProyectos() {
      const formContainer = document.getElementById("forms-proyectos-container");
      const outputContainer = document.getElementById("outputs-proyectos-container");
      formContainer.innerHTML = "";
      outputContainer.innerHTML = "";

      for (let i = 1; i <= 6; i++) {
        formContainer.innerHTML += `
          <div id="form-proyecto-${i}" class="proyecto-form-block">
            <h4>🛋️ Mueble / Partida ${i}</h4>
            <div class="form-group" style="display: flex; gap: 10px;">
              <div style="flex: 1;">
                <label for="input-cant-${i}">Cantidad</label>
                <input type="number" id="input-cant-${i}" class="form-control" value="1" min="1" />
              </div>
              <div style="flex: 2;">
                <label for="input-precio-${i}">Precio Unit. (MXN)</label>
                <input type="number" id="input-precio-${i}" class="form-control" placeholder="Ej. 4500" min="0" />
              </div>
            </div>
            <div class="form-group">
              <div class="label-with-btn">
                <label for="input-foto-${i}">Foto del Mueble / Referencia</label>
                <span class="btn-clear-img" id="btn-clear-foto-${i}">🗑️ BORRAR</span>
              </div>
              <input type="file" id="input-foto-${i}" class="form-control" accept="image/*" />
            </div>
            <div class="form-group">
              <div class="label-with-btn">
                <label for="input-ejemplo-${i}">Muestra de Tela / Acabado (Opcional)</label>
                <span class="btn-clear-img" id="btn-clear-ejemplo-${i}">🗑️ BORRAR</span>
              </div>
              <input type="file" id="input-ejemplo-${i}" class="form-control" accept="image/*" />
            </div>
            <div class="form-group">
              <label for="input-desc-${i}">Descripción del Trabajo (Medidas, madera, tapicería...)</label>
              <textarea id="input-desc-${i}" class="form-control" placeholder="Ej. Booth curvo a la medida en estructura de pino estufado, espuma 30 kg/m³, tapizado en vinipiel grado hospitalidad..."></textarea>
            </div>
          </div>
        `;

        outputContainer.innerHTML += `
          <div class="content-grid" id="box-proyecto-${i}">
            <div class="imagenes-col">
              <div class="img-container ref-container">
                <span id="placeholder-${i}" style="color: #9ca3af; font-size: 12px;">Sube foto del mueble ${i}</span>
                <img id="out-foto-${i}" src="" alt="Mueble ${i}" />
              </div>
              <div class="img-container ej-container" id="box-ejemplo-${i}" style="display: none;">
                <div class="badge-ejemplo">MUESTRA / ACABADO SELECCIONADO</div>
                <img id="out-ejemplo-${i}" src="" alt="Muestra ${i}" />
              </div>
            </div>
            <div class="detalles-box">
              <div>
                <h3>Detalles del Trabajo (${i})</h3>
                <p id="out-desc-${i}">Descripción del mobiliario bajo diseño...</p>
              </div>
              <div class="subtotal-proyecto-box">
                <span>Cantidad: <b id="out-cant-${i}">1</b></span>
                <span>Subtotal: <b id="out-subtotal-proy-${i}">$0.00</b></span>
              </div>
            </div>
          </div>
        `;
      }

      // Enlazar eventos de inputs de partidas 1..6
      for (let i = 1; i <= 6; i++) {
        document.getElementById(`input-cant-${i}`).addEventListener("input", actualizarVista);
        document.getElementById(`input-precio-${i}`).addEventListener("input", actualizarVista);
        document.getElementById(`input-desc-${i}`).addEventListener("input", actualizarVista);

        document.getElementById(`input-foto-${i}`).addEventListener("change", (e) => {
          cargarImagenOptimizada(e, "foto", i);
        });
        document.getElementById(`btn-clear-foto-${i}`).addEventListener("click", () => {
          borrarImagen("foto", i);
        });

        document.getElementById(`input-ejemplo-${i}`).addEventListener("change", (e) => {
          cargarImagenOptimizada(e, "ejemplo", i);
        });
        document.getElementById(`btn-clear-ejemplo-${i}`).addEventListener("click", () => {
          borrarImagen("ejemplo", i);
        });
      }
    }

    function cambiarCantidadProyectos() {
      const num = parseInt(document.getElementById("num-proyectos").value, 10) || 1;
      for (let i = 1; i <= 6; i++) {
        document.getElementById(`form-proyecto-${i}`).style.display = i <= num ? "block" : "none";
        document.getElementById(`box-proyecto-${i}`).style.display = i <= num ? "flex" : "none";
      }
      actualizarVista();
    }

    function calcularTotalesActuales() {
      const num = parseInt(document.getElementById("num-proyectos").value, 10) || 1;
      let subtotalGlobal = 0;
      const partidas = [];

      for (let i = 1; i <= num; i++) {
        const cant = Math.max(1, parseFloat(document.getElementById(`input-cant-${i}`).value) || 1);
        const precioUnit = Math.max(0, parseFloat(document.getElementById(`input-precio-${i}`).value) || 0);
        const descripcion = document.getElementById(`input-desc-${i}`).value.trim();
        const subtotalProy = cant * precioUnit;
        subtotalGlobal += subtotalProy;

        partidas.push({
          numero: i,
          cantidad: cant,
          precioUnitario: precioUnit,
          subtotal: subtotalProy,
          descripcion,
          fotoBase64: generatorImages.fotos[i] || "",
          ejemploBase64: generatorImages.ejemplos[i] || "",
          esPanoramica: Boolean(generatorImages.panoramica[i])
        });
      }

      let descuento = Math.max(0, parseFloat(document.getElementById("input-descuento").value) || 0);
      if (descuento > subtotalGlobal) descuento = subtotalGlobal;

      const subtotalConDescuento = subtotalGlobal - descuento;
      const ivaGlobal = subtotalConDescuento * 0.16;
      const totalFinal = subtotalConDescuento + ivaGlobal;

      return {
        numProyectos: num,
        partidas,
        subtotalGlobal,
        descuento,
        subtotalConDescuento,
        ivaGlobal,
        totalFinal
      };
    }

    function actualizarVista() {
      const folio = document.getElementById("input-folio").value.trim() || "#ONG-100";
      const cliente = document.getElementById("input-cliente").value.trim() || "Nombre del Cliente";
      const empresa = document.getElementById("input-empresa").value.trim();
      const telefono = document.getElementById("input-telefono").value.trim();

      document.getElementById("out-folio").innerText = folio;
      document.getElementById("out-cliente").innerText = cliente;

      const empresaSub = document.getElementById("out-empresa-sub");
      if (empresa) {
        empresaSub.textContent = `Establecimiento / Empresa: ${empresa}`;
        empresaSub.style.display = "block";
      } else {
        empresaSub.style.display = "none";
      }

      const telSub = document.getElementById("out-telefono-sub");
      if (telefono) {
        telSub.textContent = `Tel / WhatsApp: ${telefono}`;
        telSub.style.display = "block";
      } else {
        telSub.style.display = "none";
      }

      const calc = calcularTotalesActuales();

      for (let i = 1; i <= 6; i++) {
        if (i <= calc.numProyectos) {
          const p = calc.partidas[i - 1];
          document.getElementById(`out-desc-${i}`).innerText = p.descripcion || "Descripción del mobiliario bajo diseño...";
          document.getElementById(`out-cant-${i}`).innerText = p.cantidad;
          document.getElementById(`out-subtotal-proy-${i}`).innerText = formatearMoneda(p.subtotal);
        }
      }

      document.getElementById("out-subtotal-global").innerText = formatearMoneda(calc.subtotalGlobal);

      const rowDescuento = document.getElementById("row-descuento");
      const rowSubtotalDesc = document.getElementById("row-subtotal-desc");
      if (calc.descuento > 0) {
        rowDescuento.style.display = "flex";
        document.getElementById("out-descuento").innerText = "-" + formatearMoneda(calc.descuento);
        rowSubtotalDesc.style.display = "flex";
        document.getElementById("out-subtotal-desc").innerText = formatearMoneda(calc.subtotalConDescuento);
      } else {
        rowDescuento.style.display = "none";
        rowSubtotalDesc.style.display = "none";
      }

      document.getElementById("out-iva").innerText = formatearMoneda(calc.ivaGlobal);
      document.getElementById("out-total-final").innerText = formatearMoneda(calc.totalFinal);

      const garantia = document.getElementById("input-garantia").value;
      const instalacion = document.getElementById("input-instalacion").value.trim();
      document.getElementById("wrap-garantia").style.display = garantia ? "block" : "none";
      document.getElementById("out-garantia").innerText = garantia;
      document.getElementById("wrap-instalacion").style.display = instalacion ? "block" : "none";
      document.getElementById("out-instalacion").innerText = instalacion;
      document.getElementById("box-condiciones").style.display = garantia || instalacion ? "flex" : "none";

      requestAnimationFrame(adjustPreviewScale);
    }

    // Optimizador de imagen en alta calidad para vista previa y PDF
    function cargarImagenOptimizada(event, tipo, index = null) {
      const file = event.target.files[0];
      if (!file) {
        borrarImagen(tipo, index);
        return;
      }

      const reader = new FileReader();
      reader.onload = function (e) {
        const tempImg = new Image();
        tempImg.onload = function () {
          const MAX_WIDTH = 1400;
          let w = tempImg.width;
          let h = tempImg.height;
          const esPanoramica = w / h > 1.6;

          if (w > MAX_WIDTH || h > MAX_WIDTH) {
            if (w > h) {
              h = Math.round((h * MAX_WIDTH) / w);
              w = MAX_WIDTH;
            } else {
              w = Math.round((w * MAX_WIDTH) / h);
              h = MAX_WIDTH;
            }
          }

          const canvas = document.createElement("canvas");
          canvas.width = w;
          canvas.height = h;
          const ctx = canvas.getContext("2d");
          ctx.imageSmoothingEnabled = true;
          ctx.imageSmoothingQuality = "high";
          ctx.drawImage(tempImg, 0, 0, w, h);

          const base64Optimizada = canvas.toDataURL("image/jpeg", 0.9);
          aplicarImagenEnUI(tipo, index, base64Optimizada, esPanoramica);
        };
        tempImg.src = e.target.result;
      };
      reader.readAsDataURL(file);
    }

    function aplicarImagenEnUI(tipo, index, base64Str, esPanoramica = false) {
      const hasImg = Boolean(base64Str && base64Str.startsWith("data:image"));

      if (tipo === "render") {
        generatorImages.render = hasImg ? base64Str : "";
        const img = document.getElementById("out-render-img");
        const box = document.getElementById("box-render-final");
        const btnClear = document.getElementById("btn-clear-render");
        img.src = hasImg ? base64Str : "";
        img.style.display = hasImg ? "block" : "none";
        box.style.display = hasImg ? "flex" : "none";
        btnClear.style.display = hasImg ? "inline-block" : "none";
      } else if (tipo === "foto" && index) {
        generatorImages.fotos[index] = hasImg ? base64Str : "";
        generatorImages.panoramica[index] = hasImg ? Boolean(esPanoramica) : false;
        const img = document.getElementById(`out-foto-${index}`);
        const placeholder = document.getElementById(`placeholder-${index}`);
        const btnClear = document.getElementById(`btn-clear-foto-${index}`);
        const gridBox = document.getElementById(`box-proyecto-${index}`);

        img.src = hasImg ? base64Str : "";
        img.style.display = hasImg ? "block" : "none";
        placeholder.style.display = hasImg ? "none" : "block";
        btnClear.style.display = hasImg ? "inline-block" : "none";
        if (hasImg && esPanoramica) {
          gridBox.classList.add("panoramico");
        } else {
          gridBox.classList.remove("panoramico");
        }
      } else if (tipo === "ejemplo" && index) {
        generatorImages.ejemplos[index] = hasImg ? base64Str : "";
        const img = document.getElementById(`out-ejemplo-${index}`);
        const box = document.getElementById(`box-ejemplo-${index}`);
        const btnClear = document.getElementById(`btn-clear-ejemplo-${index}`);

        img.src = hasImg ? base64Str : "";
        img.style.display = hasImg ? "block" : "none";
        box.style.display = hasImg ? "flex" : "none";
        btnClear.style.display = hasImg ? "inline-block" : "none";
      }

      requestAnimationFrame(adjustPreviewScale);
    }

    function borrarImagen(tipo, index = null) {
      if (tipo === "render") {
        document.getElementById("input-render").value = "";
        aplicarImagenEnUI("render", null, "", false);
      } else if (tipo === "foto" && index) {
        document.getElementById(`input-foto-${index}`).value = "";
        aplicarImagenEnUI("foto", index, "", false);
      } else if (tipo === "ejemplo" && index) {
        document.getElementById(`input-ejemplo-${index}`).value = "";
        aplicarImagenEnUI("ejemplo", index, "", false);
      }
    }

    function resetearFormularioSilencioso() {
      document.getElementById("input-filename").value = "";
      document.getElementById("input-cliente").value = "";
      document.getElementById("input-empresa").value = "";
      document.getElementById("input-telefono").value = "";
      document.getElementById("input-garantia").value = "";
      document.getElementById("input-instalacion").value = "";
      document.getElementById("input-descuento").value = "";
      document.getElementById("num-proyectos").value = "1";

      for (let i = 1; i <= 6; i++) {
        document.getElementById(`input-cant-${i}`).value = "1";
        document.getElementById(`input-precio-${i}`).value = "";
        document.getElementById(`input-desc-${i}`).value = "";
        borrarImagen("foto", i);
        borrarImagen("ejemplo", i);
      }

      borrarImagen("render", null);
      setEditingMode(null, "");
      linkedSolicitudId = null;
      generarNuevoFolio();
      cambiarCantidadProyectos();
    }

    document.getElementById("btn-limpiar-form").addEventListener("click", async () => {
      const ok = await openConfirmModal({
        title: "Limpiar Formulario",
        message: "¿Deseas limpiar todos los campos e imágenes actuales para iniciar una nueva cotización?",
        confirmText: "Sí, limpiar",
        isDanger: true
      });
      if (!ok) return;

      resetearFormularioSilencioso();
      window.scrollTo({ top: 0, behavior: "smooth" });
      showToast("Formulario listo para nueva cotización", "info");
    });

    // ==========================================================================
    // 7. COMPRESIÓN SEGURA PARA FIRESTORE (EVITA EXCEDER LÍMITE DE 1MB)
    // ==========================================================================
    function recompressDataUrl(dataUrl, maxDim, quality) {
      return new Promise((resolve) => {
        if (!dataUrl || !dataUrl.startsWith("data:image")) {
          resolve("");
          return;
        }
        const img = new Image();
        img.onload = () => {
          let w = img.width;
          let h = img.height;
          if (w > maxDim || h > maxDim) {
            if (w > h) {
              h = Math.round((h * maxDim) / w);
              w = maxDim;
            } else {
              w = Math.round((w * maxDim) / h);
              h = maxDim;
            }
          }
          const canvas = document.createElement("canvas");
          canvas.width = w;
          canvas.height = h;
          const ctx = canvas.getContext("2d");
          ctx.drawImage(img, 0, 0, w, h);
          resolve(canvas.toDataURL("image/jpeg", quality));
        };
        img.onerror = () => resolve("");
        img.src = dataUrl;
      });
    }

    async function prepararPayloadSeguroFirestore(rawPayload) {
      // Clonamos el objeto para comprimir imágenes si el tamaño JSON supera 820 KB
      const clone = JSON.parse(JSON.stringify(rawPayload));
      const maxBytes = 820 * 1024;

      const levels = [
        { maxDim: 900, quality: 0.78 },
        { maxDim: 680, quality: 0.65 },
        { maxDim: 480, quality: 0.55 }
      ];

      for (const lvl of levels) {
        const currentSize = new TextEncoder().encode(JSON.stringify(clone)).length;
        if (currentSize <= maxBytes) break;

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
    document.getElementById("btnGuardarCloud").addEventListener("click", async () => {
      if (!db) {
        showToast("No hay conexión disponible con Firebase Firestore", "error");
        return;
      }

      const folio = document.getElementById("input-folio").value.trim() || "#ONG-100";
      const cliente = document.getElementById("input-cliente").value.trim();
      const empresa = document.getElementById("input-empresa").value.trim();
      const telefono = document.getElementById("input-telefono").value.trim();
      const filename = document.getElementById("input-filename").value.trim();
      const garantia = document.getElementById("input-garantia").value;
      const instalacion = document.getElementById("input-instalacion").value.trim();

      if (!cliente && !empresa) {
        showToast("Ingresa al menos el nombre del cliente o empresa antes de guardar", "error");
        document.getElementById("input-cliente").focus();
        return;
      }

      const btn = document.getElementById("btnGuardarCloud");
      btn.disabled = true;
      btn.innerHTML = `<span>⏳ Guardando en Cloud...</span>`;

      try {
        const calc = calcularTotalesActuales();
        const nowIso = new Date().toISOString();

        const rawPayload = {
          folio,
          cliente: cliente || empresa,
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
          showToast(`Presupuesto ${folio} actualizado en Activas`, "success");
        } else {
          const docRef = await addDoc(collection(db, COL_PRESUPUESTOS), {
            ...safePayload,
            createdAt: serverTimestamp(),
            createdAtISO: nowIso
          });
          setEditingMode(docRef.id, folio);
          showToast(`Presupuesto ${folio} guardado en Cotizaciones Activas`, "success");
        }
      } catch (saveErr) {
        console.error("Error guardando presupuesto en Firestore:", saveErr);
        showToast("Error al guardar en Firestore. Verifica tu conexión.", "error");
      } finally {
        btn.disabled = false;
        setEditingMode(currentEditingBudgetId, folio);
      }
    });

    // ==========================================================================
    // 9. EXPORTACIÓN PDF DE ALTA CALIDAD (HTML2CANVAS + JSPDF)
    // ==========================================================================
    document.getElementById("btnGenerarPdf").addEventListener("click", () => {
      const original = document.getElementById("documento-imagen");
      const btn = document.getElementById("btnGenerarPdf");
      let filenameInput = document.getElementById("input-filename").value.trim();
      const folioClean = (document.getElementById("input-folio").value.trim() || "ONG").replace(/[^a-zA-Z0-9_-]/g, "");
      if (filenameInput === "") {
        filenameInput = `Cotizacion_Onega_${folioClean}`;
      }

      btn.innerHTML = "⏳ Renderizando PDF...";
      btn.disabled = true;

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
            showToast("PDF generado y descargado correctamente", "success");

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
          document.getElementById("count-solicitudes").textContent = items.length;
          renderSolicitudesWeb();
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

          const activas = items.filter((p) => !p.archivada);
          const archivadas = items.filter((p) => Boolean(p.archivada));

          document.getElementById("count-activas").textContent = activas.length;
          document.getElementById("count-archivadas").textContent = archivadas.length;

          renderPresupuestosActivos();
          renderPresupuestosArchivados();
        },
        (error) => {
          console.error("Error escuchando Presupuestos:", error);
          setSyncStatus(false, "Revisar permisos Firestore");
        }
      );
    }

    // ==========================================================================
    // 11. RENDERIZADO & ACCIONES DE "SOLICITUDES WEB"
    // ==========================================================================
    function formatWhatsappUrl(phoneStr, clientName, folio) {
      const digits = String(phoneStr || "").replace(/\D/g, "");
      if (!digits) return null;
      const fullNum = digits.length === 10 ? `52${digits}` : digits;
      const msg = encodeURIComponent(
        `Hola ${clientName || ""}, te saludamos de Onega Muebles respecto a tu solicitud de proyecto (${folio || ""}).`
      );
      return `https://wa.me/${fullNum}?text=${msg}`;
    }

    function renderSolicitudesWeb() {
      const grid = document.getElementById("solicitudesGrid");
      const term = document.getElementById("searchSolicitudesInput").value.trim().toLowerCase();

      const filtered = solicitudesWebList.filter((item) => {
        const statusActual = item.estado || "Recibido en Taller";
        if (solicitudesStatusFilter !== "ALL" && statusActual !== solicitudesStatusFilter) {
          return false;
        }
        if (!term) return true;
        const blob = `${item.folio || ""} ${item.nombreCompleto || ""} ${item.empresa || ""} ${item.telefono || ""} ${item.tipoEstablecimiento || ""}`.toLowerCase();
        return blob.includes(term);
      });

      if (filtered.length === 0) {
        grid.innerHTML = `
          <div class="empty-state-box">
            <h3>No se encontraron solicitudes web</h3>
            <p>Los formularios enviados desde la página principal de Onega Muebles aparecerán aquí automáticamente en tiempo real.</p>
          </div>
        `;
        return;
      }

      grid.innerHTML = filtered
        .map((item) => {
          const folio = item.folio || item.id.slice(0, 8).toUpperCase();
          const estado = item.estado || "Recibido en Taller";
          const waUrl = formatWhatsappUrl(item.telefono, item.nombreCompleto, folio);
          const mobiliarioArr = Array.isArray(item.mobiliarioRequerido)
            ? item.mobiliarioRequerido
            : item.mobiliarioRequerido
              ? [item.mobiliarioRequerido]
              : ["Por definir"];

          return `
            <article class="cloud-card">
              <div>
                <div class="cloud-card-top">
                  <div>
                    <span class="folio-tag">${escapeHtml(folio)}</span>
                    <span class="date-tag">${escapeHtml(formatDateDisplay(item))}</span>
                  </div>
                  <select class="status-select" data-solicitud-status-id="${escapeHtml(item.id)}" aria-label="Estado de solicitud">
                    <option value="Recibido en Taller" ${estado === "Recibido en Taller" ? "selected" : ""}>Recibido en Taller</option>
                    <option value="En Cotización" ${estado === "En Cotización" ? "selected" : ""}>En Cotización</option>
                    <option value="Cotizado" ${estado === "Cotizado" ? "selected" : ""}>Cotizado</option>
                    <option value="Descartado" ${estado === "Descartado" ? "selected" : ""}>Descartado</option>
                  </select>
                </div>

                <div style="margin-top: 12px;">
                  <h3 class="card-client-title">${escapeHtml(item.nombreCompleto || "Prospecto Web")}</h3>
                  <p class="card-subtitle">${escapeHtml(item.empresa || "Establecimiento por definir")} · <strong>${escapeHtml(item.tipoEstablecimiento || "Proyecto")}</strong></p>
                </div>
              </div>

              <div class="card-meta-list">
                <div class="meta-item">
                  <span>Teléfono / WhatsApp</span>
                  ${
                    waUrl
                      ? `<a href="${waUrl}" target="_blank" rel="noopener noreferrer" class="whatsapp-link">💬 ${escapeHtml(item.telefono)}</a>`
                      : `<strong>${escapeHtml(item.telefono || "No especificado")}</strong>`
                  }
                </div>
                <div class="meta-item">
                  <span>Correo Electrónico</span>
                  <strong>${escapeHtml(item.correo || "No especificado")}</strong>
                </div>
                <div class="meta-item">
                  <span>Capacidad / Piezas</span>
                  <strong>${escapeHtml(item.capacidadPiezas || "Por definir")}</strong>
                </div>
                <div class="meta-item">
                  <span>Planos / Apertura</span>
                  <strong>Planos: ${escapeHtml(item.cuentaConPlanos || "No")} · ${escapeHtml(item.fechaApertura || "Sin fecha")}</strong>
                </div>
              </div>

              <div class="furniture-badges">
                ${mobiliarioArr.map((m) => `<span class="furniture-badge">${escapeHtml(m)}</span>`).join("")}
              </div>

              ${
                item.notasProyecto
                  ? `<div class="notes-box"><strong>Notas:</strong> ${escapeHtml(item.notasProyecto)}</div>`
                  : ""
              }

              <div class="card-actions-row">
                <button type="button" class="btn-card-primary" data-pass-to-quote="${escapeHtml(item.id)}">
                  ⚡ Pasar al Cotizador
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

          resetearFormularioSilencioso();
          linkedSolicitudId = item.id;

          const folioWeb = item.folio || "";
          const cleanName = (item.empresa || item.nombreCompleto || "Proyecto").replace(/[^a-zA-Z0-9áéíóúÁÉÍÓÚñÑ_-]/g, "_");

          document.getElementById("input-filename").value = `Cotizacion_${cleanName}`;
          document.getElementById("input-cliente").value = item.nombreCompleto || "";
          document.getElementById("input-empresa").value = item.empresa || "";
          document.getElementById("input-telefono").value = item.telefono || "";

          const mobiliarioArr = Array.isArray(item.mobiliarioRequerido)
            ? item.mobiliarioRequerido
            : item.mobiliarioRequerido
              ? [item.mobiliarioRequerido]
              : ["Mobiliario bajo diseño"];

          const numPartidas = Math.min(6, Math.max(1, mobiliarioArr.length));
          document.getElementById("num-proyectos").value = String(numPartidas);
          cambiarCantidadProyectos();

          mobiliarioArr.slice(0, 6).forEach((rubro, idx) => {
            const pIndex = idx + 1;
            const extraDetalle = [
              `${rubro} bajo diseño para ${item.tipoEstablecimiento || "establecimiento"}.`,
              item.capacidadPiezas ? `Capacidad / alcance solicitado: ${item.capacidadPiezas}.` : "",
              idx === 0 && item.notasProyecto ? `Requerimientos del cliente: ${item.notasProyecto}` : "",
              idx === 0 && folioWeb ? `(Ref. Solicitud Web: ${folioWeb})` : ""
            ]
              .filter(Boolean)
              .join("\n");

            document.getElementById(`input-desc-${pIndex}`).value = extraDetalle;
          });

          actualizarVista();
          switchCloudView("generador");
          window.scrollTo({ top: 0, behavior: "smooth" });
          showToast(`Datos de ${item.nombreCompleto || "prospecto"} cargados en el cotizador`, "success");

          // Si estaba como "Recibido en Taller", actualizar automáticamente a "En Cotización"
          if ((item.estado || "Recibido en Taller") === "Recibido en Taller" && db) {
            try {
              await updateDoc(doc(db, COL_SOLICITUDES, item.id), { estado: "En Cotización" });
            } catch (e) {
              console.warn("No se pudo cambiar estado automático:", e);
            }
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
      setEditingMode(budget.id, budget.folio || "#ONG-100");
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
      showToast(`Cotización ${budget.folio || ""} cargada para edición`, "info");
    }

    function buildBudgetCardHtml(budget, isArchivedView) {
      const partidas = Array.isArray(budget.partidas) ? budget.partidas : [];
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
              <span class="furniture-badge">${partidas.length} partida(s)</span>
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
            <span>Total Final (IVA Inc.)</span>
            <strong>${formatearMoneda(budget.totalFinal || 0)}</strong>
          </div>

          <div class="card-actions-row">
            <button type="button" class="btn-card-primary" data-edit-budget="${escapeHtml(budget.id)}">
              ✏️ Abrir / Editar
            </button>
            ${
              isArchivedView
                ? `<button type="button" class="btn-card-secondary" data-restore-budget="${escapeHtml(budget.id)}">♻️ Restaurar a Activas</button>`
                : `<button type="button" class="btn-card-secondary" data-archive-budget="${escapeHtml(budget.id)}">📦 Archivar</button>`
            }
            <button type="button" class="btn-card-danger" data-delete-budget="${escapeHtml(budget.id)}" data-delete-folio="${escapeHtml(budget.folio || "")}">
              🗑️
            </button>
          </div>
        </article>
      `;
    }

    function attachBudgetCardEvents(containerEl) {
      containerEl.querySelectorAll("[data-edit-budget]").forEach((btn) => {
        btn.addEventListener("click", () => {
          const item = presupuestosList.find((b) => b.id === btn.dataset.editBudget);
          if (item) cargarPresupuestoEnGenerador(item);
        });
      });

      containerEl.querySelectorAll("[data-archive-budget]").forEach((btn) => {
        btn.addEventListener("click", async () => {
          const id = btn.dataset.archiveBudget;
          try {
            await updateDoc(doc(db, COL_PRESUPUESTOS, id), {
              archivada: true,
              updatedAtISO: new Date().toISOString()
            });
            showToast("Cotización movida a Archivadas", "info");
          } catch (err) {
            console.error(err);
            showToast("Error al archivar la cotización", "error");
          }
        });
      });

      containerEl.querySelectorAll("[data-restore-budget]").forEach((btn) => {
        btn.addEventListener("click", async () => {
          const id = btn.dataset.restoreBudget;
          try {
            await updateDoc(doc(db, COL_PRESUPUESTOS, id), {
              archivada: false,
              updatedAtISO: new Date().toISOString()
            });
            showToast("Cotización restaurada a Activas", "success");
          } catch (err) {
            console.error(err);
            showToast("Error al restaurar la cotización", "error");
          }
        });
      });

      containerEl.querySelectorAll("[data-delete-budget]").forEach((btn) => {
        btn.addEventListener("click", async () => {
          const id = btn.dataset.deleteBudget;
          const folio = btn.dataset.deleteFolio || "seleccionada";
          const confirmed = await openConfirmModal({
            title: "Eliminar Cotización",
            message: `¿Estás seguro de eliminar permanentemente la cotización ${folio} de Onega Muebles Cloud? Esta acción no se puede deshacer.`,
            confirmText: "Eliminar Definitivamente",
            isDanger: true
          });
          if (!confirmed) return;

          try {
            await deleteDoc(doc(db, COL_PRESUPUESTOS, id));
            if (currentEditingBudgetId === id) {
              setEditingMode(null, "");
            }
            showToast(`Cotización ${folio} eliminada`, "info");
          } catch (err) {
            console.error(err);
            showToast("No se pudo eliminar la cotización", "error");
          }
        });
      });
    }

    function renderPresupuestosActivos() {
      const grid = document.getElementById("activasGrid");
      const term = document.getElementById("searchActivasInput").value.trim().toLowerCase();
      const activasAll = presupuestosList.filter((p) => !p.archivada);

      const sumaTotal = activasAll.reduce((acc, item) => acc + (Number(item.totalFinal) || 0), 0);
      const promedio = activasAll.length > 0 ? sumaTotal / activasAll.length : 0;

      document.getElementById("kpiActivasCount").textContent = activasAll.length;
      document.getElementById("kpiActivasTotal").textContent = formatearMoneda(sumaTotal);
      document.getElementById("kpiActivasAvg").textContent = formatearMoneda(promedio);

      const filtered = activasAll.filter((b) => {
        if (!term) return true;
        const blob = `${b.folio || ""} ${b.cliente || ""} ${b.empresa || ""}`.toLowerCase();
        return blob.includes(term);
      });

      if (filtered.length === 0) {
        grid.innerHTML = `
          <div class="empty-state-box">
            <h3>Sin cotizaciones activas</h3>
            <p>Usa el botón <strong>"Guardar en Activas (Cloud)"</strong> dentro del Generador de Cotizaciones para almacenar tus presupuestos aquí.</p>
          </div>
        `;
        return;
      }

      grid.innerHTML = filtered.map((b) => buildBudgetCardHtml(b, false)).join("");
      attachBudgetCardEvents(grid);
    }

    function renderPresupuestosArchivados() {
      const grid = document.getElementById("archivadasGrid");
      const term = document.getElementById("searchArchivadasInput").value.trim().toLowerCase();
      const archivadasAll = presupuestosList.filter((p) => Boolean(p.archivada));

      const sumaTotal = archivadasAll.reduce((acc, item) => acc + (Number(item.totalFinal) || 0), 0);
      document.getElementById("kpiArchivadasCount").textContent = archivadasAll.length;
      document.getElementById("kpiArchivadasTotal").textContent = formatearMoneda(sumaTotal);

      const filtered = archivadasAll.filter((b) => {
        if (!term) return true;
        const blob = `${b.folio || ""} ${b.cliente || ""} ${b.empresa || ""}`.toLowerCase();
        return blob.includes(term);
      });

      if (filtered.length === 0) {
        grid.innerHTML = `
          <div class="empty-state-box">
            <h3>No hay cotizaciones archivadas</h3>
            <p>Cuando archives una cotización activa aparecerá en este historial.</p>
          </div>
        `;
        return;
      }

      grid.innerHTML = filtered.map((b) => buildBudgetCardHtml(b, true)).join("");
      attachBudgetCardEvents(grid);
    }

    document.getElementById("searchActivasInput").addEventListener("input", renderPresupuestosActivos);
    document.getElementById("searchArchivadasInput").addEventListener("input", renderPresupuestosArchivados);

    // ==========================================================================
    // 13. INICIALIZACIÓN AL CARGAR EL DOCUMENTO
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
