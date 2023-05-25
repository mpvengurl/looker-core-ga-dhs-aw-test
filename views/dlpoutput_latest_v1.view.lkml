view: dlpoutput_latest_v1 {
  sql_table_name: `dialogflowagentlogs.dlp-output_latest_v1`
    ;;

  dimension: column_profile__column {
    type: string
    sql: ${TABLE}.column_profile.column ;;
    group_label: "Column Profile"
    group_item_label: "Column"
  }

  dimension: column_profile__column_info_type__estimated_prevalence {
    type: number
    sql: ${TABLE}.column_profile.column_info_type.estimated_prevalence ;;
    group_label: "Column Profile Column Info Type"
    group_item_label: "Estimated Prevalence"
  }

  dimension: column_profile__column_info_type__info_type__name {
    type: string
    sql: ${TABLE}.column_profile.column_info_type.info_type.name ;;
    group_label: "Column Profile Column Info Type Info Type"
    group_item_label: "Name"
  }

  dimension: column_profile__column_info_type__info_type__sensitivity_score__score {
    type: string
    sql: ${TABLE}.column_profile.column_info_type.info_type.sensitivity_score.score ;;
    group_label: "Column Profile Column Info Type Info Type Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: column_profile__column_info_type__info_type__version {
    type: string
    sql: ${TABLE}.column_profile.column_info_type.info_type.version ;;
    group_label: "Column Profile Column Info Type Info Type"
    group_item_label: "Version"
  }

  dimension: column_profile__column_type {
    type: string
    sql: ${TABLE}.column_profile.column_type ;;
    group_label: "Column Profile"
    group_item_label: "Column Type"
  }

  dimension: column_profile__data_risk_level__score {
    type: string
    sql: ${TABLE}.column_profile.data_risk_level.score ;;
    group_label: "Column Profile Data Risk Level"
    group_item_label: "Score"
  }

  dimension: column_profile__dataset_id {
    type: string
    sql: ${TABLE}.column_profile.dataset_id ;;
    group_label: "Column Profile"
    group_item_label: "Dataset ID"
  }

  dimension: column_profile__dataset_location {
    type: string
    sql: ${TABLE}.column_profile.dataset_location ;;
    group_label: "Column Profile"
    group_item_label: "Dataset Location"
  }

  dimension: column_profile__dataset_project_id {
    type: string
    sql: ${TABLE}.column_profile.dataset_project_id ;;
    group_label: "Column Profile"
    group_item_label: "Dataset Project ID"
  }

  dimension: column_profile__free_text_score {
    type: number
    sql: ${TABLE}.column_profile.free_text_score ;;
    group_label: "Column Profile"
    group_item_label: "Free Text Score"
  }

  dimension: column_profile__name {
    type: string
    sql: ${TABLE}.column_profile.name ;;
    group_label: "Column Profile"
    group_item_label: "Name"
  }

  dimension: column_profile__other_matches {
    hidden: yes
    sql: ${TABLE}.column_profile.other_matches ;;
    group_label: "Column Profile"
    group_item_label: "Other Matches"
  }

  dimension: column_profile__policy_state {
    type: string
    sql: ${TABLE}.column_profile.policy_state ;;
    group_label: "Column Profile"
    group_item_label: "Policy State"
  }

  dimension: column_profile__profile_last_generated__nanos {
    type: number
    sql: ${TABLE}.column_profile.profile_last_generated.nanos ;;
    group_label: "Column Profile Profile Last Generated"
    group_item_label: "Nanos"
  }

  dimension: column_profile__profile_last_generated__seconds {
    type: number
    sql: ${TABLE}.column_profile.profile_last_generated.seconds ;;
    group_label: "Column Profile Profile Last Generated"
    group_item_label: "Seconds"
  }

  dimension_group: column_profile__profile_last_generated__timestamp {
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
    sql: ${TABLE}.column_profile.profile_last_generated.timestamp ;;
  }

  dimension: column_profile__profile_status__status__code {
    type: number
    sql: ${TABLE}.column_profile.profile_status.status.code ;;
    group_label: "Column Profile Profile Status Status"
    group_item_label: "Code"
  }

  dimension: column_profile__profile_status__status__message {
    type: string
    sql: ${TABLE}.column_profile.profile_status.status.message ;;
    group_label: "Column Profile Profile Status Status"
    group_item_label: "Message"
  }

  dimension: column_profile__profile_status__timestamp__nanos {
    type: number
    sql: ${TABLE}.column_profile.profile_status.timestamp.nanos ;;
    group_label: "Column Profile Profile Status Timestamp"
    group_item_label: "Nanos"
  }

  dimension: column_profile__profile_status__timestamp__seconds {
    type: number
    sql: ${TABLE}.column_profile.profile_status.timestamp.seconds ;;
    group_label: "Column Profile Profile Status Timestamp"
    group_item_label: "Seconds"
  }

  dimension_group: column_profile__profile_status__timestamp__timestamp {
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
    sql: ${TABLE}.column_profile.profile_status.timestamp.timestamp ;;
  }

  dimension: column_profile__sensitivity_score__score {
    type: string
    sql: ${TABLE}.column_profile.sensitivity_score.score ;;
    group_label: "Column Profile Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: column_profile__table_data_profile {
    type: string
    sql: ${TABLE}.column_profile.table_data_profile ;;
    group_label: "Column Profile"
    group_item_label: "Table Data Profile"
  }

  dimension: column_profile__table_full_resource {
    type: string
    sql: ${TABLE}.column_profile.table_full_resource ;;
    group_label: "Column Profile"
    group_item_label: "Table Full Resource"
  }

  dimension: column_profile__table_id {
    type: string
    sql: ${TABLE}.column_profile.table_id ;;
    group_label: "Column Profile"
    group_item_label: "Table ID"
  }

  dimension: table_profile__config_snapshot__data_profile_job__data_profile_actions {
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.data_profile_actions ;;
    group_label: "Table Profile Config Snapshot Data Profile Job"
    group_item_label: "Data Profile Actions"
  }

  dimension: table_profile__config_snapshot__data_profile_job__inspect_templates {
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.inspect_templates ;;
    group_label: "Table Profile Config Snapshot Data Profile Job"
    group_item_label: "Inspect Templates"
  }

  dimension: table_profile__config_snapshot__data_profile_job__location__folder_id {
    type: number
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.location.folder_id ;;
    group_label: "Table Profile Config Snapshot Data Profile Job Location"
    group_item_label: "Folder ID"
  }

  dimension: table_profile__config_snapshot__data_profile_job__location__organization_id {
    type: number
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.location.organization_id ;;
    group_label: "Table Profile Config Snapshot Data Profile Job Location"
    group_item_label: "Organization ID"
  }

  dimension: table_profile__config_snapshot__data_profile_job__project_id {
    type: string
    sql: ${TABLE}.table_profile.config_snapshot.data_profile_job.project_id ;;
    group_label: "Table Profile Config Snapshot Data Profile Job"
    group_item_label: "Project ID"
  }

  dimension: table_profile__config_snapshot__inspect_config__content_options {
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.content_options ;;
    group_label: "Table Profile Config Snapshot Inspect Config"
    group_item_label: "Content Options"
  }

  dimension: table_profile__config_snapshot__inspect_config__custom_info_types {
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.custom_info_types ;;
    group_label: "Table Profile Config Snapshot Inspect Config"
    group_item_label: "Custom Info Types"
  }

  dimension: table_profile__config_snapshot__inspect_config__exclude_info_types {
    type: yesno
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.exclude_info_types ;;
    group_label: "Table Profile Config Snapshot Inspect Config"
    group_item_label: "Exclude Info Types"
  }

  dimension: table_profile__config_snapshot__inspect_config__include_quote {
    type: yesno
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.include_quote ;;
    group_label: "Table Profile Config Snapshot Inspect Config"
    group_item_label: "Include Quote"
  }

  dimension: table_profile__config_snapshot__inspect_config__info_types {
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.info_types ;;
    group_label: "Table Profile Config Snapshot Inspect Config"
    group_item_label: "Info Types"
  }

  dimension: table_profile__config_snapshot__inspect_config__limits__max_findings_per_info_type {
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.limits.max_findings_per_info_type ;;
    group_label: "Table Profile Config Snapshot Inspect Config Limits"
    group_item_label: "Max Findings per Info Type"
  }

  dimension: table_profile__config_snapshot__inspect_config__limits__max_findings_per_item {
    type: number
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.limits.max_findings_per_item ;;
    group_label: "Table Profile Config Snapshot Inspect Config Limits"
    group_item_label: "Max Findings per Item"
  }

  dimension: table_profile__config_snapshot__inspect_config__limits__max_findings_per_request {
    type: number
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.limits.max_findings_per_request ;;
    group_label: "Table Profile Config Snapshot Inspect Config Limits"
    group_item_label: "Max Findings per Request"
  }

  dimension: table_profile__config_snapshot__inspect_config__min_likelihood {
    type: string
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.min_likelihood ;;
    group_label: "Table Profile Config Snapshot Inspect Config"
    group_item_label: "Min Likelihood"
  }

  dimension: table_profile__config_snapshot__inspect_config__min_likelihood_per_info_type {
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.min_likelihood_per_info_type ;;
    group_label: "Table Profile Config Snapshot Inspect Config"
    group_item_label: "Min Likelihood per Info Type"
  }

  dimension: table_profile__config_snapshot__inspect_config__rule_set__info_types {
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.rule_set.info_types ;;
    group_label: "Table Profile Config Snapshot Inspect Config Rule Set"
    group_item_label: "Info Types"
  }

  dimension: table_profile__config_snapshot__inspect_config__rule_set__rules {
    hidden: yes
    sql: ${TABLE}.table_profile.config_snapshot.inspect_config.rule_set.rules ;;
    group_label: "Table Profile Config Snapshot Inspect Config Rule Set"
    group_item_label: "Rules"
  }

  dimension: table_profile__config_snapshot__trigger_name {
    type: string
    sql: ${TABLE}.table_profile.config_snapshot.trigger_name ;;
    group_label: "Table Profile Config Snapshot"
    group_item_label: "Trigger Name"
  }

  dimension: table_profile__data_risk_level__score {
    type: string
    sql: ${TABLE}.table_profile.data_risk_level.score ;;
    group_label: "Table Profile Data Risk Level"
    group_item_label: "Score"
  }

  dimension: table_profile__dataset_id {
    type: string
    sql: ${TABLE}.table_profile.dataset_id ;;
    group_label: "Table Profile"
    group_item_label: "Dataset ID"
  }

  dimension: table_profile__dataset_location {
    type: string
    sql: ${TABLE}.table_profile.dataset_location ;;
    group_label: "Table Profile"
    group_item_label: "Dataset Location"
  }

  dimension: table_profile__dataset_project_id {
    type: string
    sql: ${TABLE}.table_profile.dataset_project_id ;;
    group_label: "Table Profile"
    group_item_label: "Dataset Project ID"
  }

  dimension: table_profile__encryption_status {
    type: string
    sql: ${TABLE}.table_profile.encryption_status ;;
    group_label: "Table Profile"
    group_item_label: "Encryption Status"
  }

  dimension: table_profile__expiration_time__nanos {
    type: number
    sql: ${TABLE}.table_profile.expiration_time.nanos ;;
    group_label: "Table Profile Expiration Time"
    group_item_label: "Nanos"
  }

  dimension: table_profile__expiration_time__seconds {
    type: number
    sql: ${TABLE}.table_profile.expiration_time.seconds ;;
    group_label: "Table Profile Expiration Time"
    group_item_label: "Seconds"
  }

  dimension_group: table_profile__expiration_time__timestamp {
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
    sql: ${TABLE}.table_profile.expiration_time.timestamp ;;
  }

  dimension: table_profile__failed_column_count {
    type: number
    sql: ${TABLE}.table_profile.failed_column_count ;;
    group_label: "Table Profile"
    group_item_label: "Failed Column Count"
  }

  dimension: table_profile__full_resource {
    type: string
    sql: ${TABLE}.table_profile.full_resource ;;
    group_label: "Table Profile"
    group_item_label: "Full Resource"
  }

  dimension: table_profile__last_modified_time__nanos {
    type: number
    sql: ${TABLE}.table_profile.last_modified_time.nanos ;;
    group_label: "Table Profile Last Modified Time"
    group_item_label: "Nanos"
  }

  dimension: table_profile__last_modified_time__seconds {
    type: number
    sql: ${TABLE}.table_profile.last_modified_time.seconds ;;
    group_label: "Table Profile Last Modified Time"
    group_item_label: "Seconds"
  }

  dimension_group: table_profile__last_modified_time__timestamp {
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
    sql: ${TABLE}.table_profile.last_modified_time.timestamp ;;
  }

  dimension: table_profile__name {
    type: string
    sql: ${TABLE}.table_profile.name ;;
    group_label: "Table Profile"
    group_item_label: "Name"
  }

  dimension: table_profile__other_info_types {
    hidden: yes
    sql: ${TABLE}.table_profile.other_info_types ;;
    group_label: "Table Profile"
    group_item_label: "Other Info Types"
  }

  dimension: table_profile__predicted_info_types {
    hidden: yes
    sql: ${TABLE}.table_profile.predicted_info_types ;;
    group_label: "Table Profile"
    group_item_label: "Predicted Info Types"
  }

  dimension: table_profile__profile_last_generated__nanos {
    type: number
    sql: ${TABLE}.table_profile.profile_last_generated.nanos ;;
    group_label: "Table Profile Profile Last Generated"
    group_item_label: "Nanos"
  }

  dimension: table_profile__profile_last_generated__seconds {
    type: number
    sql: ${TABLE}.table_profile.profile_last_generated.seconds ;;
    group_label: "Table Profile Profile Last Generated"
    group_item_label: "Seconds"
  }

  dimension_group: table_profile__profile_last_generated__timestamp {
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
    sql: ${TABLE}.table_profile.profile_last_generated.timestamp ;;
  }

  dimension: table_profile__profile_status__status__code {
    type: number
    sql: ${TABLE}.table_profile.profile_status.status.code ;;
    group_label: "Table Profile Profile Status Status"
    group_item_label: "Code"
  }

  dimension: table_profile__profile_status__status__message {
    type: string
    sql: ${TABLE}.table_profile.profile_status.status.message ;;
    group_label: "Table Profile Profile Status Status"
    group_item_label: "Message"
  }

  dimension: table_profile__profile_status__timestamp__nanos {
    type: number
    sql: ${TABLE}.table_profile.profile_status.timestamp.nanos ;;
    group_label: "Table Profile Profile Status Timestamp"
    group_item_label: "Nanos"
  }

  dimension: table_profile__profile_status__timestamp__seconds {
    type: number
    sql: ${TABLE}.table_profile.profile_status.timestamp.seconds ;;
    group_label: "Table Profile Profile Status Timestamp"
    group_item_label: "Seconds"
  }

  dimension_group: table_profile__profile_status__timestamp__timestamp {
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
    sql: ${TABLE}.table_profile.profile_status.timestamp.timestamp ;;
  }

  dimension: table_profile__project_data_profile {
    type: string
    sql: ${TABLE}.table_profile.project_data_profile ;;
    group_label: "Table Profile"
    group_item_label: "Project Data Profile"
  }

  dimension: table_profile__resource_labels {
    hidden: yes
    sql: ${TABLE}.table_profile.resource_labels ;;
    group_label: "Table Profile"
    group_item_label: "Resource Labels"
  }

  dimension: table_profile__resource_visibility {
    type: string
    sql: ${TABLE}.table_profile.resource_visibility ;;
    group_label: "Table Profile"
    group_item_label: "Resource Visibility"
  }

  dimension: table_profile__row_count {
    type: number
    sql: ${TABLE}.table_profile.row_count ;;
    group_label: "Table Profile"
    group_item_label: "Row Count"
  }

  dimension: table_profile__scanned_column_count {
    type: number
    sql: ${TABLE}.table_profile.scanned_column_count ;;
    group_label: "Table Profile"
    group_item_label: "Scanned Column Count"
  }

  dimension: table_profile__sensitivity_score__score {
    type: string
    sql: ${TABLE}.table_profile.sensitivity_score.score ;;
    group_label: "Table Profile Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: table_profile__table_id {
    type: string
    sql: ${TABLE}.table_profile.table_id ;;
    group_label: "Table Profile"
    group_item_label: "Table ID"
  }

  dimension: table_profile__table_size_bytes {
    type: number
    sql: ${TABLE}.table_profile.table_size_bytes ;;
    group_label: "Table Profile"
    group_item_label: "Table Size Bytes"
  }

  measure: count {
    type: count
    drill_fields: [table_profile__name, column_profile__name, table_profile__config_snapshot__trigger_name, column_profile__column_info_type__info_type__name]
  }
}

