# The name of this view in Looker is "Dialogflow Runtime Googleapis Com Requests 20230504"
- view: dialogflow_runtime_googleapis_com_requests_20230504
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: |
      `dialogflowagentlogs.dialogflow_runtime_googleapis_com_requests_20230504`

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


  - dimension: json_payload__queryinput__intent__intent
    type: string
    sql: ${TABLE}.jsonPayload.queryinput.intent.intent
    group_label: JSON Payload Queryinput Intent
    field_group_variant: Intent


  - dimension: json_payload__queryinput__languagecode
    type: string
    sql: ${TABLE}.jsonPayload.queryinput.languagecode
    group_label: JSON Payload Queryinput
    field_group_variant: Languagecode


  - dimension: json_payload__queryparams__payload__telephony__caller_id
    type: string
    sql: ${TABLE}.jsonPayload.queryparams.payload.telephony.caller_id
    group_label: JSON Payload Queryparams Payload Telephony
    field_group_variant: Caller ID


  - dimension: json_payload__queryresult__advancedsettings__loggingsettings__enableinteractionlogging
    type: yesno
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.loggingsettings.enableinteractionlogging
    group_label: JSON Payload Queryresult Advancedsettings Loggingsettings
    field_group_variant: Enableinteractionlogging


  - dimension: json_payload__queryresult__advancedsettings__speechsettings__endpointersensitivity
    type: number
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.speechsettings.endpointersensitivity
    group_label: JSON Payload Queryresult Advancedsettings Speechsettings
    field_group_variant: Endpointersensitivity


  - dimension: json_payload__queryresult__advancedsettings__speechsettings__nospeechtimeout
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.speechsettings.nospeechtimeout
    group_label: JSON Payload Queryresult Advancedsettings Speechsettings
    field_group_variant: Nospeechtimeout


  - dimension: json_payload__queryresult__currentflow__displayname
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentflow.displayname
    group_label: JSON Payload Queryresult Currentflow
    field_group_variant: Displayname


  - dimension: json_payload__queryresult__currentflow__name
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentflow.name
    group_label: JSON Payload Queryresult Currentflow
    field_group_variant: Name


  - dimension: json_payload__queryresult__currentpage__displayname
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentpage.displayname
    group_label: JSON Payload Queryresult Currentpage
    field_group_variant: Displayname


  - dimension: json_payload__queryresult__currentpage__name
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentpage.name
    group_label: JSON Payload Queryresult Currentpage
    field_group_variant: Name

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: json_payload__queryresult__diagnosticinfo__alternative_matched_intents
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.alternative_matched_intents
    group_label: JSON Payload Queryresult Diagnosticinfo
    field_group_variant: Alternative Matched Intents


  - dimension: json_payload__queryresult__diagnosticinfo__execution_sequence
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.execution_sequence
    group_label: JSON Payload Queryresult Diagnosticinfo
    field_group_variant: Execution Sequence


  - dimension: json_payload__queryresult__diagnosticinfo__session_id
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.session_id
    group_label: JSON Payload Queryresult Diagnosticinfo
    field_group_variant: Session ID


  - dimension: json_payload__queryresult__diagnosticinfo__triggered_transition_names
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.triggered_transition_names
    group_label: JSON Payload Queryresult Diagnosticinfo
    field_group_variant: Triggered Transition Names


  - dimension: json_payload__queryresult__intent__displayname
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.intent.displayname
    group_label: JSON Payload Queryresult Intent
    field_group_variant: Displayname


  - dimension: json_payload__queryresult__intent__name
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.intent.name
    group_label: JSON Payload Queryresult Intent
    field_group_variant: Name


  - dimension: json_payload__queryresult__intentdetectionconfidence
    type: number
    sql: ${TABLE}.jsonPayload.queryresult.intentdetectionconfidence
    group_label: JSON Payload Queryresult
    field_group_variant: Intentdetectionconfidence


  - dimension: json_payload__queryresult__languagecode
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.languagecode
    group_label: JSON Payload Queryresult
    field_group_variant: Languagecode


  - dimension: json_payload__queryresult__match__confidence
    type: number
    sql: ${TABLE}.jsonPayload.queryresult.match.confidence
    group_label: JSON Payload Queryresult Match
    field_group_variant: Confidence


  - dimension: json_payload__queryresult__match__intent__displayname
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.intent.displayname
    group_label: JSON Payload Queryresult Match Intent
    field_group_variant: Displayname


  - dimension: json_payload__queryresult__match__intent__name
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.intent.name
    group_label: JSON Payload Queryresult Match Intent
    field_group_variant: Name


  - dimension: json_payload__queryresult__match__matchtype
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.matchtype
    group_label: JSON Payload Queryresult Match
    field_group_variant: Matchtype


  - dimension: json_payload__queryresult__responsemessages
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.responsemessages
    group_label: JSON Payload Queryresult
    field_group_variant: Responsemessages


  - dimension: json_payload__queryresult__triggerintent
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.triggerintent
    group_label: JSON Payload Queryresult
    field_group_variant: Triggerintent


  - dimension: json_payload__responseid
    type: string
    sql: ${TABLE}.jsonPayload.responseid
    group_label: JSON Payload
    field_group_variant: Responseid


  - dimension: json_payload__responsetype
    type: string
    sql: ${TABLE}.jsonPayload.responsetype
    group_label: JSON Payload
    field_group_variant: Responsetype


  - dimension: json_payload__session
    type: string
    sql: ${TABLE}.jsonPayload.session
    group_label: JSON Payload
    field_group_variant: Session


  - dimension: labels__agent_id
    type: string
    sql: ${TABLE}.labels.agent_id
    group_label: Labels
    field_group_variant: Agent ID


  - dimension: labels__environment_id
    type: string
    sql: ${TABLE}.labels.environment_id
    group_label: Labels
    field_group_variant: Environment ID


  - dimension: labels__location_id
    type: string
    sql: ${TABLE}.labels.location_id
    group_label: Labels
    field_group_variant: Location ID


  - dimension: labels__session_id
    type: string
    sql: ${TABLE}.labels.session_id
    group_label: Labels
    field_group_variant: Session ID


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
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - log_name
    - json_payload__queryresult__intent__name
    - json_payload__queryresult__currentflow__name
    - json_payload__queryresult__currentpage__name
    - json_payload__queryresult__match__intent__name
    - json_payload__queryresult__intent__displayname
    - json_payload__queryresult__currentflow__displayname
    - json_payload__queryresult__currentpage__displayname
    - json_payload__queryresult__match__intent__displayname


