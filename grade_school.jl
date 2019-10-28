class School(object):
    def __init__(self):
        self.students_by_grade = [[],[],[],[],[],[],[],[],[],[],[],[]]

    def add_student(self, name, grade):
        self.students_by_grade[grade].append(name)
        self.students_by_grade[grade].sort()

    def roster(self):
        result = []
        for grade in self.students_by_grade:
            for student in grade:
                result.append(student)

        return result

    def grade(self, grade_number):
        return self.students_by_grade[grade_number]
