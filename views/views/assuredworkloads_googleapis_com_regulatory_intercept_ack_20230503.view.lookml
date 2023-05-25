# The name of this view in Looker is "Assuredworkloads Googleapis Com Regulatory Intercept Ack 20230503"
- view: assuredworkloads_googleapis_com_regulatory_intercept_ack_20230503
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: |
      `dialogflowagentlogs.assuredworkloads_googleapis_com_regulatory_intercept_ack_20230503`

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "HTTP Request Cache Fill Bytes" in Explore.

  - dimension: http_request__cache_fill_bytes
    type: number
    sql: ${TABLE}.httpRequest.cacheFillBytes
    group_label: HTTP Request
    field_group_variant: Cache Fill Bytes


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_http_request__cache_fill_bytes
    type: sum
    sql: ${http_request__cache_fill_bytes}
  - measure: average_http_request__cache_fill_bytes
    type: average
    sql: ${http_request__cache_fill_bytes}

  - dimension: http_request__cache_hit
    type: yesno
    sql: ${TABLE}.httpRequest.cacheHit
    group_label: HTTP Request
    field_group_variant: Cache Hit


  - dimension: http_request__cache_lookup
    type: yesno
    sql: ${TABLE}.httpRequest.cacheLookup
    group_label: HTTP Request
    field_group_variant: Cache Lookup


  - dimension: http_request__cache_validated_with_origin_server
    type: yesno
    sql: ${TABLE}.httpRequest.cacheValidatedWithOriginServer
    group_label: HTTP Request
    field_group_variant: Cache Validated with Origin Server


  - dimension: http_request__protocol
    type: string
    sql: ${TABLE}.httpRequest.protocol
    group_label: HTTP Request
    field_group_variant: Protocol


  - dimension: http_request__referer
    type: string
    sql: ${TABLE}.httpRequest.referer
    group_label: HTTP Request
    field_group_variant: Referer


  - dimension: http_request__remote_ip
    type: string
    sql: ${TABLE}.httpRequest.remoteIp
    group_label: HTTP Request
    field_group_variant: Remote IP


  - dimension: http_request__request_method
    type: string
    sql: ${TABLE}.httpRequest.requestMethod
    group_label: HTTP Request
    field_group_variant: Request Method


  - dimension: http_request__request_size
    type: number
    sql: ${TABLE}.httpRequest.requestSize
    group_label: HTTP Request
    field_group_variant: Request Size


  - dimension: http_request__request_url
    type: string
    sql: ${TABLE}.httpRequest.requestUrl
    group_label: HTTP Request
    field_group_variant: Request URL


  - dimension: http_request__response_size
    type: number
    sql: ${TABLE}.httpRequest.responseSize
    group_label: HTTP Request
    field_group_variant: Response Size


  - dimension: http_request__server_ip
    type: string
    sql: ${TABLE}.httpRequest.serverIp
    group_label: HTTP Request
    field_group_variant: Server IP


  - dimension: http_request__status
    type: number
    sql: ${TABLE}.httpRequest.status
    group_label: HTTP Request
    field_group_variant: Status


  - dimension: http_request__user_agent
    type: string
    sql: ${TABLE}.httpRequest.userAgent
    group_label: HTTP Request
    field_group_variant: User Agent


  - dimension: insert_id
    type: string
    sql: ${TABLE}.insertId


  - dimension: jsonpayload_v1_regulatoryinterceptacklogentry___type
    type: string
    sql: ${TABLE}.jsonpayload_v1_regulatoryinterceptacklogentry._type
    group_label: Jsonpayload V1 Regulatoryinterceptacklogentry
    field_group_variant:  Type


  - dimension: jsonpayload_v1_regulatoryinterceptacklogentry__assuredworkloadresourceid
    type: string
    sql: ${TABLE}.jsonpayload_v1_regulatoryinterceptacklogentry.assuredworkloadresourceid
    group_label: Jsonpayload V1 Regulatoryinterceptacklogentry
    field_group_variant: Assuredworkloadresourceid


  - dimension: jsonpayload_v1_regulatoryinterceptacklogentry__userid
    type: string
    sql: ${TABLE}.jsonpayload_v1_regulatoryinterceptacklogentry.userid
    group_label: Jsonpayload V1 Regulatoryinterceptacklogentry
    field_group_variant: Userid


  - dimension: log_name
    type: string
    sql: ${TABLE}.logName


  - dimension: operation__first
    type: yesno
    sql: ${TABLE}.operation.first
    group_label: Operation
    field_group_variant: First


  - dimension: operation__id
    type: string
    sql: ${TABLE}.operation.id
    group_label: Operation
    field_group_variant: ID


  - dimension: operation__last
    type: yesno
    sql: ${TABLE}.operation.last
    group_label: Operation
    field_group_variant: Last


  - dimension: operation__producer
    type: string
    sql: ${TABLE}.operation.producer
    group_label: Operation
    field_group_variant: Producer

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  - dimension_group: receive_timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.receiveTimestamp


  - dimension: resource__labels__project_id
    type: string
    sql: ${TABLE}.resource.labels.project_id
    group_label: Resource Labels
    field_group_variant: Project ID


  - dimension: resource__type
    type: string
    sql: ${TABLE}.resource.type
    group_label: Resource
    field_group_variant: Type


  - dimension: severity
    type: string
    sql: ${TABLE}.severity


  - dimension: source_location__file
    type: string
    sql: ${TABLE}.sourceLocation.file
    group_label: Source Location
    field_group_variant: File


  - dimension: source_location__function
    type: string
    sql: ${TABLE}.sourceLocation.function
    group_label: Source Location
    field_group_variant: Function


  - dimension: source_location__line
    type: number
    sql: ${TABLE}.sourceLocation.line
    group_label: Source Location
    field_group_variant: Line


  - dimension: span_id
    type: string
    sql: ${TABLE}.spanId


  - dimension: split__index
    type: number
    sql: ${TABLE}.split.index
    group_label: Split
    field_group_variant: Index


  - dimension: split__total_splits
    type: number
    sql: ${TABLE}.split.totalSplits
    group_label: Split
    field_group_variant: Total Splits


  - dimension: split__uid
    type: string
    sql: ${TABLE}.split.uid
    group_label: Split
    field_group_variant: Uid


  - dimension: text_payload
    type: string
    sql: ${TABLE}.textPayload


  - dimension_group: timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp


  - dimension: trace
    type: string
    sql: ${TABLE}.trace


  - dimension: trace_sampled
    type: yesno
    sql: ${TABLE}.traceSampled

  - measure: count
    type: count
    drill_fields: [log_name]

