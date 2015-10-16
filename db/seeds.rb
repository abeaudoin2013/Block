# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Prompt.create(setup: 'Write about your favourite word...')
Prompt.create(setup: 'A kid comes out of the school bathroom with toilet paper dangling from his or her waistband.')
Prompt.create(setup: 'You’re late for work because you overslept, but your boss hates over-sleepers. He does love entertaining stories, so create the most outlandish excuse as to why you were late.')