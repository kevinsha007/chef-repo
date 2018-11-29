name 'web'
description 'Web server'
run_list "recipe [apt]"."recipe [chef-client]","recipe [ntp]"
default_attributes 'ntp' => {
	'attribute1' => 'Hello from attribute 1',
	'attribute2' => 'hello from attribute 2'
}