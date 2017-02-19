#!/bin/bash

psql -U postgres -d postgres  -c "select * from information_schema.table_constraints where
table_name='work'" | grep '9 rows'
