# The name of this view in Looker is "Dlpoutput Latest V1"
- view: dlpoutput_latest_v1
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: |
      `dialogflowagentlogs.dlp-output_latest_v1`

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column Profile Column" in Explore.

  - dimension: column_profile__column
    type: string
    sql: ${TABLE}.column_profile.column
    group_label: Column Profile
    field_group_variant: Column


  - dimension: column_profile__column_info_type__estimated_prevalence
    type: number
    sql: ${TABLE}.column_profile.column_info_type.estimated_prevalence
    group_label: Column Profile Column Info Type
    field_group_variant: Estimated Prevalence


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_column_profile__column_info_type__estimated_prevalence
    type: sum
    sql: ${column_profile__column_info_type__estimated_prevalence}
  - measure: average_column_profile__column_info_type__estimated_prevalence
    type: average
    sql: ${column_profile__column_info_type__estimated_prevalence}

  - dimension: column_profile__column_info_type__info_type__name
    type: string
    sql: ${TABLE}.column_profile.column_info_type.info_type.name
    group_label: Column Profile Column Info Type Info Type
    field_group_variant: Name


  - dimension: column_profile__column_info_type__info_type__sensitivity_score__score
    type: string
    sql: ${TABLE}.column_profile.column_info_type.info_type.sensitivity_score.score
    group_label: Column Profile Column Info Type Info Type Sensitivity Score
    field_group_variant: Score


  - dimension: column_profile__column_info_type__info_type__version
    type: string
    sql: ${TABLE}.column_profile.column_info_type.info_type.version
    group_label: Column Profile Column Info Type Info Type
    field_group_variant: Version


  - dimension: column_profile__column_type
    type: string
    sql: ${TABLE}.column_profile.column_type
    group_label: Column Profile
    field_group_variant: Column Type


  - dimension: column_profile__data_risk_level__score
    type: string
    sql: ${TABLE}.column_profile.data_risk_level.score
    group_label: Column Profile Data Risk Level
    field_group_variant: Score


  - dimension: column_profile__dataset_id
    type: string
    sql: ${TABLE}.column_profile.dataset_id
    group_label: Column Profile
    field_group_variant: Dataset ID


  - dimension: column_profile__dataset_location
    type: string
    sql: ${TABLE}.column_profile.dataset_location
    group_label: Column Profile
    field_group_variant: Dataset Location


  - dimension: column_profile__dataset_project_id
    type: string
    sql: ${TABLE}.column_profile.dataset_project_id
    group_label: Column Profile
    field_group_variant: Dataset Project ID


  - dimension: column_profile__free_text_score
    type: number
    sql: ${TABLE}.column_profile.free_text_score
    group_label: Column Profile
    field_group_variant: Free Text Score


  - dimension: column_profile__name
    type: string
    sql: ${TABLE}.column_profile.name
    group_label: Column Profile
    field_group_variant: Name

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: column_profile__other_matches
    hidden: yes
    sql: ${TABLE}.column_profile.other_matches
    group_label: Column Profile
    field_group_variant: Other Matches


  - dimension: column_profile__policy_state
    type: string
    sql: ${TABLE}.column_profile.policy_state
    group_label: Column Profile
    field_group_variant: Policy State


  - dimension: column_profile__profile_last_generated__nanos
    type: number
    sql: ${TABLE}.column_profile.profile_last_generated.nanos
    group_label: Column Profile Profile Last Generated
    field_group_variant: Nanos


  - dimension: column_profile__profile_last_generated__seconds
    type: number
    sql: ${TABLE}.column_profile.profile_last_generated.seconds
    group_label: Column Profile Profile Last Generated
    field_group_variant: Seconds

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  - dimension_group: column_profile__profile_last_generated__timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.column_profile.profile_last_generated.timestamp


  - dimension: column_profile__profile_status__status__code
    type: number
    sql: ${TABLE}.column_profile.profile_status.status.code
    group_label: Column Profile Profile Status Status
    field_group_variant: Code


  - dimension: column_profile__profile_status__status__message
    type: string
    sql: ${TABLE}.column_profile.profile_status.status.message
    group_label: Column Profile Profile Status Status
    field_group_variant: Message


  - dimension: column_profile__profile_status__timestamp__nanos
    type: number
    sql: ${TABLE}.column_profile.profile_status.timestamp.nanos
    group_label: Column Profile Profile Status Timestamp
    field_group_variant: Nanos


  - dimension: column_profile__profile_status__timestamp__seconds
    type: number
    sql: ${TABLE}.column_profile.profile_status.timestamp.seconds
    group_label: Column Profile Profile Status Timestamp
    field_group_variant: Seconds


  - dimension_group: column_profile__profile_status__timestamp__timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.column_profile.profile_status.timestamp.timestamp


  - dimension: column_profile__sensitivity_score__score
    type: string
    sql: ${TABLE}.column_profile.sensitivity_score.score
    group_label: Column Profile Sensitivity Score
    field_group_variant: Score


  - dimension: column_profile__table_data_profile
    type: string
    sql: ${TABLE}.column_profile.table_data_profile
    group_label: Column Profile
    field_group_variant: Table Data Profile


  - dimension: column_profile__table_full_resource
    type: string
    sql: ${TABLE}.column_profile.table_full_resource
    group_label: Column Profile
    field_group_variant: Table Full Resource


  - dimension: column_profile__table_id
    type: string
    sql: ${TABLE}.column_profile.table_id
    group_label: Column Profile
    field_group_variant: Table ID


  - dimension: table_profile__config_snapshot__data_profile_job__data_profile_actions
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.data_profile_actions
    group_label: Table Profile Config Snapshot Data Profile Job
    field_group_variant: Data Profile Actions


  - dimension: table_profile__config_snapshot__data_profile_job__inspect_templates
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.inspect_templates
    group_label: Table Profile Config Snapshot Data Profile Job
    field_group_variant: Inspect Templates


  - dimension: table_profile__config_snapshot__data_profile_job__location__folder_id
    type: number
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.location.folder_id
    group_label: Table Profile Config Snapshot Data Profile Job Location
    field_group_variant: Folder ID


  - dimension: table_profile__config_snapshot__data_profile_job__location__organization_id
    type: number
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.location.organization_id
    group_label: Table Profile Config Snapshot Data Profile Job Location
    field_group_variant: Organization ID


  - dimension: table_profile__config_snapshot__data_profile_job__project_id
    type: string
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.project_id
    group_label: Table Profile Config Snapshot Data Profile Job
    field_group_variant: Project ID


  - dimension: table_profile__config_snapshot__inspect_config__content_options
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.content_options
    group_label: Table Profile Config Snapshot Inspect Config
    field_group_variant: Content Options


  - dimension: table_profile__config_snapshot__inspect_config__custom_info_types
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.custom_info_types
    group_label: Table Profile Config Snapshot Inspect Config
    field_group_variant: Custom Info Types


  - dimension: table_profile__config_snapshot__inspect_config__exclude_info_types
    type: yesno
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.exclude_info_types
    group_label: Table Profile Config Snapshot Inspect Config
    field_group_variant: Exclude Info Types


  - dimension: table_profile__config_snapshot__inspect_config__include_quote
    type: yesno
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.include_quote
    group_label: Table Profile Config Snapshot Inspect Config
    field_group_variant: Include Quote


  - dimension: table_profile__config_snapshot__inspect_config__info_types
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.info_types
    group_label: Table Profile Config Snapshot Inspect Config
    field_group_variant: Info Types


  - dimension: table_profile__config_snapshot__inspect_config__limits__max_findings_per_info_type
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.limits.max_findings_per_info_type
    group_label: Table Profile Config Snapshot Inspect Config Limits
    field_group_variant: Max Findings per Info Type


  - dimension: table_profile__config_snapshot__inspect_config__limits__max_findings_per_item
    type: number
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.limits.max_findings_per_item
    group_label: Table Profile Config Snapshot Inspect Config Limits
    field_group_variant: Max Findings per Item


  - dimension: table_profile__config_snapshot__inspect_config__limits__max_findings_per_request
    type: number
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.limits.max_findings_per_request
    group_label: Table Profile Config Snapshot Inspect Config Limits
    field_group_variant: Max Findings per Request


  - dimension: table_profile__config_snapshot__inspect_config__min_likelihood
    type: string
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.min_likelihood
    group_label: Table Profile Config Snapshot Inspect Config
    field_group_variant: Min Likelihood


  - dimension: table_profile__config_snapshot__inspect_config__min_likelihood_per_info_type
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.min_likelihood_per_info_type
    group_label: Table Profile Config Snapshot Inspect Config
    field_group_variant: Min Likelihood per Info Type


  - dimension: table_profile__config_snapshot__inspect_config__rule_set__info_types
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.rule_set.info_types
    group_label: Table Profile Config Snapshot Inspect Config Rule Set
    field_group_variant: Info Types


  - dimension: table_profile__config_snapshot__inspect_config__rule_set__rules
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.rule_set.rules
    group_label: Table Profile Config Snapshot Inspect Config Rule Set
    field_group_variant: Rules


  - dimension: table_profile__config_snapshot__trigger_name
    type: string
    sql: ${TABLE}.table_profile.config_snapshot.trigger_name
    group_label: Table Profile Config Snapshot
    field_group_variant: Trigger Name


  - dimension: table_profile__data_risk_level__score
    type: string
    sql: ${TABLE}.table_profile.data_risk_level.score
    group_label: Table Profile Data Risk Level
    field_group_variant: Score


  - dimension: table_profile__dataset_id
    type: string
    sql: ${TABLE}.table_profile.dataset_id
    group_label: Table Profile
    field_group_variant: Dataset ID


  - dimension: table_profile__dataset_location
    type: string
    sql: ${TABLE}.table_profile.dataset_location
    group_label: Table Profile
    field_group_variant: Dataset Location


  - dimension: table_profile__dataset_project_id
    type: string
    sql: ${TABLE}.table_profile.dataset_project_id
    group_label: Table Profile
    field_group_variant: Dataset Project ID


  - dimension: table_profile__encryption_status
    type: string
    sql: ${TABLE}.table_profile.encryption_status
    group_label: Table Profile
    field_group_variant: Encryption Status


  - dimension: table_profile__expiration_time__nanos
    type: number
    sql: ${TABLE}.table_profile.expiration_time.nanos
    group_label: Table Profile Expiration Time
    field_group_variant: Nanos


  - dimension: table_profile__expiration_time__seconds
    type: number
    sql: ${TABLE}.table_profile.expiration_time.seconds
    group_label: Table Profile Expiration Time
    field_group_variant: Seconds


  - dimension_group: table_profile__expiration_time__timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.table_profile.expiration_time.timestamp


  - dimension: table_profile__failed_column_count
    type: number
    sql: ${TABLE}.table_profile.failed_column_count
    group_label: Table Profile
    field_group_variant: Failed Column Count


  - dimension: table_profile__full_resource
    type: string
    sql: ${TABLE}.table_profile.full_resource
    group_label: Table Profile
    field_group_variant: Full Resource


  - dimension: table_profile__last_modified_time__nanos
    type: number
    sql: ${TABLE}.table_profile.last_modified_time.nanos
    group_label: Table Profile Last Modified Time
    field_group_variant: Nanos


  - dimension: table_profile__last_modified_time__seconds
    type: number
    sql: ${TABLE}.table_profile.last_modified_time.seconds
    group_label: Table Profile Last Modified Time
    field_group_variant: Seconds


  - dimension_group: table_profile__last_modified_time__timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.table_profile.last_modified_time.timestamp


  - dimension: table_profile__name
    type: string
    sql: ${TABLE}.table_profile.name
    group_label: Table Profile
    field_group_variant: Name


  - dimension: table_profile__other_info_types
    hidden: yes
    sql: ${TABLE}.table_profile.other_info_types
    group_label: Table Profile
    field_group_variant: Other Info Types


  - dimension: table_profile__predicted_info_types
    hidden: yes
    sql: ${TABLE}.table_profile.predicted_info_types
    group_label: Table Profile
    field_group_variant: Predicted Info Types


  - dimension: table_profile__profile_last_generated__nanos
    type: number
    sql: ${TABLE}.table_profile.profile_last_generated.nanos
    group_label: Table Profile Profile Last Generated
    field_group_variant: Nanos


  - dimension: table_profile__profile_last_generated__seconds
    type: number
    sql: ${TABLE}.table_profile.profile_last_generated.seconds
    group_label: Table Profile Profile Last Generated
    field_group_variant: Seconds


  - dimension_group: table_profile__profile_last_generated__timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.table_profile.profile_last_generated.timestamp


  - dimension: table_profile__profile_status__status__code
    type: number
    sql: ${TABLE}.table_profile.profile_status.status.code
    group_label: Table Profile Profile Status Status
    field_group_variant: Code


  - dimension: table_profile__profile_status__status__message
    type: string
    sql: ${TABLE}.table_profile.profile_status.status.message
    group_label: Table Profile Profile Status Status
    field_group_variant: Message


  - dimension: table_profile__profile_status__timestamp__nanos
    type: number
    sql: ${TABLE}.table_profile.profile_status.timestamp.nanos
    group_label: Table Profile Profile Status Timestamp
    field_group_variant: Nanos


  - dimension: table_profile__profile_status__timestamp__seconds
    type: number
    sql: ${TABLE}.table_profile.profile_status.timestamp.seconds
    group_label: Table Profile Profile Status Timestamp
    field_group_variant: Seconds


  - dimension_group: table_profile__profile_status__timestamp__timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.table_profile.profile_status.timestamp.timestamp


  - dimension: table_profile__project_data_profile
    type: string
    sql: ${TABLE}.table_profile.project_data_profile
    group_label: Table Profile
    field_group_variant: Project Data Profile


  - dimension: table_profile__resource_labels
    hidden: yes
    sql: ${TABLE}.table_profile.resource_labels
    group_label: Table Profile
    field_group_variant: Resource Labels


  - dimension: table_profile__resource_visibility
    type: string
    sql: ${TABLE}.table_profile.resource_visibility
    group_label: Table Profile
    field_group_variant: Resource Visibility


  - dimension: table_profile__row_count
    type: number
    sql: ${TABLE}.table_profile.row_count
    group_label: Table Profile
    field_group_variant: Row Count


  - dimension: table_profile__scanned_column_count
    type: number
    sql: ${TABLE}.table_profile.scanned_column_count
    group_label: Table Profile
    field_group_variant: Scanned Column Count


  - dimension: table_profile__sensitivity_score__score
    type: string
    sql: ${TABLE}.table_profile.sensitivity_score.score
    group_label: Table Profile Sensitivity Score
    field_group_variant: Score


  - dimension: table_profile__table_id
    type: string
    sql: ${TABLE}.table_profile.table_id
    group_label: Table Profile
    field_group_variant: Table ID


  - dimension: table_profile__table_size_bytes
    type: number
    sql: ${TABLE}.table_profile.table_size_bytes
    group_label: Table Profile
    field_group_variant: Table Size Bytes

  - measure: count
    type: count
    drill_fields: [table_profile__name, column_profile__name, table_profile__config_snapshot__trigger_name, column_profile__column_info_type__info_type__name]


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Resource Labels"
- view: dlp-output_latest_v1__table_profile__resource_labels

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


