# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509"
- view: cloudaudit_googleapis_com_policy_20230509
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: |
      `dialogflowagentlogs.cloudaudit_googleapis_com_policy_20230509`

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


  - dimension: resource__labels__method
    type: string
    sql: ${TABLE}.resource.labels.method
    group_label: Resource Labels
    field_group_variant: Method


  - dimension: resource__labels__project_id
    type: string
    sql: ${TABLE}.resource.labels.project_id
    group_label: Resource Labels
    field_group_variant: Project ID


  - dimension: resource__labels__service
    type: string
    sql: ${TABLE}.resource.labels.service
    group_label: Resource Labels
    field_group_variant: Service


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
    drill_fields: [log_name, protopayload_auditlog__method_name, protopayload_auditlog__service_name, protopayload_auditlog__resource_name, protopayload_auditlog__authentication_info__service_account_key_name]


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Authorization Info"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__authorization_info

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


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Resource Location Current Locations"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__resource_location__current_locations

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Resource Location Current Locations" in Explore.

  - dimension: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__resource_location__current_locations
    type: string
    sql: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__resource_location__current_locations


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Resource Location Original Locations"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__resource_location__original_locations

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Resource Location Original Locations" in Explore.

  - dimension: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__resource_location__original_locations
    type: string
    sql: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__resource_location__original_locations


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Request Metadata Request Attributes Headers"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__request_metadata__request_attributes__headers

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


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Authorization Info Resource Attributes Labels"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__authorization_info__resource_attributes__labels

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


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Request Metadata Request Attributes Auth Audiences"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__audiences

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Request Metadata Request Attributes Auth Audiences" in Explore.

  - dimension: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__audiences
    type: string
    sql: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__audiences


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Request Metadata Destination Attributes Labels"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__request_metadata__destination_attributes__labels

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


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Request Metadata Request Attributes Auth Access Levels"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__access_levels

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Request Metadata Request Attributes Auth Access Levels" in Explore.

  - dimension: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__access_levels
    type: string
    sql: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__request_metadata__request_attributes__auth__access_levels


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Authorization Info Resource Attributes Annotations"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__authorization_info__resource_attributes__annotations

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


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Policy Violation Info Org Policy Violation Info Resource Tags"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__policy_violation_info__org_policy_violation_info__resource_tags

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


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Authentication Info Service Account Delegation Info"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__authentication_info__service_account_delegation_info

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


# The name of this view in Looker is "Cloudaudit Googleapis Com Policy 20230509 Protopayload Auditlog Policy Violation Info Org Policy Violation Info Violation Info"
- view: cloudaudit_googleapis_com_policy_20230509__protopayload_auditlog__policy_violation_info__org_policy_violation_info__violation_info

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