view: dlp-output_latest_v1__table_profile__resource_labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: dlp-output_latest_v1__column_profile__other_matches {
  dimension: estimated_prevalence {
    type: number
    sql: ${TABLE}.estimated_prevalence ;;
  }

  dimension: excluded_from_analysis {
    type: yesno
    sql: ${TABLE}.excluded_from_analysis ;;
  }

  dimension: info_type__name {
    type: string
    sql: ${TABLE}.info_type.name ;;
    group_label: "Info Type"
    group_item_label: "Name"
  }

  dimension: info_type__sensitivity_score__score {
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score ;;
    group_label: "Info Type Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: info_type__version {
    type: string
    sql: ${TABLE}.info_type.version ;;
    group_label: "Info Type"
    group_item_label: "Version"
  }
}

view: dlp-output_latest_v1__table_profile__other_info_types {
  dimension: estimated_prevalence {
    type: number
    sql: ${TABLE}.estimated_prevalence ;;
  }

  dimension: excluded_from_analysis {
    type: yesno
    sql: ${TABLE}.excluded_from_analysis ;;
  }

  dimension: info_type__name {
    type: string
    sql: ${TABLE}.info_type.name ;;
    group_label: "Info Type"
    group_item_label: "Name"
  }

  dimension: info_type__sensitivity_score__score {
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score ;;
    group_label: "Info Type Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: info_type__version {
    type: string
    sql: ${TABLE}.info_type.version ;;
    group_label: "Info Type"
    group_item_label: "Version"
  }
}

