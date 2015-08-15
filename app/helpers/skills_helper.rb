module SkillsHelper
  def skills_bullets(rating)
    str = ''
    num = rating.to_i
    decimal = true if rating != num
    blanks = 5 - num
    blanks -= 1 if decimal
    str << '<span class="rating">'

    num.times.each do
      str << '<i class="fa fa-circle"></i>'
    end

    str << '<i class="fa fa-adjust fa-rotate-180"></i>' if decimal

    blanks.times.each do
      str << '<i class="fa fa-circle-o"></i>'
    end

    str << '</span>'

    str.html_safe

  end
end