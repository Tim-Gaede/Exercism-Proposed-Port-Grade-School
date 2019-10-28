using Test

include("grade_school.jl")

# Tests adapted from `problem-specifications//canonical-data.json` @ v1.0.0


println("\n"^2, "-"^60, "\n"^3)

@testset "Adding a student adds them to the sorted roster." begin
    school = School()
    add_student(school, "Aimee", 2)
    expected = ["Aimee"]
    @test roster(school) == expected
end
println()

@testset "Adding more student adds them to the sorted roster." begin
    school = School()
    add_student(school, "Blair", 2)
    add_student(school, "James", 2)
    add_student(school, "Paul", 2)
    expected = ["Blair", "James", "Paul"]
    @test roster(school) == expected
end
println()

@testset "Adding students to different grades give correct roster." begin

    school = School()
    add_student(school, "Chelsea", 3)
    add_student(school, "Logan", 7)
    expected = ["Chelsea", "Logan"]
    @test roster(school) == expected
end
println()

@testset "roster() returns an empty array if no students enrolled." begin
    school = School()
    expected = []
    @test roster(school) == expected
end
println()

@testset "Names with grades displayed in the same sorted roster." begin
    school = School()
    add_student(school, "Peter", 2)
    add_student(school, "Anna", 1)
    add_student(school, "Barb", 1)
    add_student(school, "Zoe", 2)
    add_student(school, "Alex", 2)
    add_student(school, "Jim", 3)
    add_student(school, "Charlie", 1)
    expected = ["Anna", "Barb", "Charlie", "Alex", "Peter", "Zoe", "Jim"]
    @test roster(school) == expected
end
println()

@testset "grade() returns students in grade in alphabetical order." begin
    school = School()
    add_student(school, "Franklin", 5)
    add_student(school, "Bradley", 5)
    add_student(school, "Jeff", 1)
    expected = ["Bradley", "Franklin"]
    @test grade(school, 5) == expected
end
println()

@testset "grade() returns empty array if no students in that grade." begin
    school = School()
    expected = []
    @test grade(school, 1) == expected
end
println()
