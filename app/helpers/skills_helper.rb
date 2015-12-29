module SkillsHelper
  def skills_bullets(rating)
    final_html = ''
    rating_int = rating.to_i
    has_decimal = true if rating != rating_int
    blanks = 5 - rating_int
    blanks -= 1 if has_decimal
    final_html << '<span class="rating">'

    rating_int.times.each do
      final_html << '<i class="fa fa-circle"></i>'
    end

    final_html << '<i class="fa fa-adjust fa-rotate-180"></i>' if has_decimal

    blanks.times.each do
      final_html << '<i class="fa fa-circle-o"></i>'
    end

    final_html << '</span>'

    final_html.html_safe

  end
end