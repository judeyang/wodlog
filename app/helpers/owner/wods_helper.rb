module Owner::WodsHelper

  def render_wod_status(wod)
   if wod.is_hidden
     content_tag(:span, "", :class => "fa fa-lock")
   else
     content_tag(:span, "", :class => "fa fa-globe")
   end
 end

end
