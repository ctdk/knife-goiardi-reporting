# Goiardi Knife Reporting

A knife plugin for use with OpsCode Chef's reporting system, forked to handle a
goiardi reporting extension and moved into the "goairdi" namespace to avoid
stepping on anyone else's toes.

## Commands
There are two basic commands `knife goiardi runs list` and `knife goiardi runs 
show`

`knife goiardi runs list` returns a listing of node runs by org or by node. To 
get a listing by org just use the basic command. To get a listing by node pass 
the optional node name parameter.

* `knife goiardi runs list` - returns a list of all runs within the organization
* `knife goiardi runs list bobsnode` - return a list of all runs on "bobsnode"

These commands default to returning the last 24 hours worth of data.

If more than 24 hours worth of data is desired, or if a different time frame
is desired, the --startime or -s option and --endtime or -e option can be given.
They specify a starting and ending time to returns runs from. They take an
argument in the date form of MM-DD-YYYY. If one of these options is specified
the other must also be specified.

The start and end time can be specified as a unix timestamp if the
--unixtimestamps or -u option is also specified.

Note that no more than three months worth of data can be requested at a time.
If more than three months of data is asked for an error will be returned.

User can also specify the number of rows that should be returned with
the result. This parameter is optional and defaults to 10.

If using this plugin with the goiardi chef server version 0.6.0 or above, there
is a --status option that may be used as well to limit the rows returned to runs
matching that status. Acceptable values are 'started', 'success', and 'failure'.

`knife goiardi runs show` has one  parameter run id. It will return that 
specific run details.

* `knife goiardi runs show bobsnode 30077269-59d0-4283-81f6-8d23cbed3a7a` - 
returns details about that specific node run.

## License

Copyright 2013-2014, Chef Software 

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

The status extension for goiardi is

Copyright 2014, Jeremy Bingham (<jbingham@gmail.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
