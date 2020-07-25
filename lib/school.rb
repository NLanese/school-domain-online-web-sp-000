class School
  def initialize(input)
    @name = input
    @roster = {}
  end

  def roster
    return @roster
  end

#roster = {
# 9 => [ name name name name],
# 10 => [name name],
# 11 => [name name name name name],
# }


  def add_student(stuName, stuGrade)
    isNew = true
    @roster.each do | grades, students|
      if (stuGrade == grades)
        isNew = false
      end
    end
    if (isNew)
      @roster[stuGrade] = []
      @roster[stuGrade] << stuName
    else
      @roster[stuGrade] << stuName
    end
    return @roster[stuGrade]
  end

  def grade(val)
    rArray = []
    @roster.each do | grades, students|
      if (grades == val)
        @roster[grades].each do |student|
          rArray << student
        end
      end
    end
    return rArray
  end

  def sort
    rHash = {}
    allGrades = @roster.keys
    allGrades.each do | gradeVal |
      rHash[gradeVal] = []
    end
    rHash.each do | allGrades , stuArrays |
      @roster.each do | grades, students |
        if (allGrades == grades)
          @roster[grades].each do | studentName |
            rHash[allGrades] << studentName
          end
        end
      end
    end
    return rHash
    rHash.each do | allGrades , studentList|
      studentList.sort do |val1 , val2|
        if (val1 > val2)
          1
        end
      end
    end
    return rHash
  end

end