# The name of this view in Looker is "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Responsemessages"
- view: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__responsemessages

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Interactivevoiceresponsesettings Speechsettings Endpointersensitivity" in Explore.

  - dimension: interactivevoiceresponsesettings__speechsettings__endpointersensitivity
    type: number
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.endpointersensitivity
    group_label: Interactivevoiceresponsesettings Speechsettings
    field_group_variant: Endpointersensitivity


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_interactivevoiceresponsesettings__speechsettings__endpointersensitivity
    type: sum
    sql: ${interactivevoiceresponsesettings__speechsettings__endpointersensitivity}
  - measure: average_interactivevoiceresponsesettings__speechsettings__endpointersensitivity
    type: average
    sql: ${interactivevoiceresponsesettings__speechsettings__endpointersensitivity}

  - dimension: interactivevoiceresponsesettings__speechsettings__nospeechtimeout
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.nospeechtimeout
    group_label: Interactivevoiceresponsesettings Speechsettings
    field_group_variant: Nospeechtimeout


  - dimension: responsetype
    type: string
    sql: ${TABLE}.responsetype


  - dimension: source
    type: string
    sql: ${TABLE}.source

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: text__text
    hidden: yes
    sql: ${TABLE}.text.text
    group_label: Text
    field_group_variant: Text


# The name of this view in Looker is "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Responsemessages Text Text"
- view: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__responsemessages__text__text

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Responsemessages Text Text" in Explore.

  - dimension: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__responsemessages__text__text
    type: string
    sql: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__responsemessages__text__text


# The name of this view in Looker is "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Diagnosticinfo Triggered Transition Names"
- view: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__triggered_transition_names

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Diagnosticinfo Triggered Transition Names" in Explore.

  - dimension: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__triggered_transition_names
    type: string
    sql: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__triggered_transition_names