view: dlp-output_latest_v1__table_profile__predicted_info_types {
  dimension: estimated_prevalence {
    type: number
    sql: ${TABLE}.estimated_prevalence ;;
  }

  dimension: info_type__name {
    type: string
    sql: ${TABLE}.info_type.name ;;
    group_label: "Info Type"
    group_item_label: "Name"
  }

  dimension: info_type__sensitivity_score__score {
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score ;;
    group_label: "Info Type Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: info_type__version {
    type: string
    sql: ${TABLE}.info_type.version ;;
    group_label: "Info Type"
    group_item_label: "Version"
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__info_types {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sensitivity_score__score {
    type: string
    sql: ${TABLE}.sensitivity_score.score ;;
    group_label: "Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__content_options {
  dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__content_options {
    type: string
    sql: `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__content_options`
      ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__data_profile_job__inspect_templates {
  dimension: dlpoutput_latest_v1__table_profile__config_snapshot__data_profile_job__inspect_templates {
    type: string
    sql: `dlp-output_latest_v1__table_profile__config_snapshot__data_profile_job__inspect_templates`
      ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__info_types {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sensitivity_score__score {
    type: string
    sql: ${TABLE}.sensitivity_score.score ;;
    group_label: "Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types {
  dimension: detection_rules {
    hidden: yes
    sql: ${TABLE}.detection_rules ;;
  }

  dimension: dictionary__big_query_column__field__name {
    type: string
    sql: ${TABLE}.dictionary.big_query_column.field.name ;;
    group_label: "Dictionary Big Query Column Field"
    group_item_label: "Name"
  }

  dimension: dictionary__big_query_column__table__dataset_id {
    type: string
    sql: ${TABLE}.dictionary.big_query_column.table.dataset_id ;;
    group_label: "Dictionary Big Query Column Table"
    group_item_label: "Dataset ID"
  }

  dimension: dictionary__big_query_column__table__project_id {
    type: string
    sql: ${TABLE}.dictionary.big_query_column.table.project_id ;;
    group_label: "Dictionary Big Query Column Table"
    group_item_label: "Project ID"
  }

  dimension: dictionary__big_query_column__table__table_id {
    type: string
    sql: ${TABLE}.dictionary.big_query_column.table.table_id ;;
    group_label: "Dictionary Big Query Column Table"
    group_item_label: "Table ID"
  }

  dimension: dictionary__cloud_storage_path__path {
    type: string
    sql: ${TABLE}.dictionary.cloud_storage_path.path ;;
    group_label: "Dictionary Cloud Storage Path"
    group_item_label: "Path"
  }

  dimension: dictionary__word_list__words {
    hidden: yes
    sql: ${TABLE}.dictionary.word_list.words ;;
    group_label: "Dictionary Word List"
    group_item_label: "Words"
  }

  dimension: exclusion_type {
    type: string
    sql: ${TABLE}.exclusion_type ;;
  }

  dimension: info_type__name {
    type: string
    sql: ${TABLE}.info_type.name ;;
    group_label: "Info Type"
    group_item_label: "Name"
  }

  dimension: info_type__sensitivity_score__score {
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score ;;
    group_label: "Info Type Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: info_type__version {
    type: string
    sql: ${TABLE}.info_type.version ;;
    group_label: "Info Type"
    group_item_label: "Version"
  }

  dimension: likelihood {
    type: string
    sql: ${TABLE}.likelihood ;;
  }

  dimension: regex__group_indexes {
    hidden: yes
    sql: ${TABLE}.regex.group_indexes ;;
    group_label: "Regex"
    group_item_label: "Group Indexes"
  }

  dimension: regex__pattern {
    type: string
    sql: ${TABLE}.regex.pattern ;;
    group_label: "Regex"
    group_item_label: "Pattern"
  }

  dimension: sensitivity_score__score {
    type: string
    sql: ${TABLE}.sensitivity_score.score ;;
    group_label: "Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: stored_type__create_time__nanos {
    type: number
    sql: ${TABLE}.stored_type.create_time.nanos ;;
    group_label: "Stored Type Create Time"
    group_item_label: "Nanos"
  }

  dimension: stored_type__create_time__seconds {
    type: number
    sql: ${TABLE}.stored_type.create_time.seconds ;;
    group_label: "Stored Type Create Time"
    group_item_label: "Seconds"
  }

  dimension_group: stored_type__create_time__timestamp {
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
    sql: ${TABLE}.stored_type.create_time.timestamp ;;
  }

  dimension: stored_type__name {
    type: string
    sql: ${TABLE}.stored_type.name ;;
    group_label: "Stored Type"
    group_item_label: "Name"
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes {
  dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes {
    type: number
    sql: `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__regex__group_indexes`
      ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules {
  dimension: exclusion_rule__dictionary__big_query_column__field__name {
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.big_query_column.field.name ;;
    group_label: "Exclusion Rule Dictionary Big Query Column Field"
    group_item_label: "Name"
  }

  dimension: exclusion_rule__dictionary__big_query_column__table__dataset_id {
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.big_query_column.table.dataset_id ;;
    group_label: "Exclusion Rule Dictionary Big Query Column Table"
    group_item_label: "Dataset ID"
  }

  dimension: exclusion_rule__dictionary__big_query_column__table__project_id {
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.big_query_column.table.project_id ;;
    group_label: "Exclusion Rule Dictionary Big Query Column Table"
    group_item_label: "Project ID"
  }

  dimension: exclusion_rule__dictionary__big_query_column__table__table_id {
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.big_query_column.table.table_id ;;
    group_label: "Exclusion Rule Dictionary Big Query Column Table"
    group_item_label: "Table ID"
  }

  dimension: exclusion_rule__dictionary__cloud_storage_path__path {
    type: string
    sql: ${TABLE}.exclusion_rule.dictionary.cloud_storage_path.path ;;
    group_label: "Exclusion Rule Dictionary Cloud Storage Path"
    group_item_label: "Path"
  }

  dimension: exclusion_rule__dictionary__word_list__words {
    hidden: yes
    sql: ${TABLE}.exclusion_rule.dictionary.word_list.words ;;
    group_label: "Exclusion Rule Dictionary Word List"
    group_item_label: "Words"
  }

  dimension: exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes {
    hidden: yes
    sql: ${TABLE}.exclusion_rule.exclude_by_hotword.hotword_regex.group_indexes ;;
    group_label: "Exclusion Rule Exclude By Hotword Hotword Regex"
    group_item_label: "Group Indexes"
  }

  dimension: exclusion_rule__exclude_by_hotword__hotword_regex__pattern {
    type: string
    sql: ${TABLE}.exclusion_rule.exclude_by_hotword.hotword_regex.pattern ;;
    group_label: "Exclusion Rule Exclude By Hotword Hotword Regex"
    group_item_label: "Pattern"
  }

  dimension: exclusion_rule__exclude_by_hotword__proximity__window_after {
    type: number
    sql: ${TABLE}.exclusion_rule.exclude_by_hotword.proximity.window_after ;;
    group_label: "Exclusion Rule Exclude By Hotword Proximity"
    group_item_label: "Window After"
  }

  dimension: exclusion_rule__exclude_by_hotword__proximity__window_before {
    type: number
    sql: ${TABLE}.exclusion_rule.exclude_by_hotword.proximity.window_before ;;
    group_label: "Exclusion Rule Exclude By Hotword Proximity"
    group_item_label: "Window Before"
  }

  dimension: exclusion_rule__exclude_info_types__info_types {
    hidden: yes
    sql: ${TABLE}.exclusion_rule.exclude_info_types.info_types ;;
    group_label: "Exclusion Rule Exclude Info Types"
    group_item_label: "Info Types"
  }

  dimension: exclusion_rule__matching_type {
    type: string
    sql: ${TABLE}.exclusion_rule.matching_type ;;
    group_label: "Exclusion Rule"
    group_item_label: "Matching Type"
  }

  dimension: exclusion_rule__regex__group_indexes {
    hidden: yes
    sql: ${TABLE}.exclusion_rule.regex.group_indexes ;;
    group_label: "Exclusion Rule Regex"
    group_item_label: "Group Indexes"
  }

  dimension: exclusion_rule__regex__pattern {
    type: string
    sql: ${TABLE}.exclusion_rule.regex.pattern ;;
    group_label: "Exclusion Rule Regex"
    group_item_label: "Pattern"
  }

  dimension: hotword_rule__hotword_regex__group_indexes {
    hidden: yes
    sql: ${TABLE}.hotword_rule.hotword_regex.group_indexes ;;
    group_label: "Hotword Rule Hotword Regex"
    group_item_label: "Group Indexes"
  }

  dimension: hotword_rule__hotword_regex__pattern {
    type: string
    sql: ${TABLE}.hotword_rule.hotword_regex.pattern ;;
    group_label: "Hotword Rule Hotword Regex"
    group_item_label: "Pattern"
  }

  dimension: hotword_rule__likelihood_adjustment__fixed_likelihood {
    type: string
    sql: ${TABLE}.hotword_rule.likelihood_adjustment.fixed_likelihood ;;
    group_label: "Hotword Rule Likelihood Adjustment"
    group_item_label: "Fixed Likelihood"
  }

  dimension: hotword_rule__likelihood_adjustment__relative_likelihood {
    type: number
    sql: ${TABLE}.hotword_rule.likelihood_adjustment.relative_likelihood ;;
    group_label: "Hotword Rule Likelihood Adjustment"
    group_item_label: "Relative Likelihood"
  }

  dimension: hotword_rule__proximity__window_after {
    type: number
    sql: ${TABLE}.hotword_rule.proximity.window_after ;;
    group_label: "Hotword Rule Proximity"
    group_item_label: "Window After"
  }

  dimension: hotword_rule__proximity__window_before {
    type: number
    sql: ${TABLE}.hotword_rule.proximity.window_before ;;
    group_label: "Hotword Rule Proximity"
    group_item_label: "Window Before"
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__min_likelihood_per_info_type {
  dimension: info_type__name {
    type: string
    sql: ${TABLE}.info_type.name ;;
    group_label: "Info Type"
    group_item_label: "Name"
  }

  dimension: info_type__sensitivity_score__score {
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score ;;
    group_label: "Info Type Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: info_type__version {
    type: string
    sql: ${TABLE}.info_type.version ;;
    group_label: "Info Type"
    group_item_label: "Version"
  }

  dimension: min_likelihood {
    type: string
    sql: ${TABLE}.min_likelihood ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__dictionary__word_list__words {
  dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__dictionary__word_list__words {
    type: string
    sql: `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__dictionary__word_list__words`
      ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__limits__max_findings_per_info_type {
  dimension: info_type__name {
    type: string
    sql: ${TABLE}.info_type.name ;;
    group_label: "Info Type"
    group_item_label: "Name"
  }

  dimension: info_type__sensitivity_score__score {
    type: string
    sql: ${TABLE}.info_type.sensitivity_score.score ;;
    group_label: "Info Type Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: info_type__version {
    type: string
    sql: ${TABLE}.info_type.version ;;
    group_label: "Info Type"
    group_item_label: "Version"
  }

  dimension: max_findings {
    type: number
    sql: ${TABLE}.max_findings ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes {
  dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes {
    type: number
    sql: `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__regex__group_indexes`
      ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__data_profile_job__data_profile_actions {
  dimension: export_data__profile_table__dataset_id {
    type: string
    sql: ${TABLE}.export_data.profile_table.dataset_id ;;
    group_label: "Export Data Profile Table"
    group_item_label: "Dataset ID"
  }

  dimension: export_data__profile_table__project_id {
    type: string
    sql: ${TABLE}.export_data.profile_table.project_id ;;
    group_label: "Export Data Profile Table"
    group_item_label: "Project ID"
  }

  dimension: export_data__profile_table__table_id {
    type: string
    sql: ${TABLE}.export_data.profile_table.table_id ;;
    group_label: "Export Data Profile Table"
    group_item_label: "Table ID"
  }

  dimension: pub_sub_notification__detail_of_message {
    type: string
    sql: ${TABLE}.pub_sub_notification.detail_of_message ;;
    group_label: "Pub Sub Notification"
    group_item_label: "Detail of Message"
  }

  dimension: pub_sub_notification__event {
    type: string
    sql: ${TABLE}.pub_sub_notification.event ;;
    group_label: "Pub Sub Notification"
    group_item_label: "Event"
  }

  dimension: pub_sub_notification__pubsub_condition__expressions__conditions {
    hidden: yes
    sql: ${TABLE}.pub_sub_notification.pubsub_condition.expressions.conditions ;;
    group_label: "Pub Sub Notification Pubsub Condition Expressions"
    group_item_label: "Conditions"
  }

  dimension: pub_sub_notification__pubsub_condition__expressions__logical_operator {
    type: string
    sql: ${TABLE}.pub_sub_notification.pubsub_condition.expressions.logical_operator ;;
    group_label: "Pub Sub Notification Pubsub Condition Expressions"
    group_item_label: "Logical Operator"
  }

  dimension: pub_sub_notification__topic {
    type: string
    sql: ${TABLE}.pub_sub_notification.topic ;;
    group_label: "Pub Sub Notification"
    group_item_label: "Topic"
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes {
  dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes {
    type: number
    sql: `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__hotword_rule__hotword_regex__group_indexes`
      ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list__words {
  dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list__words {
    type: string
    sql: `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list__words`
      ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sensitivity_score__score {
    type: string
    sql: ${TABLE}.sensitivity_score.score ;;
    group_label: "Sensitivity Score"
    group_item_label: "Score"
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules {
  dimension: hotword_rule__hotword_regex__group_indexes {
    hidden: yes
    sql: ${TABLE}.hotword_rule.hotword_regex.group_indexes ;;
    group_label: "Hotword Rule Hotword Regex"
    group_item_label: "Group Indexes"
  }

  dimension: hotword_rule__hotword_regex__pattern {
    type: string
    sql: ${TABLE}.hotword_rule.hotword_regex.pattern ;;
    group_label: "Hotword Rule Hotword Regex"
    group_item_label: "Pattern"
  }

  dimension: hotword_rule__likelihood_adjustment__fixed_likelihood {
    type: string
    sql: ${TABLE}.hotword_rule.likelihood_adjustment.fixed_likelihood ;;
    group_label: "Hotword Rule Likelihood Adjustment"
    group_item_label: "Fixed Likelihood"
  }

  dimension: hotword_rule__likelihood_adjustment__relative_likelihood {
    type: number
    sql: ${TABLE}.hotword_rule.likelihood_adjustment.relative_likelihood ;;
    group_label: "Hotword Rule Likelihood Adjustment"
    group_item_label: "Relative Likelihood"
  }

  dimension: hotword_rule__proximity__window_after {
    type: number
    sql: ${TABLE}.hotword_rule.proximity.window_after ;;
    group_label: "Hotword Rule Proximity"
    group_item_label: "Window After"
  }

  dimension: hotword_rule__proximity__window_before {
    type: number
    sql: ${TABLE}.hotword_rule.proximity.window_before ;;
    group_label: "Hotword Rule Proximity"
    group_item_label: "Window Before"
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes {
  dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes {
    type: number
    sql: `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__custom_info_types__detection_rules__hotword_rule__hotword_regex__group_indexes`
      ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes {
  dimension: dlpoutput_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes {
    type: number
    sql: `dlp-output_latest_v1__table_profile__config_snapshot__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex__group_indexes`
      ;;
  }
}

view: dlp-output_latest_v1__table_profile__config_snapshot__data_profile_job__data_profile_actions__pub_sub_notification__pubsub_condition__expressions__conditions {
  dimension: minimum_risk_score {
    type: string
    sql: ${TABLE}.minimum_risk_score ;;
  }

  dimension: minimum_sensitivity_score {
    type: string
    sql: ${TABLE}.minimum_sensitivity_score ;;
  }
}