# The name of this view in Looker is "Dlp-output Latest V1 Column Profile Other Matches"
- view: dlp-output_latest_v1__column_profile__other_matches

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Estimated Prevalence" in Explore.

  - dimension: estimated_prevalence
    type: number
    sql: ${TABLE}.estimated_prevalence


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_estimated_prevalence
    type: sum
    sql: ${estimated_prevalence}
  - measure: average_estimated_prevalence
    type: average
    sql: ${estimated_prevalence}

  - dimension: excluded_from_analysis
    type: yesno
    sql: ${TABLE}.excluded_from_analysis


  - dimension: info_type__name
    type: string
    sql: ${TABLE}.info_type.name
    group_label: Info Type
    field_group_variant: Name


  - dimension: info_type__sensitivity_score__score
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score
    group_label: Info Type Sensitivity Score
    field_group_variant: Score


  - dimension: info_type__version
    type: string
    sql: ${TABLE}.info_type.version
    group_label: Info Type
    field_group_variant: Version


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Other Info Types"
- view: dlp-output_latest_v1__table_profile__other_info_types

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Estimated Prevalence" in Explore.

  - dimension: estimated_prevalence
    type: number
    sql: ${TABLE}.estimated_prevalence


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_estimated_prevalence
    type: sum
    sql: ${estimated_prevalence}
  - measure: average_estimated_prevalence
    type: average
    sql: ${estimated_prevalence}

  - dimension: excluded_from_analysis
    type: yesno
    sql: ${TABLE}.excluded_from_analysis


  - dimension: info_type__name
    type: string
    sql: ${TABLE}.info_type.name
    group_label: Info Type
    field_group_variant: Name


  - dimension: info_type__sensitivity_score__score
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score
    group_label: Info Type Sensitivity Score
    field_group_variant: Score


  - dimension: info_type__version
    type: string
    sql: ${TABLE}.info_type.version
    group_label: Info Type
    field_group_variant: Version


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Predicted Info Types"
- view: dlp-output_latest_v1__table_profile__predicted_info_types

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Estimated Prevalence" in Explore.

  - dimension: estimated_prevalence
    type: number
    sql: ${TABLE}.estimated_prevalence


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_estimated_prevalence
    type: sum
    sql: ${estimated_prevalence}
  - measure: average_estimated_prevalence
    type: average
    sql: ${estimated_prevalence}

  - dimension: info_type__name
    type: string
    sql: ${TABLE}.info_type.name
    group_label: Info Type
    field_group_variant: Name


  - dimension: info_type__sensitivity_score__score
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score
    group_label: Info Type Sensitivity Score
    field_group_variant: Score


  - dimension: info_type__version
    type: string
    sql: ${TABLE}.info_type.version
    group_label: Info Type
    field_group_variant: Version


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Info Types"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__info_types

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name


  - dimension: sensitivity_score__score
    type: string
    sql: ${TABLE}.sensitivity_score.score
    group_label: Sensitivity Score
    field_group_variant: Score


  - dimension: version
    type: string
    sql: ${TABLE}.version


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Content Options"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__content_options

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dlpoutput Latest V1 Table Profile Config Snapshot Inspect Config Content Options" in Explore.

  - dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__content_options
    type: string
    sql: |
      `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__content_options`


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Data Profile Job Inspect Templates"
- view: dlp-output_latest_v1__table_profile__config_snapshot__data_profile_job__inspect_templates

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dlpoutput Latest V1 Table Profile Config Snapshot Data Profile Job Inspect Templates" in Explore.

  - dimension: dlpoutput_latest_v1__table_profile__config_snapshot__data_profile_job__inspect_templates
    type: string
    sql: |
      `dlp-output_latest_v1__table_profile__config_snapshot__data_profile_job__inspect_templates`


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Info Types"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__info_types

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name


  - dimension: sensitivity_score__score
    type: string
    sql: ${TABLE}.sensitivity_score.score
    group_label: Sensitivity Score
    field_group_variant: Score


  - dimension: version
    type: string
    sql: ${TABLE}.version


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Custom Info Types"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: detection_rules
    hidden: yes
    sql: ${TABLE}.detection_rules

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dictionary Big Query Column Field Name" in Explore.

  - dimension: dictionary__big_query_column__field__name
    type: string
    sql: ${TABLE}.dictionary.big_query_column.field.name
    group_label: Dictionary Big Query Column Field
    field_group_variant: Name


  - dimension: dictionary__big_query_column__table__dataset_id
    type: string
    sql: ${TABLE}.dictionary.big_query_column.table.dataset_id
    group_label: Dictionary Big Query Column Table
    field_group_variant: Dataset ID


  - dimension: dictionary__big_query_column__table__project_id
    type: string
    sql: ${TABLE}.dictionary.big_query_column.table.project_id
    group_label: Dictionary Big Query Column Table
    field_group_variant: Project ID


  - dimension: dictionary__big_query_column__table__table_id
    type: string
    sql: ${TABLE}.dictionary.big_query_column.table.table_id
    group_label: Dictionary Big Query Column Table
    field_group_variant: Table ID


  - dimension: dictionary__cloud_storage_path__path
    type: string
    sql: ${TABLE}.dictionary.cloud_storage_path.path
    group_label: Dictionary Cloud Storage Path
    field_group_variant: Path


  - dimension: dictionary__word_list__words
    hidden: yes
    sql: ${TABLE}.dictionary.word_list.words
    group_label: Dictionary Word List
    field_group_variant: Words


  - dimension: exclusion_type
    type: string
    sql: ${TABLE}.exclusion_type


  - dimension: info_type__name
    type: string
    sql: ${TABLE}.info_type.name
    group_label: Info Type
    field_group_variant: Name


  - dimension: info_type__sensitivity_score__score
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score
    group_label: Info Type Sensitivity Score
    field_group_variant: Score


  - dimension: info_type__version
    type: string
    sql: ${TABLE}.info_type.version
    group_label: Info Type
    field_group_variant: Version


  - dimension: likelihood
    type: string
    sql: ${TABLE}.likelihood


  - dimension: regex__group_indexes
    hidden: yes
    sql: ${TABLE}.regex.group_indexes
    group_label: Regex
    field_group_variant: Group Indexes


  - dimension: regex__pattern
    type: string
    sql: ${TABLE}.regex.pattern
    group_label: Regex
    field_group_variant: Pattern


  - dimension: sensitivity_score__score
    type: string
    sql: ${TABLE}.sensitivity_score.score
    group_label: Sensitivity Score
    field_group_variant: Score


  - dimension: stored_type__create_time__nanos
    type: number
    sql: ${TABLE}.stored_type.create_time.nanos
    group_label: Stored Type Create Time
    field_group_variant: Nanos


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_stored_type__create_time__nanos
    type: sum
    sql: ${stored_type__create_time__nanos}
  - measure: average_stored_type__create_time__nanos
    type: average
    sql: ${stored_type__create_time__nanos}

  - dimension: stored_type__create_time__seconds
    type: number
    sql: ${TABLE}.stored_type.create_time.seconds
    group_label: Stored Type Create Time
    field_group_variant: Seconds

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  - dimension_group: stored_type__create_time__timestamp
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.stored_type.create_time.timestamp


  - dimension: stored_type__name
    type: string
    sql: ${TABLE}.stored_type.name
    group_label: Stored Type
    field_group_variant: Name


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Custom Info Types Regex Group Indexes"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dlpoutput Latest V1 Table Profile Config Snapshot Inspect Config Custom Info Types Regex Group Indexes" in Explore.

  - dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes
    type: number
    sql: |
      `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes`


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes
    type: sum
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes}
  - measure: average_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes
    type: average
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes}

# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Exclusion Rule Dictionary Big Query Column Field Name" in Explore.

  - dimension: exclusion_rule__dictionary__big_query_column__field__name
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.big_query_column.field.name
    group_label: Exclusion Rule Dictionary Big Query Column Field
    field_group_variant: Name


  - dimension: exclusion_rule__dictionary__big_query_column__table__dataset_id
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.big_query_column.table.dataset_id
    group_label: Exclusion Rule Dictionary Big Query Column Table
    field_group_variant: Dataset ID


  - dimension: exclusion_rule__dictionary__big_query_column__table__project_id
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.big_query_column.table.project_id
    group_label: Exclusion Rule Dictionary Big Query Column Table
    field_group_variant: Project ID


  - dimension: exclusion_rule__dictionary__big_query_column__table__table_id
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.big_query_column.table.table_id
    group_label: Exclusion Rule Dictionary Big Query Column Table
    field_group_variant: Table ID


  - dimension: exclusion_rule__dictionary__cloud_storage_path__path
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.cloud_storage_path.path
    group_label: Exclusion Rule Dictionary Cloud Storage Path
    field_group_variant: Path

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: exclusion_rule__dictionary__word_list__words
    hidden: yes
    sql: ${TABLE}.exclusion_rule.dictionary.word_list.words
    group_label: Exclusion Rule Dictionary Word List
    field_group_variant: Words


  - dimension: exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes
    hidden: yes
    sql: ${TABLE}.exclusion_rule.exclude_by_hotword.hotword_regex.group_indexes
    group_label: Exclusion Rule Exclude By Hotword Hotword Regex
    field_group_variant: Group Indexes


  - dimension: exclusion_rule__exclude_by_hotword__hotword_regex__pattern
    type: string
    sql: ${TABLE}.exclusion_rule.exclude_by_hotword.hotword_regex.pattern
    group_label: Exclusion Rule Exclude By Hotword Hotword Regex
    field_group_variant: Pattern


  - dimension: exclusion_rule__exclude_by_hotword__proximity__window_after
    type: number
    sql: ${TABLE}.exclusion_rule.exclude_by_hotword.proximity.window_after
    group_label: Exclusion Rule Exclude By Hotword Proximity
    field_group_variant: Window After


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_exclusion_rule__exclude_by_hotword__proximity__window_after
    type: sum
    sql: ${exclusion_rule__exclude_by_hotword__proximity__window_after}
  - measure: average_exclusion_rule__exclude_by_hotword__proximity__window_after
    type: average
    sql: ${exclusion_rule__exclude_by_hotword__proximity__window_after}

  - dimension: exclusion_rule__exclude_by_hotword__proximity__window_before
    type: number
    sql: ${TABLE}.exclusion_rule.exclude_by_hotword.proximity.window_before
    group_label: Exclusion Rule Exclude By Hotword Proximity
    field_group_variant: Window Before


  - dimension: exclusion_rule__exclude_info_types__info_types
    hidden: yes
    sql: ${TABLE}.exclusion_rule.exclude_info_types.info_types
    group_label: Exclusion Rule Exclude Info Types
    field_group_variant: Info Types


  - dimension: exclusion_rule__matching_type
    type: string
    sql: ${TABLE}.exclusion_rule.matching_type
    group_label: Exclusion Rule
    field_group_variant: Matching Type


  - dimension: exclusion_rule__regex__group_indexes
    hidden: yes
    sql: ${TABLE}.exclusion_rule.regex.group_indexes
    group_label: Exclusion Rule Regex
    field_group_variant: Group Indexes


  - dimension: exclusion_rule__regex__pattern
    type: string
    sql: ${TABLE}.exclusion_rule.regex.pattern
    group_label: Exclusion Rule Regex
    field_group_variant: Pattern


  - dimension: hotword_rule__hotword_regex__group_indexes
    hidden: yes
    sql: ${TABLE}.hotword_rule.hotword_regex.group_indexes
    group_label: Hotword Rule Hotword Regex
    field_group_variant: Group Indexes


  - dimension: hotword_rule__hotword_regex__pattern
    type: string
    sql: ${TABLE}.hotword_rule.hotword_regex.pattern
    group_label: Hotword Rule Hotword Regex
    field_group_variant: Pattern


  - dimension: hotword_rule__likelihood_adjustment__fixed_likelihood
    type: string
    sql: ${TABLE}.hotword_rule.likelihood_adjustment.fixed_likelihood
    group_label: Hotword Rule Likelihood Adjustment
    field_group_variant: Fixed Likelihood


  - dimension: hotword_rule__likelihood_adjustment__relative_likelihood
    type: number
    sql: ${TABLE}.hotword_rule.likelihood_adjustment.relative_likelihood
    group_label: Hotword Rule Likelihood Adjustment
    field_group_variant: Relative Likelihood


  - dimension: hotword_rule__proximity__window_after
    type: number
    sql: ${TABLE}.hotword_rule.proximity.window_after
    group_label: Hotword Rule Proximity
    field_group_variant: Window After


  - dimension: hotword_rule__proximity__window_before
    type: number
    sql: ${TABLE}.hotword_rule.proximity.window_before
    group_label: Hotword Rule Proximity
    field_group_variant: Window Before


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Min Likelihood per Info Type"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__min_likelihood_per_info_type

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Info Type Name" in Explore.

  - dimension: info_type__name
    type: string
    sql: ${TABLE}.info_type.name
    group_label: Info Type
    field_group_variant: Name


  - dimension: info_type__sensitivity_score__score
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score
    group_label: Info Type Sensitivity Score
    field_group_variant: Score


  - dimension: info_type__version
    type: string
    sql: ${TABLE}.info_type.version
    group_label: Info Type
    field_group_variant: Version


  - dimension: min_likelihood
    type: string
    sql: ${TABLE}.min_likelihood


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Custom Info Types Dictionary Word List Words"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__dictionary__word_list__words

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dlpoutput Latest V1 Table Profile Config Snapshot Inspect Config Custom Info Types Dictionary Word List Words" in Explore.

  - dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__dictionary__word_list__words
    type: string
    sql: |
      `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__dictionary__word_list__words`


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Limits Max Findings per Info Type"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__limits__max_findings_per_info_type

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Info Type Name" in Explore.

  - dimension: info_type__name
    type: string
    sql: ${TABLE}.info_type.name
    group_label: Info Type
    field_group_variant: Name


  - dimension: info_type__sensitivity_score__score
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score
    group_label: Info Type Sensitivity Score
    field_group_variant: Score


  - dimension: info_type__version
    type: string
    sql: ${TABLE}.info_type.version
    group_label: Info Type
    field_group_variant: Version


  - dimension: max_findings
    type: number
    sql: ${TABLE}.max_findings


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_max_findings
    type: sum
    sql: ${max_findings}
  - measure: average_max_findings
    type: average
    sql: ${max_findings}

# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules Exclusion Rule Regex Group Indexes"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dlpoutput Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules Exclusion Rule Regex Group Indexes" in Explore.

  - dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes
    type: number
    sql: |
      `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes`


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes
    type: sum
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes}
  - measure: average_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes
    type: average
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes}

# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Data Profile Job Data Profile Actions"
- view: dlp-output_latest_v1__table_profile__config_snapshot__data_profile_job__data_profile_actions

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Export Data Profile Table Dataset ID" in Explore.

  - dimension: export_data__profile_table__dataset_id
    type: string
    sql: ${TABLE}.export_data.profile_table.dataset_id
    group_label: Export Data Profile Table
    field_group_variant: Dataset ID


  - dimension: export_data__profile_table__project_id
    type: string
    sql: ${TABLE}.export_data.profile_table.project_id
    group_label: Export Data Profile Table
    field_group_variant: Project ID


  - dimension: export_data__profile_table__table_id
    type: string
    sql: ${TABLE}.export_data.profile_table.table_id
    group_label: Export Data Profile Table
    field_group_variant: Table ID


  - dimension: pub_sub_notification__detail_of_message
    type: string
    sql: ${TABLE}.pub_sub_notification.detail_of_message
    group_label: Pub Sub Notification
    field_group_variant: Detail of Message


  - dimension: pub_sub_notification__event
    type: string
    sql: ${TABLE}.pub_sub_notification.event
    group_label: Pub Sub Notification
    field_group_variant: Event

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: pub_sub_notification__pubsub_condition__expressions__conditions
    hidden: yes
    sql: ${TABLE}.pub_sub_notification.pubsub_condition.expressions.conditions
    group_label: Pub Sub Notification Pubsub Condition Expressions
    field_group_variant: Conditions


  - dimension: pub_sub_notification__pubsub_condition__expressions__logical_operator
    type: string
    sql: ${TABLE}.pub_sub_notification.pubsub_condition.expressions.logical_operator
    group_label: Pub Sub Notification Pubsub Condition Expressions
    field_group_variant: Logical Operator


  - dimension: pub_sub_notification__topic
    type: string
    sql: ${TABLE}.pub_sub_notification.topic
    group_label: Pub Sub Notification
    field_group_variant: Topic


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules Hotword Rule Hotword Regex Group Indexes"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dlpoutput Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules Hotword Rule Hotword Regex Group Indexes" in Explore.

  - dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes
    type: number
    sql: |
      `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes`


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes
    type: sum
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes}
  - measure: average_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes
    type: average
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes}

# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules Exclusion Rule Dictionary Word List Words"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list__words

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dlpoutput Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules Exclusion Rule Dictionary Word List Words" in Explore.

  - dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list__words
    type: string
    sql: |
      `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list__words`


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules Exclusion Rule Exclude Info Types Info Types"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  - dimension: name
    type: string
    sql: ${TABLE}.name


  - dimension: sensitivity_score__score
    type: string
    sql: ${TABLE}.sensitivity_score.score
    group_label: Sensitivity Score
    field_group_variant: Score


  - dimension: version
    type: string
    sql: ${TABLE}.version


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Custom Info Types Detection Rules"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  - dimension: hotword_rule__hotword_regex__group_indexes
    hidden: yes
    sql: ${TABLE}.hotword_rule.hotword_regex.group_indexes
    group_label: Hotword Rule Hotword Regex
    field_group_variant: Group Indexes

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Hotword Rule Hotword Regex Pattern" in Explore.

  - dimension: hotword_rule__hotword_regex__pattern
    type: string
    sql: ${TABLE}.hotword_rule.hotword_regex.pattern
    group_label: Hotword Rule Hotword Regex
    field_group_variant: Pattern


  - dimension: hotword_rule__likelihood_adjustment__fixed_likelihood
    type: string
    sql: ${TABLE}.hotword_rule.likelihood_adjustment.fixed_likelihood
    group_label: Hotword Rule Likelihood Adjustment
    field_group_variant: Fixed Likelihood


  - dimension: hotword_rule__likelihood_adjustment__relative_likelihood
    type: number
    sql: ${TABLE}.hotword_rule.likelihood_adjustment.relative_likelihood
    group_label: Hotword Rule Likelihood Adjustment
    field_group_variant: Relative Likelihood


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_hotword_rule__likelihood_adjustment__relative_likelihood
    type: sum
    sql: ${hotword_rule__likelihood_adjustment__relative_likelihood}
  - measure: average_hotword_rule__likelihood_adjustment__relative_likelihood
    type: average
    sql: ${hotword_rule__likelihood_adjustment__relative_likelihood}

  - dimension: hotword_rule__proximity__window_after
    type: number
    sql: ${TABLE}.hotword_rule.proximity.window_after
    group_label: Hotword Rule Proximity
    field_group_variant: Window After


  - dimension: hotword_rule__proximity__window_before
    type: number
    sql: ${TABLE}.hotword_rule.proximity.window_before
    group_label: Hotword Rule Proximity
    field_group_variant: Window Before


# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Custom Info Types Detection Rules Hotword Rule Hotword Regex Group Indexes"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dlpoutput Latest V1 Table Profile Config Snapshot Inspect Config Custom Info Types Detection Rules Hotword Rule Hotword Regex Group Indexes" in Explore.

  - dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes
    type: number
    sql: |
      `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes`


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes
    type: sum
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes}
  - measure: average_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes
    type: average
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes}

# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules Exclusion Rule Exclude By Hotword Hotword Regex Group Indexes"
- view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dlpoutput Latest V1 Table Profile Config Snapshot Inspect Config Rule Set Rules Exclusion Rule Exclude By Hotword Hotword Regex Group Indexes" in Explore.

  - dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes
    type: number
    sql: |
      `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes`


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  - measure: total_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes
    type: sum
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes}
  - measure: average_dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes
    type: average
    sql: ${dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes}

# The name of this view in Looker is "Dlp-output Latest V1 Table Profile Config Snapshot Data Profile Job Data Profile Actions Pub Sub Notification Pubsub Condition Expressions Conditions"
- view: dlp-output_latest_v1__table_profile__config_snapshot__data_profile_job__data_profile_actions__pub_sub_notification__pubsub_condition__expressions__conditions

  fields:

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Minimum Risk Score" in Explore.

  - dimension: minimum_risk_score
    type: string
    sql: ${TABLE}.minimum_risk_score


  - dimension: minimum_sensitivity_score
    type: string
    sql: ${TABLE}.minimum_sensitivity_score