# The name of this view in Looker is "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Diagnosticinfo Execution Sequence"
- view: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__execution_sequence

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Step 1 Initialstate Flowstate Flowid" in Explore.

  - dimension: step_1__initialstate__flowstate__flowid
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.flowid
    group_label: Step 1 Initialstate Flowstate
    field_group_variant: Flowid


  - dimension: step_1__initialstate__flowstate__name
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.name
    group_label: Step 1 Initialstate Flowstate
    field_group_variant: Name


  - dimension: step_1__initialstate__flowstate__pagestate__name
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.name
    group_label: Step 1 Initialstate Flowstate Pagestate
    field_group_variant: Name


  - dimension: step_1__initialstate__flowstate__pagestate__pageid
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.pageid
    group_label: Step 1 Initialstate Flowstate Pagestate
    field_group_variant: Pageid


  - dimension: step_1__initialstate__flowstate__pagestate__status
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.status
    group_label: Step 1 Initialstate Flowstate Pagestate
    field_group_variant: Status


  - dimension: step_1__initialstate__flowstate__version
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.version
    group_label: Step 1 Initialstate Flowstate
    field_group_variant: Version


  - dimension: step_1__initialstate__matchedintent__active
    type: yesno
    sql: ${TABLE}.step_1.initialstate.matchedintent.active
    group_label: Step 1 Initialstate Matchedintent
    field_group_variant: Active


  - dimension: step_1__initialstate__matchedintent__displayname
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.displayname
    group_label: Step 1 Initialstate Matchedintent
    field_group_variant: Displayname


  - dimension: step_1__initialstate__matchedintent__id
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.id
    group_label: Step 1 Initialstate Matchedintent
    field_group_variant: ID


  - dimension: step_1__initialstate__matchedintent__score
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.score
    group_label: Step 1 Initialstate Matchedintent
    field_group_variant: Score


  - dimension: step_1__initialstate__matchedintent__type
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.type
    group_label: Step 1 Initialstate Matchedintent
    field_group_variant: Type


  - dimension: step_1__type
    type: string
    sql: ${TABLE}.step_1.type
    group_label: Step 1
    field_group_variant: Type

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: step_2__functionexecution__responses
    hidden: yes
    sql: ${TABLE}.step_2.functionexecution.responses
    group_label: Step 2 Functionexecution
    field_group_variant: Responses


  - dimension: step_2__statemachine__flowleveltransition
    type: yesno
    sql: ${TABLE}.step_2.statemachine.flowleveltransition
    group_label: Step 2 Statemachine
    field_group_variant: Flowleveltransition


  - dimension: step_2__statemachine__flowstate__flowid
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.flowid
    group_label: Step 2 Statemachine Flowstate
    field_group_variant: Flowid


  - dimension: step_2__statemachine__flowstate__name
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.name
    group_label: Step 2 Statemachine Flowstate
    field_group_variant: Name


  - dimension: step_2__statemachine__flowstate__pagestate__name
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.name
    group_label: Step 2 Statemachine Flowstate Pagestate
    field_group_variant: Name


  - dimension: step_2__statemachine__flowstate__pagestate__pageid
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.pageid
    group_label: Step 2 Statemachine Flowstate Pagestate
    field_group_variant: Pageid


  - dimension: step_2__statemachine__flowstate__pagestate__status
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.status
    group_label: Step 2 Statemachine Flowstate Pagestate
    field_group_variant: Status


  - dimension: step_2__statemachine__flowstate__version
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.version
    group_label: Step 2 Statemachine Flowstate
    field_group_variant: Version


  - dimension: step_2__statemachine__triggeredintent
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredintent
    group_label: Step 2 Statemachine
    field_group_variant: Triggeredintent


  - dimension: step_2__statemachine__triggeredtransitionrouteid
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredtransitionrouteid
    group_label: Step 2 Statemachine
    field_group_variant: Triggeredtransitionrouteid


  - dimension: step_2__type
    type: string
    sql: ${TABLE}.step_2.type
    group_label: Step 2
    field_group_variant: Type


  - dimension: step_3__statemachine__flowstate__flowid
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.flowid
    group_label: Step 3 Statemachine Flowstate
    field_group_variant: Flowid


  - dimension: step_3__statemachine__flowstate__name
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.name
    group_label: Step 3 Statemachine Flowstate
    field_group_variant: Name


  - dimension: step_3__statemachine__flowstate__pagestate__name
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.name
    group_label: Step 3 Statemachine Flowstate Pagestate
    field_group_variant: Name


  - dimension: step_3__statemachine__flowstate__pagestate__pageid
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.pageid
    group_label: Step 3 Statemachine Flowstate Pagestate
    field_group_variant: Pageid


  - dimension: step_3__statemachine__flowstate__pagestate__status
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.status
    group_label: Step 3 Statemachine Flowstate Pagestate
    field_group_variant: Status


  - dimension: step_3__statemachine__flowstate__version
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.version
    group_label: Step 3 Statemachine Flowstate
    field_group_variant: Version


  - dimension: step_3__type
    type: string
    sql: ${TABLE}.step_3.type
    group_label: Step 3
    field_group_variant: Type


# The name of this view in Looker is "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Diagnosticinfo Alternative Matched Intents"
- view: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__alternative_matched_intents
  drill_fields: [id]

  fields:

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active" in Explore.

  - dimension: active
    type: yesno
    sql: ${TABLE}.active


  - dimension: displayname
    type: string
    sql: ${TABLE}.displayname


  - dimension: score
    type: string
    sql: ${TABLE}.score


  - dimension: type
    type: string
    sql: ${TABLE}.type


# The name of this view in Looker is "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses"
- view: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Responsetype" in Explore.

  - dimension: responsetype
    type: string
    sql: ${TABLE}.responsetype


  - dimension: source
    type: string
    sql: ${TABLE}.source

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: text__redactedtext
    hidden: yes
    sql: ${TABLE}.text.redactedtext
    group_label: Text
    field_group_variant: Redactedtext


  - dimension: text__text
    hidden: yes
    sql: ${TABLE}.text.text
    group_label: Text
    field_group_variant: Text


# The name of this view in Looker is "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Text"
- view: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Text" in Explore.

  - dimension: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text
    type: string
    sql: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text


# The name of this view in Looker is "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Redactedtext"
- view: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dialogflow Runtime Googleapis Com Requests 20230504 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Redactedtext" in Explore.

  - dimension: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext
    type: string
    sql: dialogflow_runtime_googleapis_com_requests_20230504__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext

