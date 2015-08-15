module SkillsHelper
  def skills_bullets(num)
    str = ''
    blanks = 5 - num
    str << '<span class="rating">'

    num.times.each do |n|
      str << '<i class="fa fa-circle"></i>'
    end

    blanks.times.each do |n|
      str << '<i class="fa fa-circle-o"></i>'
    end

    str << '</span>'

    str.html_safe

  end
end