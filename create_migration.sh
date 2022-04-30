#!/bin/bash
touch $"db/migrate/"$(date "+%Y%m%d%H%M%S")$"_$1.rb" 
