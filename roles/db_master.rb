...
all_env = [

  "role[base]",
  "recipe[yoursql]",
  "recipe[php]",
  "recipe[php::module_mysql]",
  "recipe[dbuser::default]"
]
...
