class GivingStudent

  def initialize(name, username, password, age, grade, language, country, city, school_name)
   @name=name
   @username=username
   @password=password
   @ago=age
   @grade=grade
   @language=language
   @country=country
   @time_zone=@country.getTimeZone
   @city=city
   @school_name=school_name
   @interests = [nil]
   @clubs = [nil]
   @current_classes = [nil]
   @buddy_usernames_by_class = {nil}
   @teacher_usernames_by_class = {nil}
   @completed_merit_classes = [nil]
  end

  def add_interest(interest)
    @interests.push(interest)
  end
  def add_club(club)
    @clubs.push(club)
  end
  def add_current_class(class)
    @current_classes.push(class)
  end
  def add_buddy(buddy_username, class)
    @buddy_usernames_by_class[:class] = ["#{@buddy_username}"]
  end
  def add_teacher(teacher_username, class)
    @buddy_usernames_by_class[:class] = ["#{@teacher_username}"]
  end
  def add_merit_class(class)
      @completed_merit_classes.push(class)
      @current_classes.delete(class)
  end

attr_accessor :name, :username, :password, :age, :grade, :country, :city, :school_name, :language
attr_reader :username

end
