#need to update
connection: "mpv-som-ga-dhs-aw-looker-fed-mod"

# include all the views
include: "/explores/*"
include: "/dashboards/*.dashboard"

persist_with: default_datagroup

datagroup: default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
