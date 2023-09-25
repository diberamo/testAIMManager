# Define the database connection to be used for this model.
connection: "dbrm_argolis"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: dbrm_fitbit_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dbrm_fitbit_default_datagroup

include: "/lookml_dash/*.dashboard.lookml"

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Dbrm Fitbit"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.
# Each joined view also needs to define a primary key.


explore: fitbit_metrics {}
explore: sql_runner_query {}
explore: fitness_trends {}
explore: sql_runner_query_split {}
explore: ivan {}
#adicionando algo

#este cambio es el último al revertir no debería aparecer segundo intento
#explore: fitbit_metrics {

  #join: sql_runner_query_test {
    #type: left_outer
    #sql_on: ${fitbit_metrics.id} = ${fitbit_metrics.id} ;;
    #relationship: many_to_one

  #}
#}

####
