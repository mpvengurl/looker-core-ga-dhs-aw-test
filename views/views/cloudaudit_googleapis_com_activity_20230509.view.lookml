# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509"
- view: cloudaudit_googleapis_com_activity_20230509
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: |
      `dialogflowagentlogs.cloudaudit_googleapis_com_activity_20230509`

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


  - dimension: protopayload_auditlog__authentication_info__authority_selector
    type: string
    sql: ${TABLE}.protopayload_auditlog.authenticationInfo.authoritySelector
    group_label: Protopayload Auditlog Authentication Info
    field_group_variant: Authority Selector


  - dimension: protopayload_auditlog__authentication_info__principal_email
    type: string
    sql: ${TABLE}.protopayload_auditlog.authenticationInfo.principalEmail
    group_label: Protopayload Auditlog Authentication Info
    field_group_variant: Principal Email


  - dimension: protopayload_auditlog__authentication_info__principal_subject
    type: string
    sql: ${TABLE}.protopayload_auditlog.authenticationInfo.principalSubject
    group_label: Protopayload Auditlog Authentication Info
    field_group_variant: Principal Subject

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: protopayload_auditlog__authentication_info__service_account_delegation_info
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.authenticationInfo.serviceAccountDelegationInfo
    group_label: Protopayload Auditlog Authentication Info
    field_group_variant: Service Account Delegation Info


  - dimension: protopayload_auditlog__authentication_info__service_account_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.authenticationInfo.serviceAccountKeyName
    group_label: Protopayload Auditlog Authentication Info
    field_group_variant: Service Account Key Name


  - dimension: protopayload_auditlog__authorization_info
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.authorizationInfo
    group_label: Protopayload Auditlog
    field_group_variant: Authorization Info


  - dimension: protopayload_auditlog__metadata_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.metadataJson
    group_label: Protopayload Auditlog
    field_group_variant: Metadata JSON


  - dimension: protopayload_auditlog__method_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.methodName
    group_label: Protopayload Auditlog
    field_group_variant: Method Name


  - dimension: protopayload_auditlog__num_response_items
    type: number
    sql: ${TABLE}.protopayload_auditlog.numResponseItems
    group_label: Protopayload Auditlog
    field_group_variant: Num Response Items


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_protopayload_auditlog__num_response_items
    type: sum
    sql: ${protopayload_auditlog__num_response_items}
  - measure: average_protopayload_auditlog__num_response_items
    type: average
    sql: ${protopayload_auditlog__num_response_items}

  - dimension: protopayload_auditlog__policy_violation_info__org_policy_violation_info__resource_tags
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.policyViolationInfo.orgPolicyViolationInfo.resourceTags
    group_label: Protopayload Auditlog Policy Violation Info Org Policy Violation Info
    field_group_variant: Resource Tags


  - dimension: protopayload_auditlog__policy_violation_info__org_policy_violation_info__resource_type
    type: string
    sql: ${TABLE}.protopayload_auditlog.policyViolationInfo.orgPolicyViolationInfo.resourceType
    group_label: Protopayload Auditlog Policy Violation Info Org Policy Violation Info
    field_group_variant: Resource Type


  - dimension: protopayload_auditlog__policy_violation_info__org_policy_violation_info__violation_info
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.policyViolationInfo.orgPolicyViolationInfo.violationInfo
    group_label: Protopayload Auditlog Policy Violation Info Org Policy Violation Info
    field_group_variant: Violation Info


  - dimension: protopayload_auditlog__request_metadata__caller_ip
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.callerIp
    group_label: Protopayload Auditlog Request Metadata
    field_group_variant: Caller IP


  - dimension: protopayload_auditlog__request_metadata__caller_network
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.callerNetwork
    group_label: Protopayload Auditlog Request Metadata
    field_group_variant: Caller Network


  - dimension: protopayload_auditlog__request_metadata__caller_supplied_user_agent
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.callerSuppliedUserAgent
    group_label: Protopayload Auditlog Request Metadata
    field_group_variant: Caller Supplied User Agent


  - dimension: protopayload_auditlog__request_metadata__destination_attributes__ip
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.destinationAttributes.ip
    group_label: Protopayload Auditlog Request Metadata Destination Attributes
    field_group_variant: IP


  - dimension: protopayload_auditlog__request_metadata__destination_attributes__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.destinationAttributes.labels
    group_label: Protopayload Auditlog Request Metadata Destination Attributes
    field_group_variant: Labels


  - dimension: protopayload_auditlog__request_metadata__destination_attributes__port
    type: number
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.destinationAttributes.port
    group_label: Protopayload Auditlog Request Metadata Destination Attributes
    field_group_variant: Port


  - dimension: protopayload_auditlog__request_metadata__destination_attributes__principal
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.destinationAttributes.principal
    group_label: Protopayload Auditlog Request Metadata Destination Attributes
    field_group_variant: Principal


  - dimension: protopayload_auditlog__request_metadata__destination_attributes__region_code
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.destinationAttributes.regionCode
    group_label: Protopayload Auditlog Request Metadata Destination Attributes
    field_group_variant: Region Code


  - dimension: protopayload_auditlog__request_metadata__request_attributes__auth__access_levels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.auth.accessLevels
    group_label: Protopayload Auditlog Request Metadata Request Attributes Auth
    field_group_variant: Access Levels


  - dimension: protopayload_auditlog__request_metadata__request_attributes__auth__audiences
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.auth.audiences
    group_label: Protopayload Auditlog Request Metadata Request Attributes Auth
    field_group_variant: Audiences


  - dimension: protopayload_auditlog__request_metadata__request_attributes__auth__presenter
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.auth.presenter
    group_label: Protopayload Auditlog Request Metadata Request Attributes Auth
    field_group_variant: Presenter


  - dimension: protopayload_auditlog__request_metadata__request_attributes__auth__principal
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.auth.principal
    group_label: Protopayload Auditlog Request Metadata Request Attributes Auth
    field_group_variant: Principal


  - dimension: protopayload_auditlog__request_metadata__request_attributes__headers
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.headers
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: Headers


  - dimension: protopayload_auditlog__request_metadata__request_attributes__host
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.host
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: Host


  - dimension: protopayload_auditlog__request_metadata__request_attributes__id
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.id
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: ID


  - dimension: protopayload_auditlog__request_metadata__request_attributes__method
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.method
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: Method


  - dimension: protopayload_auditlog__request_metadata__request_attributes__path
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.path
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: Path


  - dimension: protopayload_auditlog__request_metadata__request_attributes__protocol
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.protocol
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: Protocol


  - dimension: protopayload_auditlog__request_metadata__request_attributes__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.query
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: Query


  - dimension: protopayload_auditlog__request_metadata__request_attributes__reason
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.reason
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: Reason


  - dimension: protopayload_auditlog__request_metadata__request_attributes__scheme
    type: string
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.scheme
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: Scheme


  - dimension: protopayload_auditlog__request_metadata__request_attributes__size
    type: number
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.size
    group_label: Protopayload Auditlog Request Metadata Request Attributes
    field_group_variant: Size

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  - dimension_group: protopayload_auditlog__request_metadata__request_attributes_
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.requestMetadata.requestAttributes.time


  - dimension: protopayload_auditlog__resource_location__current_locations
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.resourceLocation.currentLocations
    group_label: Protopayload Auditlog Resource Location
    field_group_variant: Current Locations


  - dimension: protopayload_auditlog__resource_location__original_locations
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.resourceLocation.originalLocations
    group_label: Protopayload Auditlog Resource Location
    field_group_variant: Original Locations


  - dimension: protopayload_auditlog__resource_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.resourceName
    group_label: Protopayload Auditlog
    field_group_variant: Resource Name


  - dimension: protopayload_auditlog__service_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.serviceName
    group_label: Protopayload Auditlog
    field_group_variant: Service Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__acl__entries
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertRequest.resource.acl.entries
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Request Resource Acl
    field_group_variant: Entries


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertRequest.resource.createTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__dataset_name__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertRequest.resource.datasetName.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Request Resource Dataset Name
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__dataset_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertRequest.resource.datasetName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Request Resource Dataset Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__info__description
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertRequest.resource.info.description
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Request Resource Info
    field_group_variant: Description


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__info__friendly_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertRequest.resource.info.friendlyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Request Resource Info
    field_group_variant: Friendly Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__info__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertRequest.resource.info.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Request Resource Info
    field_group_variant: Labels


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__update
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertRequest.resource.updateTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__acl__entries
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertResponse.resource.acl.entries
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Response Resource Acl
    field_group_variant: Entries


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertResponse.resource.createTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__dataset_name__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertResponse.resource.datasetName.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Response Resource Dataset Name
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__dataset_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertResponse.resource.datasetName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Response Resource Dataset Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__info__description
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertResponse.resource.info.description
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Response Resource Info
    field_group_variant: Description


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__info__friendly_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertResponse.resource.info.friendlyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Response Resource Info
    field_group_variant: Friendly Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__info__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertResponse.resource.info.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Response Resource Info
    field_group_variant: Labels


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__update
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetInsertResponse.resource.updateTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_list_request__list_all
    type: yesno
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetListRequest.listAll
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset List Request
    field_group_variant: List All


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__acl__entries
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateRequest.resource.acl.entries
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Request Resource Acl
    field_group_variant: Entries


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateRequest.resource.createTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__dataset_name__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateRequest.resource.datasetName.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Request Resource Dataset Name
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__dataset_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateRequest.resource.datasetName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Request Resource Dataset Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__info__description
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateRequest.resource.info.description
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Request Resource Info
    field_group_variant: Description


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__info__friendly_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateRequest.resource.info.friendlyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Request Resource Info
    field_group_variant: Friendly Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__info__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateRequest.resource.info.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Request Resource Info
    field_group_variant: Labels


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__update
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateRequest.resource.updateTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__acl__entries
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateResponse.resource.acl.entries
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Response Resource Acl
    field_group_variant: Entries


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateResponse.resource.createTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__dataset_name__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateResponse.resource.datasetName.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Response Resource Dataset Name
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__dataset_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateResponse.resource.datasetName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Response Resource Dataset Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__info__description
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateResponse.resource.info.description
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Response Resource Info
    field_group_variant: Description


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__info__friendly_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateResponse.resource.info.friendlyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Response Resource Info
    field_group_variant: Friendly Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__info__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateResponse.resource.info.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Response Resource Info
    field_group_variant: Labels


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__update
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.datasetUpdateResponse.resource.updateTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__event_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.eventName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event
    field_group_variant: Event Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__dry_run
    type: yesno
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.dryRun
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration
    field_group_variant: Dry Run


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__extract__destination_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.extract.destinationUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Extract
    field_group_variant: Destination Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__extract__source_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.`extract`.sourceTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Extract Source Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__extract__source_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.`extract`.sourceTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Extract Source Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__extract__source_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.`extract`.sourceTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Extract Source Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.load.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.load.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.load.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.load.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.load.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.load.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__source_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.load.sourceUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load
    field_group_variant: Source Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.load.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__default_dataset__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.defaultDataset.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query Default Dataset
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__default_dataset__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.defaultDataset.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query Default Dataset
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query
    field_group_variant: Query


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__query_priority
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.queryPriority
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query
    field_group_variant: Query Priority


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__statement_type
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.statementType
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query
    field_group_variant: Statement Type


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__table_definitions
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.tableDefinitions
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query
    field_group_variant: Table Definitions


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.query.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__table_copy__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.tableCopy.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Table Copy
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__table_copy__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.tableCopy.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Table Copy Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__table_copy__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.tableCopy.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Table Copy Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__table_copy__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.tableCopy.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Table Copy Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__table_copy__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.tableCopy.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Table Copy Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__table_copy__source_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.tableCopy.sourceTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Table Copy
    field_group_variant: Source Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__table_copy__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobConfiguration.tableCopy.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Table Copy
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_name__job_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobName.jobId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Name
    field_group_variant: Job ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_name__location
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobName.location
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Name
    field_group_variant: Location


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__billing_tier
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.billingTier
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Billing Tier


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.createTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__end
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.endTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__query_output_row_count
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.queryOutputRowCount
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Query Output Row Count


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__referenced_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.referencedTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Referenced Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__referenced_views
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.referencedViews
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Referenced Views


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__reservation_usage
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.reservationUsage
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Reservation Usage


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__start
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.startTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__total_billed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.totalBilledBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Total Billed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__total_load_output_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.totalLoadOutputBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Total Load Output Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__total_processed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.totalProcessedBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Total Processed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__total_slot_ms
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.totalSlotMs
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Total Slot Ms


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__total_tables_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.totalTablesProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Total Tables Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__total_views_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatistics.totalViewsProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics
    field_group_variant: Total Views Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_status__additional_errors
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatus.additionalErrors
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Status
    field_group_variant: Additional Errors


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_status__error__code
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatus.error.code
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Status Error
    field_group_variant: Code


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_status__error__message
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatus.error.message
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Status Error
    field_group_variant: Message


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_status__state
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobCompletedEvent.job.jobStatus.state
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Status
    field_group_variant: State


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_request__max_results
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsRequest.maxResults
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Request
    field_group_variant: Max Results


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_request__start_row
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsRequest.startRow
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Request
    field_group_variant: Start Row


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__dry_run
    type: yesno
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.dryRun
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration
    field_group_variant: Dry Run


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__extract__destination_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.extract.destinationUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Extract
    field_group_variant: Destination Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__extract__source_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.`extract`.sourceTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Extract Source Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__extract__source_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.`extract`.sourceTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Extract Source Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__extract__source_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.`extract`.sourceTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Extract Source Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.load.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.load.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.load.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.load.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.load.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.load.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__source_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.load.sourceUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load
    field_group_variant: Source Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.load.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__default_dataset__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.defaultDataset.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query Default Dataset
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__default_dataset__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.defaultDataset.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query Default Dataset
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query
    field_group_variant: Query


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__query_priority
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.queryPriority
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query
    field_group_variant: Query Priority


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__statement_type
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.statementType
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query
    field_group_variant: Statement Type


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__table_definitions
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.tableDefinitions
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query
    field_group_variant: Table Definitions


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.query.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__table_copy__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.tableCopy.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Table Copy
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__table_copy__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.tableCopy.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Table Copy Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__table_copy__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.tableCopy.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Table Copy Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__table_copy__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.tableCopy.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Table Copy Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__table_copy__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.tableCopy.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Table Copy Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__table_copy__source_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.tableCopy.sourceTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Table Copy
    field_group_variant: Source Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__table_copy__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobConfiguration.tableCopy.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Table Copy
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_name__job_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobName.jobId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Name
    field_group_variant: Job ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_name__location
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobName.location
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Name
    field_group_variant: Location


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__billing_tier
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.billingTier
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Billing Tier


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.createTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__end
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.endTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__query_output_row_count
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.queryOutputRowCount
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Query Output Row Count


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__referenced_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.referencedTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Referenced Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__referenced_views
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.referencedViews
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Referenced Views


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__reservation_usage
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.reservationUsage
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Reservation Usage


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__start
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.startTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__total_billed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.totalBilledBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Total Billed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__total_load_output_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.totalLoadOutputBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Total Load Output Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__total_processed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.totalProcessedBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Total Processed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__total_slot_ms
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.totalSlotMs
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Total Slot Ms


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__total_tables_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.totalTablesProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Total Tables Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__total_views_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatistics.totalViewsProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics
    field_group_variant: Total Views Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_status__additional_errors
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatus.additionalErrors
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Status
    field_group_variant: Additional Errors


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_status__error__code
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatus.error.code
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Status Error
    field_group_variant: Code


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_status__error__message
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatus.error.message
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Status Error
    field_group_variant: Message


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_status__state
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.job.jobStatus.state
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Status
    field_group_variant: State


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__total_results
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobGetQueryResultsResponse.totalResults
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response
    field_group_variant: Total Results


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__dry_run
    type: yesno
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.dryRun
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration
    field_group_variant: Dry Run


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__extract__destination_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.extract.destinationUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Extract
    field_group_variant: Destination Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__extract__source_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.`extract`.sourceTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Extract Source Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__extract__source_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.`extract`.sourceTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Extract Source Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__extract__source_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.`extract`.sourceTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Extract Source Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.load.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.load.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.load.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.load.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.load.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.load.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__source_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.load.sourceUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load
    field_group_variant: Source Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.load.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__default_dataset__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.defaultDataset.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query Default Dataset
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__default_dataset__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.defaultDataset.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query Default Dataset
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query
    field_group_variant: Query


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__query_priority
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.queryPriority
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query
    field_group_variant: Query Priority


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__statement_type
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.statementType
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query
    field_group_variant: Statement Type


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__table_definitions
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.tableDefinitions
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query
    field_group_variant: Table Definitions


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.query.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__table_copy__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.tableCopy.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Table Copy
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__table_copy__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.tableCopy.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Table Copy Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__table_copy__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.tableCopy.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Table Copy Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__table_copy__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.tableCopy.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Table Copy Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__table_copy__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.tableCopy.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Table Copy Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__table_copy__source_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.tableCopy.sourceTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Table Copy
    field_group_variant: Source Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__table_copy__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobConfiguration.tableCopy.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Table Copy
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_name__job_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobName.jobId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Name
    field_group_variant: Job ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_name__location
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobName.location
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Name
    field_group_variant: Location


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__billing_tier
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.billingTier
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Billing Tier


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.createTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__end
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.endTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__query_output_row_count
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.queryOutputRowCount
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Query Output Row Count


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__referenced_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.referencedTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Referenced Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__referenced_views
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.referencedViews
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Referenced Views


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__reservation_usage
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.reservationUsage
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Reservation Usage


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__start
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.startTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__total_billed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.totalBilledBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Total Billed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__total_load_output_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.totalLoadOutputBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Total Load Output Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__total_processed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.totalProcessedBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Total Processed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__total_slot_ms
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.totalSlotMs
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Total Slot Ms


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__total_tables_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.totalTablesProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Total Tables Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__total_views_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatistics.totalViewsProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics
    field_group_variant: Total Views Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_status__additional_errors
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatus.additionalErrors
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Status
    field_group_variant: Additional Errors


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_status__error__code
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatus.error.code
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Status Error
    field_group_variant: Code


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_status__error__message
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatus.error.message
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Status Error
    field_group_variant: Message


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_status__state
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertRequest.resource.jobStatus.state
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Status
    field_group_variant: State


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__dry_run
    type: yesno
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.dryRun
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration
    field_group_variant: Dry Run


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__extract__destination_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.extract.destinationUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Extract
    field_group_variant: Destination Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__extract__source_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.`extract`.sourceTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Extract Source Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__extract__source_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.`extract`.sourceTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Extract Source Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__extract__source_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.`extract`.sourceTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Extract Source Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.load.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.load.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.load.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.load.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.load.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.load.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__source_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.load.sourceUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load
    field_group_variant: Source Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.load.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__default_dataset__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.defaultDataset.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query Default Dataset
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__default_dataset__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.defaultDataset.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query Default Dataset
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query
    field_group_variant: Query


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__query_priority
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.queryPriority
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query
    field_group_variant: Query Priority


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__statement_type
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.statementType
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query
    field_group_variant: Statement Type


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__table_definitions
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.tableDefinitions
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query
    field_group_variant: Table Definitions


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.query.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__table_copy__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.tableCopy.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Table Copy
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__table_copy__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.tableCopy.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Table Copy Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__table_copy__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.tableCopy.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Table Copy Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__table_copy__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.tableCopy.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Table Copy Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__table_copy__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.tableCopy.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Table Copy Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__table_copy__source_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.tableCopy.sourceTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Table Copy
    field_group_variant: Source Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__table_copy__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobConfiguration.tableCopy.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Table Copy
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_name__job_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobName.jobId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Name
    field_group_variant: Job ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_name__location
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobName.location
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Name
    field_group_variant: Location


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__billing_tier
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.billingTier
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Billing Tier


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.createTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__end
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.endTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__query_output_row_count
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.queryOutputRowCount
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Query Output Row Count


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__referenced_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.referencedTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Referenced Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__referenced_views
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.referencedViews
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Referenced Views


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__reservation_usage
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.reservationUsage
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Reservation Usage


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__start
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.startTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__total_billed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.totalBilledBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Total Billed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__total_load_output_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.totalLoadOutputBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Total Load Output Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__total_processed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.totalProcessedBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Total Processed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__total_slot_ms
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.totalSlotMs
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Total Slot Ms


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__total_tables_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.totalTablesProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Total Tables Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__total_views_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatistics.totalViewsProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics
    field_group_variant: Total Views Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_status__additional_errors
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatus.additionalErrors
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Status
    field_group_variant: Additional Errors


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_status__error__code
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatus.error.code
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Status Error
    field_group_variant: Code


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_status__error__message
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatus.error.message
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Status Error
    field_group_variant: Message


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_status__state
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobInsertResponse.resource.jobStatus.state
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Status
    field_group_variant: State


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__dry_run
    type: yesno
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.dryRun
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration
    field_group_variant: Dry Run


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__extract__destination_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.extract.destinationUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Extract
    field_group_variant: Destination Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__extract__source_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.`extract`.sourceTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Extract Source Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__extract__source_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.`extract`.sourceTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Extract Source Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__extract__source_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.`extract`.sourceTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Extract Source Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.load.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.load.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.load.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.load.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.load.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.load.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__source_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.load.sourceUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load
    field_group_variant: Source Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.load.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__default_dataset__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.defaultDataset.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query Default Dataset
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__default_dataset__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.defaultDataset.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query Default Dataset
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query
    field_group_variant: Query


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__query_priority
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.queryPriority
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query
    field_group_variant: Query Priority


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__statement_type
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.statementType
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query
    field_group_variant: Statement Type


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__table_definitions
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.tableDefinitions
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query
    field_group_variant: Table Definitions


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.query.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__table_copy__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.tableCopy.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Table Copy
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__table_copy__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.tableCopy.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Table Copy Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__table_copy__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.tableCopy.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Table Copy Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__table_copy__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.tableCopy.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Table Copy Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__table_copy__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.tableCopy.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Table Copy Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__table_copy__source_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.tableCopy.sourceTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Table Copy
    field_group_variant: Source Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__table_copy__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobConfiguration.tableCopy.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Table Copy
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_name__job_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobName.jobId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Name
    field_group_variant: Job ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_name__location
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobName.location
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Name
    field_group_variant: Location


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__billing_tier
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.billingTier
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Billing Tier


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.createTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__end
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.endTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__query_output_row_count
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.queryOutputRowCount
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Query Output Row Count


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__referenced_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.referencedTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Referenced Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__referenced_views
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.referencedViews
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Referenced Views


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__reservation_usage
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.reservationUsage
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Reservation Usage


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__start
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.startTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__total_billed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.totalBilledBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Total Billed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__total_load_output_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.totalLoadOutputBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Total Load Output Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__total_processed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.totalProcessedBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Total Processed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__total_slot_ms
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.totalSlotMs
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Total Slot Ms


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__total_tables_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.totalTablesProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Total Tables Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__total_views_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatistics.totalViewsProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics
    field_group_variant: Total Views Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_status__additional_errors
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatus.additionalErrors
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Status
    field_group_variant: Additional Errors


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_status__error__code
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatus.error.code
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Status Error
    field_group_variant: Code


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_status__error__message
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatus.error.message
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Status Error
    field_group_variant: Message


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_status__state
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryDoneResponse.job.jobStatus.state
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Status
    field_group_variant: State


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_request__default_dataset__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryRequest.defaultDataset.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Request Default Dataset
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_request__default_dataset__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryRequest.defaultDataset.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Request Default Dataset
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_request__dry_run
    type: yesno
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryRequest.dryRun
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Request
    field_group_variant: Dry Run


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_request__max_results
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryRequest.maxResults
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Request
    field_group_variant: Max Results


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_request__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryRequest.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Request
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_request__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryRequest.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Request
    field_group_variant: Query


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__dry_run
    type: yesno
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.dryRun
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration
    field_group_variant: Dry Run


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__extract__destination_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.extract.destinationUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Extract
    field_group_variant: Destination Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__extract__source_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.`extract`.sourceTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Extract Source Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__extract__source_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.`extract`.sourceTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Extract Source Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__extract__source_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.`extract`.sourceTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Extract Source Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.load.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.load.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.load.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.load.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.load.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.load.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__source_uris
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.load.sourceUris
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load
    field_group_variant: Source Uris


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.load.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__default_dataset__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.defaultDataset.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query Default Dataset
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__default_dataset__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.defaultDataset.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query Default Dataset
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query
    field_group_variant: Query


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__query_priority
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.queryPriority
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query
    field_group_variant: Query Priority


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__statement_type
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.statementType
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query
    field_group_variant: Statement Type


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__table_definitions
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.tableDefinitions
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query
    field_group_variant: Table Definitions


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.query.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__table_copy__create_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.tableCopy.createDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Table Copy
    field_group_variant: Create Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__table_copy__destination_table__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.tableCopy.destinationTable.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Table Copy Destination Table
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__table_copy__destination_table__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.tableCopy.destinationTable.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Table Copy Destination Table
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__table_copy__destination_table__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.tableCopy.destinationTable.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Table Copy Destination Table
    field_group_variant: Table ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__table_copy__destination_table_encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.tableCopy.destinationTableEncryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Table Copy Destination Table Encryption
    field_group_variant: Kms Key Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__table_copy__source_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.tableCopy.sourceTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Table Copy
    field_group_variant: Source Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__table_copy__write_disposition
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobConfiguration.tableCopy.writeDisposition
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Table Copy
    field_group_variant: Write Disposition


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_name__job_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobName.jobId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Name
    field_group_variant: Job ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_name__location
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobName.location
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Name
    field_group_variant: Location


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__billing_tier
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.billingTier
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Billing Tier


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.createTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__end
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.endTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__query_output_row_count
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.queryOutputRowCount
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Query Output Row Count


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__referenced_tables
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.referencedTables
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Referenced Tables


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__referenced_views
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.referencedViews
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Referenced Views


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__reservation_usage
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.reservationUsage
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Reservation Usage


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__start
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.startTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__total_billed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.totalBilledBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Total Billed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__total_load_output_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.totalLoadOutputBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Total Load Output Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__total_processed_bytes
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.totalProcessedBytes
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Total Processed Bytes


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__total_slot_ms
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.totalSlotMs
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Total Slot Ms


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__total_tables_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.totalTablesProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Total Tables Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__total_views_processed
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatistics.totalViewsProcessed
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics
    field_group_variant: Total Views Processed


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_status__additional_errors
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatus.additionalErrors
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Status
    field_group_variant: Additional Errors


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_status__error__code
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatus.error.code
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Status Error
    field_group_variant: Code


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_status__error__message
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatus.error.message
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Status Error
    field_group_variant: Message


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_status__state
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.job.jobStatus.state
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Status
    field_group_variant: State


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__job_query_response__total_results
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.jobQueryResponse.totalResults
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Job Query Response
    field_group_variant: Total Results


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__policy_response__audit_configs
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.policyResponse.auditConfigs
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Policy Response
    field_group_variant: Audit Configs


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__policy_response__bindings
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.policyResponse.bindings
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Policy Response
    field_group_variant: Bindings


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__policy_response__etag
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.policyResponse.etag
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Policy Response
    field_group_variant: Etag


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__policy_response__version
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.policyResponse.version
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Policy Response
    field_group_variant: Version


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__audit_configs
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.setIamPolicyRequest.policy.auditConfigs
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy
    field_group_variant: Audit Configs


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__bindings
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.setIamPolicyRequest.policy.bindings
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy
    field_group_variant: Bindings


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__etag
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.setIamPolicyRequest.policy.etag
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy
    field_group_variant: Etag


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__version
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.setIamPolicyRequest.policy.version
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy
    field_group_variant: Version


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__resource
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.setIamPolicyRequest.resource
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request
    field_group_variant: Resource


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__update_mask__paths
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.setIamPolicyRequest.updateMask.paths
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Update Mask
    field_group_variant: Paths


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_data_list_request__max_results
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableDataListRequest.maxResults
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Data List Request
    field_group_variant: Max Results


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_data_list_request__start_row
    type: number
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableDataListRequest.startRow
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Data List Request
    field_group_variant: Start Row


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_data_read_events
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableDataReadEvents
    group_label: Protopayload Auditlog Servicedata V1 Bigquery
    field_group_variant: Table Data Read Events


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_data_read_events__referenced_fields
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableDataReadEvents.referencedFields
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Data Read Events
    field_group_variant: Referenced Fields


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.createTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.encryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource Encryption
    field_group_variant: Kms Key Name


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__expire
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.expireTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__info__description
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.info.description
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource Info
    field_group_variant: Description


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__info__friendly_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.info.friendlyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource Info
    field_group_variant: Friendly Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__info__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.info.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource Info
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__table_name__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.tableName.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource Table Name
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__table_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.tableName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource Table Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__table_name__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.tableName.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource Table Name
    field_group_variant: Table ID


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__truncate
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.truncateTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__update
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.updateTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__view__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertRequest.resource.view.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource View
    field_group_variant: Query


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.createTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.encryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource Encryption
    field_group_variant: Kms Key Name


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__expire
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.expireTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__info__description
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.info.description
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource Info
    field_group_variant: Description


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__info__friendly_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.info.friendlyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource Info
    field_group_variant: Friendly Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__info__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.info.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource Info
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__table_name__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.tableName.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource Table Name
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__table_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.tableName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource Table Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__table_name__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.tableName.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource Table Name
    field_group_variant: Table ID


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__truncate
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.truncateTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__update
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.updateTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__view__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableInsertResponse.resource.view.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource View
    field_group_variant: Query


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.createTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.encryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource Encryption
    field_group_variant: Kms Key Name


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__expire
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.expireTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__info__description
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.info.description
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource Info
    field_group_variant: Description


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__info__friendly_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.info.friendlyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource Info
    field_group_variant: Friendly Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__info__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.info.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource Info
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__table_name__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.tableName.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource Table Name
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__table_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.tableName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource Table Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__table_name__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.tableName.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource Table Name
    field_group_variant: Table ID


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__truncate
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.truncateTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__update
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.updateTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__view__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateRequest.resource.view.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource View
    field_group_variant: Query


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.createTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__encryption__kms_key_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.encryption.kmsKeyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource Encryption
    field_group_variant: Kms Key Name


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__expire
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.expireTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__info__description
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.info.description
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource Info
    field_group_variant: Description


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__info__friendly_name
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.info.friendlyName
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource Info
    field_group_variant: Friendly Name


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__info__labels
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.info.labels
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource Info
    field_group_variant: Labels


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__schema_json
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.schemaJson
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource
    field_group_variant: Schema JSON


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__table_name__dataset_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.tableName.datasetId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource Table Name
    field_group_variant: Dataset ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__table_name__project_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.tableName.projectId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource Table Name
    field_group_variant: Project ID


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__table_name__table_id
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.tableName.tableId
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource Table Name
    field_group_variant: Table ID


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__truncate
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.truncateTime


  - dimension_group: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__update
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.updateTime


  - dimension: protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__view__query
    type: string
    sql: ${TABLE}.protopayload_auditlog.servicedata_v1_bigquery.tableUpdateResponse.resource.view.query
    group_label: Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource View
    field_group_variant: Query


  - dimension: protopayload_auditlog__status__code
    type: number
    sql: ${TABLE}.protopayload_auditlog.status.code
    group_label: Protopayload Auditlog Status
    field_group_variant: Code


  - dimension: protopayload_auditlog__status__message
    type: string
    sql: ${TABLE}.protopayload_auditlog.status.message
    group_label: Protopayload Auditlog Status
    field_group_variant: Message


  - dimension_group: receive_timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.receiveTimestamp


  - dimension: resource__labels__dataset_id
    type: string
    sql: ${TABLE}.resource.labels.dataset_id
    group_label: Resource Labels
    field_group_variant: Dataset ID


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
    - protopayload_auditlog__method_name
    - protopayload_auditlog__service_name
    - protopayload_auditlog__resource_name
    - protopayload_auditlog__authentication_info__service_account_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__event_name
    - protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__info__friendly_name
    - protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__info__friendly_name
    - protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__info__friendly_name
    - protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__info__friendly_name
    - protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__info__friendly_name
    - protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__info__friendly_name
    - protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__info__friendly_name
    - protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__info__friendly_name
    - protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__table_copy__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__table_copy__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__table_copy__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__table_copy__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__table_copy__destination_table_encryption__kms_key_name
    - protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__table_copy__destination_table_encryption__kms_key_name


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Authorization Info"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__authorization_info

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Granted" in Explore.

  - dimension: granted
    type: yesno
    sql: ${TABLE}.granted


  - dimension: permission
    type: string
    sql: ${TABLE}.permission


  - dimension: resource
    type: string
    sql: ${TABLE}.resource

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: resource_attributes__annotations
    hidden: yes
    sql: ${TABLE}.resourceAttributes.annotations
    group_label: Resource Attributes
    field_group_variant: Annotations

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  - dimension_group: resource_attributes__create
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.resourceAttributes.createTime


  - dimension_group: resource_attributes__delete
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.resourceAttributes.deleteTime


  - dimension: resource_attributes__display_name
    type: string
    sql: ${TABLE}.resourceAttributes.displayName
    group_label: Resource Attributes
    field_group_variant: Display Name


  - dimension: resource_attributes__etag
    type: string
    sql: ${TABLE}.resourceAttributes.etag
    group_label: Resource Attributes
    field_group_variant: Etag


  - dimension: resource_attributes__labels
    hidden: yes
    sql: ${TABLE}.resourceAttributes.labels
    group_label: Resource Attributes
    field_group_variant: Labels


  - dimension: resource_attributes__location
    type: string
    sql: ${TABLE}.resourceAttributes.location
    group_label: Resource Attributes
    field_group_variant: Location


  - dimension: resource_attributes__name
    type: string
    sql: ${TABLE}.resourceAttributes.name
    group_label: Resource Attributes
    field_group_variant: Name


  - dimension: resource_attributes__service
    type: string
    sql: ${TABLE}.resourceAttributes.service
    group_label: Resource Attributes
    field_group_variant: Service


  - dimension: resource_attributes__type
    type: string
    sql: ${TABLE}.resourceAttributes.type
    group_label: Resource Attributes
    field_group_variant: Type


  - dimension: resource_attributes__uid
    type: string
    sql: ${TABLE}.resourceAttributes.uid
    group_label: Resource Attributes
    field_group_variant: Uid


  - dimension_group: resource_attributes__update
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.resourceAttributes.updateTime


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Resource Location Current Locations"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__resource_location__current_locations

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Resource Location Current Locations" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__resource_location__current_locations
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__resource_location__current_locations


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Resource Location Original Locations"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__resource_location__original_locations

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Resource Location Original Locations" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__resource_location__original_locations
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__resource_location__original_locations


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Request Metadata Request Attributes Headers"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__request_metadata__request_attributes__headers

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Authorization Info Resource Attributes Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__authorization_info__resource_attributes__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Request Metadata Request Attributes Auth Audiences"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__audiences

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Request Metadata Request Attributes Auth Audiences" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__audiences
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__audiences


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Request Metadata Destination Attributes Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__request_metadata__destination_attributes__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Request Metadata Request Attributes Auth Access Levels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__access_levels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Request Metadata Request Attributes Auth Access Levels" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__access_levels
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__access_levels


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Authorization Info Resource Attributes Annotations"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__authorization_info__resource_attributes__annotations

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Policy Response Bindings"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__policy_response__bindings

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Condition Description" in Explore.

  - dimension: condition__description
    type: string
    sql: ${TABLE}.condition.description
    group_label: Condition
    field_group_variant: Description


  - dimension: condition__expression
    type: string
    sql: ${TABLE}.condition.expression
    group_label: Condition
    field_group_variant: Expression


  - dimension: condition__location
    type: string
    sql: ${TABLE}.condition.location
    group_label: Condition
    field_group_variant: Location


  - dimension: condition__title
    type: string
    sql: ${TABLE}.condition.title
    group_label: Condition
    field_group_variant: Title

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: members
    hidden: yes
    sql: ${TABLE}.members


  - dimension: role
    type: string
    sql: ${TABLE}.role


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Policy Response Bindings Members"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__policy_response__bindings__members

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Policy Response Bindings Members" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__policy_response__bindings__members
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__policy_response__bindings__members


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Policy Violation Info Org Policy Violation Info Resource Tags"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__policy_violation_info__org_policy_violation_info__resource_tags

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Policy Response Audit Configs"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__policy_response__audit_configs

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: audit_log_configs
    hidden: yes
    sql: ${TABLE}.auditLogConfigs

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Service" in Explore.

  - dimension: service
    type: string
    sql: ${TABLE}.service


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Table Data Read Events Referenced Fields"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__table_data_read_events__referenced_fields

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Table Data Read Events Referenced Fields" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__table_data_read_events__referenced_fields
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__table_data_read_events__referenced_fields


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Update Mask Paths"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__update_mask__paths

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Update Mask Paths" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__update_mask__paths
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__update_mask__paths


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Table Data Read Events"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__table_data_read_events

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Table Name Dataset ID" in Explore.

  - dimension: table_name__dataset_id
    type: string
    sql: ${TABLE}.tableName.datasetId
    group_label: Table Name
    field_group_variant: Dataset ID


  - dimension: table_name__project_id
    type: string
    sql: ${TABLE}.tableName.projectId
    group_label: Table Name
    field_group_variant: Project ID


  - dimension: table_name__table_id
    type: string
    sql: ${TABLE}.tableName.tableId
    group_label: Table Name
    field_group_variant: Table ID


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Authentication Info Service Account Delegation Info"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__authentication_info__service_account_delegation_info

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "First Party Principal Principal Email" in Explore.

  - dimension: first_party_principal__principal_email
    type: string
    sql: ${TABLE}.firstPartyPrincipal.principalEmail
    group_label: First Party Principal
    field_group_variant: Principal Email


  - dimension: principal_subject
    type: string
    sql: ${TABLE}.principalSubject


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy Bindings"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__bindings

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Condition Description" in Explore.

  - dimension: condition__description
    type: string
    sql: ${TABLE}.condition.description
    group_label: Condition
    field_group_variant: Description


  - dimension: condition__expression
    type: string
    sql: ${TABLE}.condition.expression
    group_label: Condition
    field_group_variant: Expression


  - dimension: condition__location
    type: string
    sql: ${TABLE}.condition.location
    group_label: Condition
    field_group_variant: Location


  - dimension: condition__title
    type: string
    sql: ${TABLE}.condition.title
    group_label: Condition
    field_group_variant: Title

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: members
    hidden: yes
    sql: ${TABLE}.members


  - dimension: role
    type: string
    sql: ${TABLE}.role


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Policy Violation Info Org Policy Violation Info Violation Info"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__policy_violation_info__org_policy_violation_info__violation_info

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Checked Value" in Explore.

  - dimension: checked_value
    type: string
    sql: ${TABLE}.checkedValue


  - dimension: constraint
    type: string
    sql: ${TABLE}.constraint


  - dimension: error_message
    type: string
    sql: ${TABLE}.errorMessage


  - dimension: policy_type
    type: string
    sql: ${TABLE}.policyType


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy Bindings Members"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__bindings__members

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy Bindings Members" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__bindings__members
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__bindings__members


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Table Insert Request Resource Info Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__table_insert_request__resource__info__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Table Update Request Resource Info Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__table_update_request__resource__info__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Table Update Response Resource Info Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__table_update_response__resource__info__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Table Insert Response Resource Info Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__table_insert_response__resource__info__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Request Resource Info Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__info__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Request Resource Info Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__info__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Response Resource Info Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__info__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Request Resource Acl Entries"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__dataset_update_request__resource__acl__entries

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Domain" in Explore.

  - dimension: domain
    type: string
    sql: ${TABLE}.domain


  - dimension: group_email
    type: string
    sql: ${TABLE}.groupEmail


  - dimension: role
    type: string
    sql: ${TABLE}.role


  - dimension: special_group
    type: string
    sql: ${TABLE}.specialGroup


  - dimension: user_email
    type: string
    sql: ${TABLE}.userEmail


  - dimension: view_name__dataset_id
    type: string
    sql: ${TABLE}.viewName.datasetId
    group_label: View Name
    field_group_variant: Dataset ID


  - dimension: view_name__project_id
    type: string
    sql: ${TABLE}.viewName.projectId
    group_label: View Name
    field_group_variant: Project ID


  - dimension: view_name__table_id
    type: string
    sql: ${TABLE}.viewName.tableId
    group_label: View Name
    field_group_variant: Table ID


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Request Resource Acl Entries"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_request__resource__acl__entries

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Domain" in Explore.

  - dimension: domain
    type: string
    sql: ${TABLE}.domain


  - dimension: group_email
    type: string
    sql: ${TABLE}.groupEmail


  - dimension: role
    type: string
    sql: ${TABLE}.role


  - dimension: special_group
    type: string
    sql: ${TABLE}.specialGroup


  - dimension: user_email
    type: string
    sql: ${TABLE}.userEmail


  - dimension: view_name__dataset_id
    type: string
    sql: ${TABLE}.viewName.datasetId
    group_label: View Name
    field_group_variant: Dataset ID


  - dimension: view_name__project_id
    type: string
    sql: ${TABLE}.viewName.projectId
    group_label: View Name
    field_group_variant: Project ID


  - dimension: view_name__table_id
    type: string
    sql: ${TABLE}.viewName.tableId
    group_label: View Name
    field_group_variant: Table ID


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Response Resource Info Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__info__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy Audit Configs"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__audit_configs

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: audit_log_configs
    hidden: yes
    sql: ${TABLE}.auditLogConfigs

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Service" in Explore.

  - dimension: service
    type: string
    sql: ${TABLE}.service


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Dataset Update Response Resource Acl Entries"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__dataset_update_response__resource__acl__entries

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Domain" in Explore.

  - dimension: domain
    type: string
    sql: ${TABLE}.domain


  - dimension: group_email
    type: string
    sql: ${TABLE}.groupEmail


  - dimension: role
    type: string
    sql: ${TABLE}.role


  - dimension: special_group
    type: string
    sql: ${TABLE}.specialGroup


  - dimension: user_email
    type: string
    sql: ${TABLE}.userEmail


  - dimension: view_name__dataset_id
    type: string
    sql: ${TABLE}.viewName.datasetId
    group_label: View Name
    field_group_variant: Dataset ID


  - dimension: view_name__project_id
    type: string
    sql: ${TABLE}.viewName.projectId
    group_label: View Name
    field_group_variant: Project ID


  - dimension: view_name__table_id
    type: string
    sql: ${TABLE}.viewName.tableId
    group_label: View Name
    field_group_variant: Table ID


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Dataset Insert Response Resource Acl Entries"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__dataset_insert_response__resource__acl__entries

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Domain" in Explore.

  - dimension: domain
    type: string
    sql: ${TABLE}.domain


  - dimension: group_email
    type: string
    sql: ${TABLE}.groupEmail


  - dimension: role
    type: string
    sql: ${TABLE}.role


  - dimension: special_group
    type: string
    sql: ${TABLE}.specialGroup


  - dimension: user_email
    type: string
    sql: ${TABLE}.userEmail


  - dimension: view_name__dataset_id
    type: string
    sql: ${TABLE}.viewName.datasetId
    group_label: View Name
    field_group_variant: Dataset ID


  - dimension: view_name__project_id
    type: string
    sql: ${TABLE}.viewName.projectId
    group_label: View Name
    field_group_variant: Project ID


  - dimension: view_name__table_id
    type: string
    sql: ${TABLE}.viewName.tableId
    group_label: View Name
    field_group_variant: Table ID


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Policy Response Audit Configs Audit Log Configs"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__policy_response__audit_configs__audit_log_configs

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: exempted_members
    hidden: yes
    sql: ${TABLE}.exemptedMembers

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Log Type" in Explore.

  - dimension: log_type
    type: string
    sql: ${TABLE}.logType


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Status Additional Errors"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_status__additional_errors

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  - dimension: code
    type: number
    sql: ${TABLE}.code


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_code
    type: sum
    sql: ${code}
  - measure: average_code
    type: average
    sql: ${code}

  - dimension: message
    type: string
    sql: ${TABLE}.message


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Load Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__load__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Status Additional Errors"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_status__additional_errors

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  - dimension: code
    type: number
    sql: ${TABLE}.code


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_code
    type: sum
    sql: ${code}
  - measure: average_code
    type: average
    sql: ${code}

  - dimension: message
    type: string
    sql: ${TABLE}.message


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Load Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__load__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics Reservation Usage"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__reservation_usage

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name


  - dimension: slot_ms
    type: number
    sql: ${TABLE}.slotMs


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_slot_ms
    type: sum
    sql: ${slot_ms}
  - measure: average_slot_ms
    type: average
    sql: ${slot_ms}

# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Status Additional Errors"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_status__additional_errors

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  - dimension: code
    type: number
    sql: ${TABLE}.code


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_code
    type: sum
    sql: ${code}
  - measure: average_code
    type: average
    sql: ${code}

  - dimension: message
    type: string
    sql: ${TABLE}.message


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics Reservation Usage"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__reservation_usage

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name


  - dimension: slot_ms
    type: number
    sql: ${TABLE}.slotMs


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_slot_ms
    type: sum
    sql: ${slot_ms}
  - measure: average_slot_ms
    type: average
    sql: ${slot_ms}

# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Load Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__load__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Status Additional Errors"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_status__additional_errors

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  - dimension: code
    type: number
    sql: ${TABLE}.code


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_code
    type: sum
    sql: ${code}
  - measure: average_code
    type: average
    sql: ${code}

  - dimension: message
    type: string
    sql: ${TABLE}.message


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics Referenced Views"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__referenced_views

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Labels"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__labels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  - dimension: key
    type: string
    sql: ${TABLE}.key


  - dimension: value
    type: string
    sql: ${TABLE}.value


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Load Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__load__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Status Additional Errors"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_status__additional_errors

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  - dimension: code
    type: number
    sql: ${TABLE}.code


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_code
    type: sum
    sql: ${code}
  - measure: average_code
    type: average
    sql: ${code}

  - dimension: message
    type: string
    sql: ${TABLE}.message


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Statistics Referenced Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_statistics__referenced_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics Referenced Views"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__referenced_views

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Policy Response Audit Configs Audit Log Configs Exempted Members"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__policy_response__audit_configs__audit_log_configs__exempted_members

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Policy Response Audit Configs Audit Log Configs Exempted Members" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__policy_response__audit_configs__audit_log_configs__exempted_members
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__policy_response__audit_configs__audit_log_configs__exempted_members


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Load Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__load__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Statistics Referenced Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_statistics__referenced_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics Reservation Usage"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__reservation_usage

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name


  - dimension: slot_ms
    type: number
    sql: ${TABLE}.slotMs


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_slot_ms
    type: sum
    sql: ${slot_ms}
  - measure: average_slot_ms
    type: average
    sql: ${slot_ms}

# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics Reservation Usage"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__reservation_usage

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name


  - dimension: slot_ms
    type: number
    sql: ${TABLE}.slotMs


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_slot_ms
    type: sum
    sql: ${slot_ms}
  - measure: average_slot_ms
    type: average
    sql: ${slot_ms}

# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics Referenced Views"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__referenced_views

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Status Additional Errors"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_status__additional_errors

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  - dimension: code
    type: number
    sql: ${TABLE}.code


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_code
    type: sum
    sql: ${code}
  - measure: average_code
    type: average
    sql: ${code}

  - dimension: message
    type: string
    sql: ${TABLE}.message


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics Reservation Usage"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__reservation_usage

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name


  - dimension: slot_ms
    type: number
    sql: ${TABLE}.slotMs


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_slot_ms
    type: sum
    sql: ${slot_ms}
  - measure: average_slot_ms
    type: average
    sql: ${slot_ms}

# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Extract Destination Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__extract__destination_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Extract Destination Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__extract__destination_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__extract__destination_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Statistics Referenced Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_statistics__referenced_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy Audit Configs Audit Log Configs"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__audit_configs__audit_log_configs

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: exempted_members
    hidden: yes
    sql: ${TABLE}.exemptedMembers

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Log Type" in Explore.

  - dimension: log_type
    type: string
    sql: ${TABLE}.logType


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Load Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__load__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics Referenced Views"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__referenced_views

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Extract Destination Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__extract__destination_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Extract Destination Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__extract__destination_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__extract__destination_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Statistics Referenced Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_statistics__referenced_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics Referenced Views"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__referenced_views

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query Table Definitions"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__table_definitions

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: source_uris
    hidden: yes
    sql: ${TABLE}.sourceUris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Statistics Referenced Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_statistics__referenced_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query Table Definitions"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__table_definitions

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: source_uris
    hidden: yes
    sql: ${TABLE}.sourceUris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics Reservation Usage"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__reservation_usage

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name


  - dimension: slot_ms
    type: number
    sql: ${TABLE}.slotMs


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_slot_ms
    type: sum
    sql: ${slot_ms}
  - measure: average_slot_ms
    type: average
    sql: ${slot_ms}

# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Extract Destination Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__extract__destination_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Extract Destination Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__extract__destination_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__extract__destination_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Table Copy Source Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__table_copy__source_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics Referenced Views"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__referenced_views

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Extract Destination Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__extract__destination_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Extract Destination Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__extract__destination_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__extract__destination_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Table Copy Source Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__table_copy__source_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query Table Definitions"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__table_definitions

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: source_uris
    hidden: yes
    sql: ${TABLE}.sourceUris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Statistics Referenced Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_statistics__referenced_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Extract Destination Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__extract__destination_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Extract Destination Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__extract__destination_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__extract__destination_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query Table Definitions"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__table_definitions

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: source_uris
    hidden: yes
    sql: ${TABLE}.sourceUris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query Table Definitions Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__table_definitions__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Response Job Job Configuration Query Table Definitions Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__table_definitions__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_response__job__job_configuration__query__table_definitions__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy Audit Configs Audit Log Configs Exempted Members"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__audit_configs__audit_log_configs__exempted_members

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Set Iam Policy Request Policy Audit Configs Audit Log Configs Exempted Members" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__audit_configs__audit_log_configs__exempted_members
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__set_iam_policy_request__policy__audit_configs__audit_log_configs__exempted_members


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query Table Definitions"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__table_definitions

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: source_uris
    hidden: yes
    sql: ${TABLE}.sourceUris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query Table Definitions Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__table_definitions__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Completed Event Job Job Configuration Query Table Definitions Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__table_definitions__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_completed_event__job__job_configuration__query__table_definitions__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Table Copy Source Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__table_copy__source_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Extract Destination Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__extract__destination_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Extract Destination Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__extract__destination_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__extract__destination_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Table Copy Source Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__table_copy__source_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Table Copy Source Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__table_copy__source_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query Table Definitions Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__table_definitions__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Query Done Response Job Job Configuration Query Table Definitions Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__table_definitions__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_query_done_response__job__job_configuration__query__table_definitions__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query Table Definitions"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__table_definitions

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: source_uris
    hidden: yes
    sql: ${TABLE}.sourceUris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query Table Definitions Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__table_definitions__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Request Resource Job Configuration Query Table Definitions Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__table_definitions__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_request__resource__job_configuration__query__table_definitions__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query Table Definitions Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__table_definitions__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Insert Response Resource Job Configuration Query Table Definitions Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__table_definitions__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_insert_response__resource__job_configuration__query__table_definitions__source_uris


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Table Copy Source Tables"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__table_copy__source_tables

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dataset ID" in Explore.

  - dimension: dataset_id
    type: string
    sql: ${TABLE}.datasetId


  - dimension: project_id
    type: string
    sql: ${TABLE}.projectId


  - dimension: table_id
    type: string
    sql: ${TABLE}.tableId


# The name of this view in Looker is "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query Table Definitions Source Uris"
- view: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__table_definitions__source_uris

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Activity 20230509 Protopayload Auditlog Servicedata V1 Bigquery Job Get Query Results Response Job Job Configuration Query Table Definitions Source Uris" in Explore.

  - dimension: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__table_definitions__source_uris
    type: string
    sql: cloudaudit_googleapis_com_activity_20230509__protopayload_auditlog__servicedata_v1_bigquery__job_get_query_results_response__job__job_configuration__query__table_definitions__source_uris

