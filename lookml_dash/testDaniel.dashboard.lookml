- dashboard: actividad_usuario
  title: actividad Usuario
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: oQgpr01fbKsvvC8l45FfLB
  elements:
  - title: New Tile
    name: New Tile
    model: system__activity
    explore: history
    type: looker_grid
    fields: [user.email, dashboard.title, query.view, query.model, history.source,
      history.query_run_count, history.most_recent_run_at_date]
    filters:
      history.created_date: 30 days
      history.source: dashboard
    sorts: [history.query_run_count desc]
    limit: 100
    column_limit: 50
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
    show_totals: true
    show_row_totals: true
    series_labels:
      user.count: User Count
    series_cell_visualizations:
      history.query_run_count:
        is_active: true
      user.count:
        is_active: true
    truncate_column_names: false
    series_types: {}
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields:
    listen:
      Title: dashboard.title
      Model: query.model
    row: 0
    col: 0
    width: 20
    height: 4
  - title: New Tile
    name: New Tile (2)
    model: system__activity
    explore: content_usage
    type: looker_grid
    fields: [content_usage.content_id, content_usage.content_title, content_usage.content_type,
      content_usage.other_total, content_usage.favorites_total, content_usage.schedule_total,
      content_usage.embed_total, content_usage.api_total, content_usage.days_since_last_accessed,
      content_usage.last_accessed_date]
    filters:
      content_usage.days_since_last_accessed: "<30"
      content_usage.dashboard_deleted: 'No'
      content_usage.look_deleted: 'No'
    sorts: [content_usage.other_total desc]
    limit: 50
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    column_order: ["$$$_row_numbers_$$$", content_usage.content_title, content_usage.content_type,
      content_usage.other_total, content_usage.embed_total, content_usage.api_total,
      content_usage.favorites_total, content_usage.schedule_total]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      content_usage.embed_total:
        is_active: false
      content_usage.other_total:
        is_active: false
    conditional_formatting: [{type: low to high, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: White to Green, colors: ["#FFFFFF",
            "#4FBC89"]}, bold: false, italic: false, strikethrough: false, fields: [
          content_usage.other_total]}, {type: low to high, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: White to Green, colors: ["#FFFFFF",
            "#4FBC89"]}, bold: false, italic: false, strikethrough: false, fields: [
          content_usage.schedule_total]}, {type: low to high, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: White to Green, colors: ["#FFFFFF",
            "#4FBC89"]}, bold: false, italic: false, strikethrough: false, fields: [
          content_usage.favorites_total]}, {type: low to high, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: White to Green, colors: ["#FFFFFF",
            "#4FBC89"]}, bold: false, italic: false, strikethrough: false, fields: [
          content_usage.api_total]}, {type: low to high, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: White to Green, colors: ["#FFFFFF",
            "#4FBC89"]}, bold: false, italic: false, strikethrough: false, fields: [
          content_usage.embed_total]}]
    truncate_column_names: false
    hidden_fields: [content_usage.content_id]
    note_state: collapsed
    note_display: hover
    note_text: All time counts for content that have been accessed within the last
      30 days.
    series_types: {}
    defaults_version: 1
    listen:
      Title: content_usage.content_title
    row: 4
    col: 0
    width: 20
    height: 3
  - title: New Tile (Copy)
    name: New Tile (Copy)
    model: system__activity
    explore: history
    type: looker_grid
    fields: [user.email, dashboard.title, query.model, history.source, history.query_run_count,
      history.most_recent_run_at_date, history.is_user_dashboard]
    filters:
      history.created_date: 30 days
      history.source: dashboard
    sorts: [history.query_run_count desc]
    limit: 100
    column_limit: 50
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
    show_totals: true
    show_row_totals: true
    series_labels:
      user.count: User Count
    series_cell_visualizations:
      history.query_run_count:
        is_active: true
      user.count:
        is_active: true
    truncate_column_names: false
    series_types: {}
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields:
    listen:
      Title: dashboard.title
      Model: query.model
    row: 7
    col: 0
    width: 20
    height: 4
  filters:
  - name: Title
    title: Title
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: dashboard.title
  - name: Model
    title: Model
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: query.model
