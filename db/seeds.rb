# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Создаем школы
school1 = School.create!(name: "Школа №6")
school2 = School.create!(name: "Школа №11")
school3 = School.create!(name: "Школа №21")

# Создаем классы для каждой школы
class_group_1_school_1 = school1.class_groups.create!(number: 1, letter: "A", students_count: 25)
class_group_2_school_1 = school1.class_groups.create!(number: 1, letter: "Б", students_count: 32)
class_group_1_school_2 = school2.class_groups.create!(number: 1, letter: "A", students_count: 27)
class_group_2_school_2 = school2.class_groups.create!(number: 1, letter: "Б", students_count: 28)
class_group_1_school_3 = school3.class_groups.create!(number: 1, letter: "A", students_count: 26)
class_group_2_school_3 = school3.class_groups.create!(number: 1, letter: "Б", students_count: 29)

# Создаем учеников для каждого класса
class_group_1_school_1.students.create!([
                                          { first_name: "Алексей", last_name: "Сочнев", surname: "Сергеевич" },
                                          { first_name: "Петр", last_name: "Петров", surname: "Петрович" },
                                          { first_name: "Мария", last_name: "Сидорова", surname: "Петровна" },
                                          { first_name: "Анна", last_name: "Иванова", surname: "Андреевна" }
                                        ])

class_group_2_school_1.students.create!([
                                          { first_name: "Вячеслав", last_name: "Мухобойников-Сыркин", surname: "Абдурахмангаджиевич" },
                                          { first_name: "Ольга", last_name: "Булкина", surname: "Олеговна" },
                                          { first_name: "Алексей", last_name: "Алексеев", surname: "Алексеевич" },
                                          { first_name: "Елена", last_name: "Еленова", surname: "Еленовна" }
                                        ])

class_group_1_school_2.students.create!([
                                          { first_name: "Дмитрий", last_name: "Дмитриев", surname: "Дмитриевич" },
                                          { first_name: "Наталья", last_name: "Натальева", surname: "Натальевна" },
                                          { first_name: "Артем", last_name: "Артемов", surname: "Артемович" },
                                          { first_name: "Виктория", last_name: "Викторова", surname: "Викторовна" }
                                        ])

class_group_2_school_2.students.create!([
                                          { first_name: "Григорий", last_name: "Григорьев", surname: "Григорьевич" },
                                          { first_name: "Евгения", last_name: "Евгеньева", surname: "Евгеньевна" },
                                          { first_name: "Степан", last_name: "Степанов", surname: "Степанович" },
                                          { first_name: "Юлия", last_name: "Юлиева", surname: "Юлиевна" }
                                        ])

class_group_1_school_3.students.create!([
                                          { first_name: "Антон", last_name: "Антонов", surname: "Антонович" },
                                          { first_name: "Светлана", last_name: "Светланова", surname: "Светлановна" },
                                          { first_name: "Игорь", last_name: "Игорев", surname: "Игоревич" },
                                          { first_name: "Валентина", last_name: "Валентинова", surname: "Валентиновна" }
                                        ])

class_group_2_school_3.students.create!([
                                          { first_name: "Николай", last_name: "Николаев", surname: "Николаевич" },
                                          { first_name: "Анастасия", last_name: "Анастасиева", surname: "Анастасиевна" },
                                          { first_name: "Роман", last_name: "Романов", surname: "Романович" },
                                          { first_name: "Дарья", last_name: "Дарьева", surname: "Дарьевна" }
                                        ])
