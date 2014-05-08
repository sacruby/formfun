module ApplicationHelper
  def copyright(company=nil)
    ('<section class="copyright">' +
    ["Copyright © #{Time.zone.now.year}", company, "All Rights Reserved"].compact.join(", ") +
    '</section>').html_safe
  end
end
