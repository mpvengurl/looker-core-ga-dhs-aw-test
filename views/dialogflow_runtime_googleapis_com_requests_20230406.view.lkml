view: dialogflow_runtime_googleapis_com_requests_20230406 {
  sql_table_name: `dialogflowagentlogs.dialogflow_runtime_googleapis_com_requests_20230406`
    ;;

  dimension: http_request__cache_fill_bytes {
    type: number
    sql: ${TABLE}.httpRequest.cacheFillBytes ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Fill Bytes"
  }

  dimension: http_request__cache_hit {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheHit ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Hit"
  }

  dimension: http_request__cache_lookup {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheLookup ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Lookup"
  }

  dimension: http_request__cache_validated_with_origin_server {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheValidatedWithOriginServer ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Validated with Origin Server"
  }

  dimension: http_request__protocol {
    type: string
    sql: ${TABLE}.httpRequest.protocol ;;
    group_label: "HTTP Request"
    group_item_label: "Protocol"
  }

  dimension: http_request__referer {
    type: string
    sql: ${TABLE}.httpRequest.referer ;;
    group_label: "HTTP Request"
    group_item_label: "Referer"
  }

  dimension: http_request__remote_ip {
    type: string
    sql: ${TABLE}.httpRequest.remoteIp ;;
    group_label: "HTTP Request"
    group_item_label: "Remote IP"
  }

  dimension: http_request__request_method {
    type: string
    sql: ${TABLE}.httpRequest.requestMethod ;;
    group_label: "HTTP Request"
    group_item_label: "Request Method"
  }

  dimension: http_request__request_size {
    type: number
    sql: ${TABLE}.httpRequest.requestSize ;;
    group_label: "HTTP Request"
    group_item_label: "Request Size"
  }

  dimension: http_request__request_url {
    type: string
    sql: ${TABLE}.httpRequest.requestUrl ;;
    group_label: "HTTP Request"
    group_item_label: "Request URL"
  }

  dimension: http_request__response_size {
    type: number
    sql: ${TABLE}.httpRequest.responseSize ;;
    group_label: "HTTP Request"
    group_item_label: "Response Size"
  }

  dimension: http_request__server_ip {
    type: string
    sql: ${TABLE}.httpRequest.serverIp ;;
    group_label: "HTTP Request"
    group_item_label: "Server IP"
  }

  dimension: http_request__status {
    type: number
    sql: ${TABLE}.httpRequest.status ;;
    group_label: "HTTP Request"
    group_item_label: "Status"
  }

  dimension: http_request__user_agent {
    type: string
    sql: ${TABLE}.httpRequest.userAgent ;;
    group_label: "HTTP Request"
    group_item_label: "User Agent"
  }

  dimension: insert_id {
    type: string
    sql: ${TABLE}.insertId ;;
  }

  dimension: json_payload__queryinput__intent__intent {
    type: string
    sql: ${TABLE}.jsonPayload.queryinput.intent.intent ;;
    group_label: "JSON Payload Queryinput Intent"
    group_item_label: "Intent"
  }

  dimension: json_payload__queryinput__languagecode {
    type: string
    sql: ${TABLE}.jsonPayload.queryinput.languagecode ;;
    group_label: "JSON Payload Queryinput"
    group_item_label: "Languagecode"
  }

  dimension: json_payload__queryinput__text__isaudioinput {
    type: yesno
    sql: ${TABLE}.jsonPayload.queryinput.text.isaudioinput ;;
    group_label: "JSON Payload Queryinput Text"
    group_item_label: "Isaudioinput"
  }

  dimension: json_payload__queryparams__payload__telephony__caller_id {
    type: string
    sql: ${TABLE}.jsonPayload.queryparams.payload.telephony.caller_id ;;
    group_label: "JSON Payload Queryparams Payload Telephony"
    group_item_label: "Caller ID"
  }

  dimension: json_payload__queryresult__advancedsettings__loggingsettings__enableinteractionlogging {
    type: yesno
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.loggingsettings.enableinteractionlogging ;;
    group_label: "JSON Payload Queryresult Advancedsettings Loggingsettings"
    group_item_label: "Enableinteractionlogging"
  }

  dimension: json_payload__queryresult__currentpage__displayname {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentpage.displayname ;;
    group_label: "JSON Payload Queryresult Currentpage"
    group_item_label: "Displayname"
  }

  dimension: json_payload__queryresult__currentpage__name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentpage.name ;;
    group_label: "JSON Payload Queryresult Currentpage"
    group_item_label: "Name"
  }

  dimension: json_payload__queryresult__diagnosticinfo__alternative_matched_intents {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.alternative_matched_intents ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Alternative Matched Intents"
  }

  dimension: json_payload__queryresult__diagnosticinfo__execution_sequence {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.execution_sequence ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Execution Sequence"
  }

  dimension: json_payload__queryresult__diagnosticinfo__session_id {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.session_id ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Session ID"
  }

  dimension: json_payload__queryresult__diagnosticinfo__triggered_transition_names {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.triggered_transition_names ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Triggered Transition Names"
  }

  dimension: json_payload__queryresult__intent__displayname {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.intent.displayname ;;
    group_label: "JSON Payload Queryresult Intent"
    group_item_label: "Displayname"
  }

  dimension: json_payload__queryresult__intent__name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.intent.name ;;
    group_label: "JSON Payload Queryresult Intent"
    group_item_label: "Name"
  }

  dimension: json_payload__queryresult__intentdetectionconfidence {
    type: number
    sql: ${TABLE}.jsonPayload.queryresult.intentdetectionconfidence ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Intentdetectionconfidence"
  }

  dimension: json_payload__queryresult__languagecode {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.languagecode ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Languagecode"
  }

  dimension: json_payload__queryresult__match__confidence {
    type: number
    sql: ${TABLE}.jsonPayload.queryresult.match.confidence ;;
    group_label: "JSON Payload Queryresult Match"
    group_item_label: "Confidence"
  }

  dimension: json_payload__queryresult__match__event {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.event ;;
    group_label: "JSON Payload Queryresult Match"
    group_item_label: "Event"
  }

  dimension: json_payload__queryresult__match__intent__displayname {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.intent.displayname ;;
    group_label: "JSON Payload Queryresult Match Intent"
    group_item_label: "Displayname"
  }

  dimension: json_payload__queryresult__match__intent__name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.intent.name ;;
    group_label: "JSON Payload Queryresult Match Intent"
    group_item_label: "Name"
  }

  dimension: json_payload__queryresult__match__matchtype {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.matchtype ;;
    group_label: "JSON Payload Queryresult Match"
    group_item_label: "Matchtype"
  }

  dimension: json_payload__queryresult__parameters__in_hours {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.in_hours ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "In Hours"
  }

  dimension: json_payload__queryresult__transcript {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.transcript ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Transcript"
  }

  dimension: json_payload__queryresult__triggerintent {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.triggerintent ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Triggerintent"
  }

  dimension: json_payload__responseid {
    type: string
    sql: ${TABLE}.jsonPayload.responseid ;;
    group_label: "JSON Payload"
    group_item_label: "Responseid"
  }

  dimension: json_payload__responsetype {
    type: string
    sql: ${TABLE}.jsonPayload.responsetype ;;
    group_label: "JSON Payload"
    group_item_label: "Responsetype"
  }

  dimension: json_payload__session {
    type: string
    sql: ${TABLE}.jsonPayload.session ;;
    group_label: "JSON Payload"
    group_item_label: "Session"
  }

  dimension: labels__agent_id {
    type: string
    sql: ${TABLE}.labels.agent_id ;;
    group_label: "Labels"
    group_item_label: "Agent ID"
  }

  dimension: labels__environment_id {
    type: string
    sql: ${TABLE}.labels.environment_id ;;
    group_label: "Labels"
    group_item_label: "Environment ID"
  }

  dimension: labels__location_id {
    type: string
    sql: ${TABLE}.labels.location_id ;;
    group_label: "Labels"
    group_item_label: "Location ID"
  }

  dimension: labels__session_id {
    type: string
    sql: ${TABLE}.labels.session_id ;;
    group_label: "Labels"
    group_item_label: "Session ID"
  }

  dimension: log_name {
    type: string
    sql: ${TABLE}.logName ;;
  }

  dimension: operation__first {
    type: yesno
    sql: ${TABLE}.operation.first ;;
    group_label: "Operation"
    group_item_label: "First"
  }

  dimension: operation__id {
    type: string
    sql: ${TABLE}.operation.id ;;
    group_label: "Operation"
    group_item_label: "ID"
  }

  dimension: operation__last {
    type: yesno
    sql: ${TABLE}.operation.last ;;
    group_label: "Operation"
    group_item_label: "Last"
  }

  dimension: operation__producer {
    type: string
    sql: ${TABLE}.operation.producer ;;
    group_label: "Operation"
    group_item_label: "Producer"
  }

  dimension_group: receive_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.receiveTimestamp ;;
  }

  dimension: resource__labels__project_id {
    type: string
    sql: ${TABLE}.resource.labels.project_id ;;
    group_label: "Resource Labels"
    group_item_label: "Project ID"
  }

  dimension: resource__type {
    type: string
    sql: ${TABLE}.resource.type ;;
    group_label: "Resource"
    group_item_label: "Type"
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: source_location__file {
    type: string
    sql: ${TABLE}.sourceLocation.file ;;
    group_label: "Source Location"
    group_item_label: "File"
  }

  dimension: source_location__function {
    type: string
    sql: ${TABLE}.sourceLocation.function ;;
    group_label: "Source Location"
    group_item_label: "Function"
  }

  dimension: source_location__line {
    type: number
    sql: ${TABLE}.sourceLocation.line ;;
    group_label: "Source Location"
    group_item_label: "Line"
  }

  dimension: span_id {
    type: string
    sql: ${TABLE}.spanId ;;
  }

  dimension: split__index {
    type: number
    sql: ${TABLE}.split.index ;;
    group_label: "Split"
    group_item_label: "Index"
  }

  dimension: split__total_splits {
    type: number
    sql: ${TABLE}.split.totalSplits ;;
    group_label: "Split"
    group_item_label: "Total Splits"
  }

  dimension: split__uid {
    type: string
    sql: ${TABLE}.split.uid ;;
    group_label: "Split"
    group_item_label: "Uid"
  }

  dimension: text_payload {
    type: string
    sql: ${TABLE}.textPayload ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.trace ;;
  }

  dimension: trace_sampled {
    type: yesno
    sql: ${TABLE}.traceSampled ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      log_name,
      json_payload__queryresult__intent__name,
      json_payload__queryresult__currentpage__name,
      json_payload__queryresult__match__intent__name,
      json_payload__queryresult__intent__displayname,
      json_payload__queryresult__currentpage__displayname,
      json_payload__queryresult__match__intent__displayname
    ]
  }
}

