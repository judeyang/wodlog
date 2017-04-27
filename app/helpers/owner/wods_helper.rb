module Owner::WodsHelper

  def render_wod_status(wod)
   if wod.is_hidden
     "(Hidden)"
   else
     "(Public)"
   end
 end

end
