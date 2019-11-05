struct School
    students_by_grade::Array{Array{String,1},1}
    function School(students_by_grade = [[] for i = 1:12])
        new(students_by_grade)
    end
end


function add_student(school::School, name::String, grade::Int)
    push!(school.students_by_grade[grade], name)
    sort!(school.students_by_grade[grade])
end


function roster(school::School)
    result = []
    for grade ∈ school.students_by_grade
        for student ∈ grade
            push!(result, student)
        end
    end

    result
end


function grade(school::School, grade_number::Int)
    school.students_by_grade[grade_number]
end
