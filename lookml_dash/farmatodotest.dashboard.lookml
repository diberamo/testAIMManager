- dashboard: variacion_anio_anterior_bq
  title: Variación Año Anterior (BQ)
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description:
  preferred_slug: Pl7UKIoIBFpDIxy8FtfpVZ
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://www.farmatodo.com.co/assets/svg/logo-farmatodo-blue.svg"
      width="250px">
    row: 0
    col: 0
    width: 5
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<p style="color:rgb(0,123,255); font-size: 30px; font-weight:700;
      text-align: center">DASHBOARD RETAIL CORPORATIVO</p>'
    row: 0
    col: 5
    width: 14
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <p style="color:#757575; font-size: 18px; font-weight:700; text-align: center">Comportamiento de Transacciones</p>
      ___
    row: 21
    col: 0
    width: 24
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <p style="color:#757575; font-size: 18px; font-weight:700; text-align: center">Comportamiento de Ventas</p>
      ___
    row: 2
    col: 0
    width: 24
    row: 35
    col: 0
    width: 24
    height: 2
  - title: Variación Año Anterior
    name: Variación Año Anterior
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.total_ventas_periodo_actual, Ventas.total_ventas_periodo_anterior]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1"
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#000080",
        font_color: !!null '', color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [Ventas.total_ventas_periodo_anterior]
    note_state: expanded
    note_display: below
    note_text: Ventas acumuladas en el período actual
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 4
    col: 0
    width: 8
    height: 2
  - title: Promedio ventas
    name: Promedio ventas
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.promedio_ventas]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Promedio Ventas
    value_format: "$#,##0.00"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#000080",
        font_color: !!null '', color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    row: 4
    col: 8
    width: 8
    height: 2
  - title: Variación año anterior
    name: Variación año anterior
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.total_ventas_periodo_actual, Ventas.total_ventas_periodo_anterior]
    filters:
      Ventas.date_filter: 2023/01/01 to 2023/05/09
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1"
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#000080",
        font_color: !!null '', color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [Ventas.total_ventas_periodo_anterior]
    note_state: expanded
    note_display: below
    note_text: Ventas acumuladas en el año actual
    listen:
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 4
    col: 16
    width: 8
    height: 2
  - title: Comportamiento de Ventas
    name: Comportamiento de Ventas
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_area
    fields: [Ventas.total_ventas, bq_dim_time.time_id_month]
    fill_fields: [bq_dim_time.time_id_month]
    filters:
      bq_dim_time.time_id_date: 13 months
    sorts: [bq_dim_time.time_id_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Ventas.total_ventas,
            id: Ventas.total_ventas, name: Total Ventas}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 6
    col: 0
    width: 24
    height: 5
  - title: Comportamiento de transacciones
    name: Comportamiento de transacciones
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_line
    fields: [bq_dim_time.time_id_month, Ventas.total_transacciones]
    fill_fields: [bq_dim_time.time_id_month]
    filters:
      bq_dim_time.time_id_date: 13 months
    sorts: [bq_dim_time.time_id_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: mean(${Ventas.total_transacciones})
      label: mean
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: mean
      _type_hint: number
    - category: table_calculation
      expression: stddev_pop(${Ventas.total_transacciones})
      label: stddev_pop
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: stddev_pop
      _type_hint: number
    - category: table_calculation
      expression: stddev_samp(${Ventas.total_transacciones})
      label: stddev_samp
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: stddev_samp
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: max(${Ventas.total_transacciones})
      label: max
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: max
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: Ventas.total_ventas,
            id: Ventas.total_ventas, name: Total Ventas}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Ventas.total_transacciones: "#007bff"
      stddev_pop: "#00b0f0"
      max: "#20a61a"
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 25
    col: 0
    width: 24
    height: 5
  - title: Top 5 tiendas con más transacciones
    name: Top 5 tiendas con más transacciones
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_bar
    fields: [Ventas.total_transacciones_periodo_actual, bq_dim_organization.store_name]
    filters: {}
    sorts: [Ventas.total_transacciones_periodo_actual desc 0]
    limit: 5
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Ventas.total_transacciones_periodo_actual,
            id: Ventas.total_transacciones_periodo_actual, name: Total Transacciones
              Periodo Actual}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Ventas.total_transacciones_periodo_actual: "#26b9c9"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 30
    col: 0
    width: 12
    height: 5
  - title: Top 5 tiendas con menos transacciones
    name: Top 5 tiendas con menos transacciones
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_bar
    fields: [Ventas.total_transacciones_periodo_actual, bq_dim_organization.store_name]
    filters: {}
    sorts: [Ventas.total_transacciones_periodo_actual]
    limit: 5
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Ventas.total_transacciones_periodo_actual,
            id: Ventas.total_transacciones_periodo_actual, name: Total Transacciones
              Periodo Actual}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Ventas.total_transacciones_periodo_actual: "#c98d88"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 30
    col: 12
    width: 12
    height: 5
  - title: Top 5 tiendas con mayor venta
    name: Top 5 tiendas con mayor venta
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_bar
    fields: [bq_dim_organization.store_name, Ventas.total_ventas_periodo_actual]
    filters: {}
    sorts: [Ventas.total_ventas_periodo_actual desc 0]
    limit: 5
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Ventas.total_transacciones_periodo_actual,
            id: Ventas.total_transacciones_periodo_actual, name: Total Transacciones
              Periodo Actual}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Ventas.total_transacciones_periodo_actual: "#c98d88"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 11
    col: 0
    width: 12
    height: 5
  - title: Top 5 tiendas con menor ventas
    name: Top 5 tiendas con menor ventas
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_bar
    fields: [bq_dim_organization.store_name, Ventas.total_ventas_periodo_actual]
    filters: {}
    sorts: [Ventas.total_ventas_periodo_actual]
    limit: 5
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Ventas.total_transacciones_periodo_actual,
            id: Ventas.total_transacciones_periodo_actual, name: Total Transacciones
              Periodo Actual}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Ventas.total_transacciones_periodo_actual: "#c98d88"
      Ventas.total_ventas_periodo_actual: "#f7c6c6"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 11
    col: 12
    width: 12
    height: 5
  - title: Categorías (% de participación)
    name: Categorías (% de participación)
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_grid
    fields: [Ventas.total_ventas_periodo_actual, bq_dim_product.categoria, Ventas.total_ventas_periodo_anterior]
    fill_fields: [bq_dim_product.categoria]
    filters: {}
    sorts: [Ventas.total_ventas_periodo_actual desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Ventas Total Ventas Periodo Actual
      value_format:
      value_format_name: percent_1
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_ventas_total_ventas_periodo_actual
      args:
      - Ventas.total_ventas_periodo_actual
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      Ventas.total_ventas_periodo_actual: Total Ventas Real
      Ventas.total_ventas_periodo_anterior: Total Ventas AA
      percent_of_ventas_total_ventas_periodo_actual: "% Participación"
    series_cell_visualizations:
      Ventas.total_ventas_periodo_actual:
        is_active: true
      Ventas.total_ventas_periodo_anterior:
        is_active: true
      percent_of_ventas_total_ventas_periodo_actual:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Ventas.total_transacciones_periodo_actual,
            id: Ventas.total_transacciones_periodo_actual, name: Total Transacciones
              Periodo Actual}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    series_colors:
      Ventas.total_transacciones_periodo_actual: "#c98d88"
      Ventas.total_ventas_periodo_actual: "#f7c6c6"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 16
    col: 0
    width: 16
    height: 5
  - title: Participación por canal
    name: Participación por canal
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_pie
    fields: [Ventas.total_ventas_periodo_actual, bq_dim_channel.channel_type_name]
    filters: {}
    sorts: [Ventas.total_ventas_periodo_actual desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Ventas Total Ventas Periodo Actual
      value_format:
      value_format_name: percent_1
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_ventas_total_ventas_periodo_actual
      args:
      - Ventas.total_ventas_periodo_actual
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: farmatodo
      palette_id: farmatodo-categorical-0
      options:
        steps: 5
        reverse: false
    series_colors:
      Ventas.total_transacciones_periodo_actual: "#c98d88"
      Ventas.total_ventas_periodo_actual: "#f7c6c6"
      PRESENCIAL: "#012060"
      VIRTUAL: "#00b0f0"
    series_labels:
      Ventas.total_ventas_periodo_actual: Total Ventas Real
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      Ventas.total_ventas_periodo_actual:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Ventas.total_transacciones_periodo_actual,
            id: Ventas.total_transacciones_periodo_actual, name: Total Transacciones
              Periodo Actual}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 16
    col: 16
    width: 8
    height: 5
  - title: transacciones periodo anterior
    name: transacciones periodo anterior
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.total_transacciones_periodo_actual, Ventas.total_transacciones_periodo_anterior]
    filters: {}
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_transacciones_periodo_actual}/${Ventas.total_transacciones_periodo_anterior})-1"
      label: Variación período anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_periodo_anterior
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: farmatodo
      palette_id: farmatodo-categorical-0
      options:
        steps: 5
        reverse: false
    comparison_label: Variación año anterior
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#007bff",
        font_color: !!null '', color_application: {collection_id: farmatodo, palette_id: farmatodo-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_colors:
      Ventas.total_transacciones_periodo_actual: "#c98d88"
      Ventas.total_ventas_periodo_actual: "#f7c6c6"
      PRESENCIAL: "#012060"
      VIRTUAL: "#00b0f0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Ventas.total_transacciones_periodo_actual,
            id: Ventas.total_transacciones_periodo_actual, name: Total Transacciones
              Periodo Actual}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [Ventas.total_transacciones_periodo_anterior]
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 23
    col: 0
    width: 8
    height: 2
  - title: transacciones variación acumulado año
    name: transacciones variación acumulado año
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.total_transacciones_periodo_actual, Ventas.total_transacciones_periodo_anterior]
    filters:
      Ventas.date_filter: 2023/01/01 to 2023/05/09
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_transacciones_periodo_actual}/${Ventas.total_transacciones_periodo_anterior})-1"
      label: Variación período anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_periodo_anterior
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: farmatodo
      palette_id: farmatodo-categorical-0
      options:
        steps: 5
        reverse: false
    comparison_label: Variación año anterior
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#007bff",
        font_color: !!null '', color_application: {collection_id: farmatodo, palette_id: farmatodo-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_colors:
      Ventas.total_transacciones_periodo_actual: "#c98d88"
      Ventas.total_ventas_periodo_actual: "#f7c6c6"
      PRESENCIAL: "#012060"
      VIRTUAL: "#00b0f0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Ventas.total_transacciones_periodo_actual,
            id: Ventas.total_transacciones_periodo_actual, name: Total Transacciones
              Periodo Actual}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [Ventas.total_transacciones_periodo_anterior]
    listen:
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 23
    col: 16
    width: 8
    height: 2
  - title: New Tile
    name: New Tile
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.promedio_transacciones]
    filters: {}
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_transacciones_periodo_actual}/${Ventas.total_transacciones_periodo_anterior})-1"
      label: Variación período anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_periodo_anterior
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: farmatodo
      palette_id: farmatodo-categorical-0
      options:
        steps: 5
        reverse: false
    single_value_title: Promedio transacciones
    value_format: "#,##0.00"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#007bff",
        font_color: !!null '', color_application: {collection_id: farmatodo, palette_id: farmatodo-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_colors:
      Ventas.total_transacciones_periodo_actual: "#c98d88"
      Ventas.total_ventas_periodo_actual: "#f7c6c6"
      PRESENCIAL: "#012060"
      VIRTUAL: "#00b0f0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Ventas.total_transacciones_periodo_actual,
            id: Ventas.total_transacciones_periodo_actual, name: Total Transacciones
              Periodo Actual}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: []
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 23
    col: 8
    width: 8
    height: 2
  - title: New Tile
    name: New Tile (2)
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.ticket_periodo_actual]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1"
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ticket promedio MA
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#26b9c9",
        font_color: "#fafff5", color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 37
    col: 0
    width: 6
    height: 2
  - title: Ticket promedio AA
    name: Ticket promedio AA
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.ticket_periodo_anterior]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1"
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ticket promedio AA
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#26b9c9",
        font_color: "#fafff5", color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 37
    col: 6
    width: 6
    height: 2
  - title: Crecimiento farmatodo
    name: Crecimiento farmatodo
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.crecimiento_ventas]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1"
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Crecimiento Farmatodo
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#26b9c9",
        font_color: "#fafff5", color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 37
    col: 12
    width: 6
    height: 2
  - title: Ventas diarias
    name: Ventas diarias
    model: poc_ventas_bigquery
    explore: Ventas
    type: single_value
    fields: [Ventas.ventas_diarias]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1"
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ventas diarias
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#26b9c9",
        font_color: "#fafff5", color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 37
    col: 18
    width: 6
    height: 2
  - title: Ventas por canal
    name: Ventas por canal
    model: poc_ventas_bigquery
    explore: Ventas
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [Ventas.total_ventas_periodo_actual, bq_dim_channel.channel_type_name,
      bq_dim_channel.channel_name]
    filters: {}
    sorts: [Ventas.total_ventas_periodo_actual desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1"
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
      is_disabled: true
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name
    show_null_points: true
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Ventas diarias
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#26b9c9",
        font_color: "#fafff5", color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 0
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 39
    col: 0
    width: 12
    height: 6
  - title: Tickets por producto
    name: Tickets por producto
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_funnel
    fields: [bq_dim_product.categoria, Ventas.ticket_periodo_actual]
    fill_fields: [bq_dim_product.categoria]
    filters: {}
    sorts: [Ventas.ticket_periodo_actual desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
      is_disabled: true
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: right
    percentType: total
    percentPosition: inline
    valuePosition: left
    labelColorEnabled: false
    labelColor: "#FFF"
    color_application:
      collection_id: farmatodo
      palette_id: farmatodo-categorical-0
      options:
        steps: 5
        reverse: false
    isStepped: false
    labelOverlap: false
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name
    show_null_points: true
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Ventas diarias
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#26b9c9",
        font_color: "#fafff5", color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 45
    col: 0
    width: 12
    height: 6
  - title: Ventas por Región
    name: Ventas por Región
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_column
    fields: [Ventas.total_ventas_periodo_actual, bq_dim_organization.region_name]
    filters: {}
    sorts: [bq_dim_organization.region_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1"
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      label: Percent of Ventas Total Ventas Periodo Actual
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_ventas_total_ventas_periodo_actual
      args:
      - Ventas.total_ventas_periodo_actual
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Ventas.total_ventas_periodo_actual,
            id: Ventas.total_ventas_periodo_actual, name: Ventas Total Ventas Periodo
              Actual}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: percent_of_ventas_total_ventas_periodo_actual, id: percent_of_ventas_total_ventas_periodo_actual,
            name: Percent of Ventas Total Ventas Periodo Actual}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      percent_of_ventas_total_ventas_periodo_actual: line
    series_colors:
      Ventas.total_ventas_periodo_actual: "#012060"
      percent_of_ventas_total_ventas_periodo_actual: "#f58140"
    series_labels:
      Ventas.total_ventas_periodo_actual: Total Ventas PA
      percent_of_ventas_total_ventas_periodo_actual: "% Participación"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    isStepped: false
    orientation: automatic
    labelPosition: right
    labelOverlap: false
    percentType: total
    percentPosition: inline
    valuePosition: left
    labelColorEnabled: false
    labelColor: "#FFF"
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name
    show_null_points: true
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Ventas diarias
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#26b9c9",
        font_color: "#fafff5", color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 39
    col: 12
    width: 12
    height: 6
  - title: Crecimiento de ventas por Región
    name: Crecimiento de ventas por Región
    model: poc_ventas_bigquery
    explore: Ventas
    type: looker_column
    fields: [bq_dim_organization.region_name, Ventas.crecimiento_ventas]
    filters: {}
    sorts: [bq_dim_organization.region_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${Ventas.total_ventas_periodo_actual}/${Ventas.total_ventas_periodo_anterior})-1"
      label: Variación Año Anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: variacion_ano_anterior
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      label: Percent of Ventas Total Ventas Periodo Actual
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_ventas_total_ventas_periodo_actual
      args:
      - Ventas.total_ventas_periodo_actual
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Ventas.crecimiento_ventas,
            id: Ventas.crecimiento_ventas, name: Ventas Crecimiento Ventas}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Ventas.total_ventas_periodo_actual: "#012060"
      percent_of_ventas_total_ventas_periodo_actual: "#f58140"
      Ventas.crecimiento_ventas: "#012060"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    isStepped: false
    orientation: automatic
    labelPosition: right
    labelOverlap: false
    percentType: total
    percentPosition: inline
    valuePosition: left
    labelColorEnabled: false
    labelColor: "#FFF"
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name
    show_null_points: true
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Ventas diarias
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#26b9c9",
        font_color: "#fafff5", color_application: {collection_id: farmatodo, palette_id: farmatodo-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Filtro Fecha: Ventas.date_filter
      País: bq_dim_country.country_name
      Región: bq_dim_organization.region_name
      Área: bq_dim_organization.district_name
      Nombre Moneda: bq_dim_currency.currency_name
    row: 45
    col: 12
    width: 12
    height: 6
  filters:
  - name: Filtro Fecha
    title: Filtro Fecha
    type: field_filter
    default_value: 2023/04/01 to 2023/05/01
    allow_multiple_values: true
    required: true
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: poc_ventas_bigquery
    explore: Ventas
    listens_to_filters: []
    field: Ventas.date_filter
  - name: País
    title: País
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: poc_ventas_bigquery
    explore: Ventas
    listens_to_filters: [Nombre Moneda, Área, Región]
    field: bq_dim_country.country_name
  - name: Región
    title: Región
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: poc_ventas_bigquery
    explore: Ventas
    listens_to_filters: [Nombre Moneda, Área, País]
    field: bq_dim_organization.region_name
  - name: Área
    title: Área
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: poc_ventas_bigquery
    explore: Ventas
    listens_to_filters: [Nombre Moneda, Región, País]
    field: bq_dim_organization.district_name
  - name: Nombre Moneda
    title: Nombre Moneda
    type: field_filter
    default_value: DOLAR ESTADOUNIDENSE
    allow_multiple_values: true
    required: true
    ui_config:
      type: checkboxes
      display: popover
    model: poc_ventas_bigquery
    explore: Ventas
    listens_to_filters: [Área, Región, País]
    field: bq_dim_currency.currency_name