view: dialogflow_runtime_googleapis_com_requests_20230406__json_payload__queryresult__diagnosticinfo__triggered_transition_names {
  dimension: dialogflow_runtime_googleapis_com_requests_20230406__json_payload__queryresult__diagnosticinfo__triggered_transition_names {
    type: string
    sql: dialogflow_runtime_googleapis_com_requests_20230406__json_payload__queryresult__diagnosticinfo__triggered_transition_names ;;
  }
}

view: dialogflow_runtime_googleapis_com_requests_20230406__json_payload__queryresult__diagnosticinfo__execution_sequence {
  dimension: step_1__initialstate__event {
    type: string
    sql: ${TABLE}.step_1.initialstate.event ;;
    group_label: "Step 1 Initialstate"
    group_item_label: "Event"
  }

  dimension: step_1__initialstate__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.flowid ;;
    group_label: "Step 1 Initialstate Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_1__initialstate__flowstate__name {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.name ;;
    group_label: "Step 1 Initialstate Flowstate"
    group_item_label: "Name"
  }

  dimension: step_1__initialstate__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.name ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_1__initialstate__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.pageid ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_1__initialstate__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.status ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_1__initialstate__flowstate__version {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.version ;;
    group_label: "Step 1 Initialstate Flowstate"
    group_item_label: "Version"
  }

  dimension: step_1__initialstate__matchedintent__active {
    type: yesno
    sql: ${TABLE}.step_1.initialstate.matchedintent.active ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Active"
  }

  dimension: step_1__initialstate__matchedintent__displayname {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.displayname ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Displayname"
  }

  dimension: step_1__initialstate__matchedintent__id {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.id ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "ID"
  }

  dimension: step_1__initialstate__matchedintent__score {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.score ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Score"
  }

  dimension: step_1__initialstate__matchedintent__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.type ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__sessionparameters__in_hours {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.in_hours ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "In Hours"
  }

  dimension: step_1__type {
    type: string
    sql: ${TABLE}.step_1.type ;;
    group_label: "Step 1"
    group_item_label: "Type"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___in_hours {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.in_hours ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: "In Hours"
  }

  dimension: step_2__statemachine__flowleveltransition {
    type: yesno
    sql: ${TABLE}.step_2.statemachine.flowleveltransition ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Flowleveltransition"
  }

  dimension: step_2__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.flowid ;;
    group_label: "Step 2 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_2__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.name ;;
    group_label: "Step 2 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_2__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_2__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_2__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_2__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.version ;;
    group_label: "Step 2 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_2__statemachine__triggeredevent {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredevent ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredevent"
  }

  dimension: step_2__statemachine__triggeredeventhandlerid {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredeventhandlerid ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredeventhandlerid"
  }

  dimension: step_2__statemachine__triggeredintent {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredintent ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredintent"
  }

  dimension: step_2__statemachine__triggeredtransitionrouteid {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredtransitionrouteid ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredtransitionrouteid"
  }

  dimension: step_2__type {
    type: string
    sql: ${TABLE}.step_2.type ;;
    group_label: "Step 2"
    group_item_label: "Type"
  }

  dimension: step_3__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.flowid ;;
    group_label: "Step 3 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_3__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.name ;;
    group_label: "Step 3 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_3__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_3__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_3__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_3__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.version ;;
    group_label: "Step 3 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_3__type {
    type: string
    sql: ${TABLE}.step_3.type ;;
    group_label: "Step 3"
    group_item_label: "Type"
  }
}

view: dialogflow_runtime_googleapis_com_requests_20230406__json_payload__queryresult__diagnosticinfo__alternative_matched_intents {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: displayname {
    type: string
    sql: ${TABLE}.displayname ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}.score ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}
