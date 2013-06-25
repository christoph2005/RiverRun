function projectilePreCollision(self, event)
   if (event.contact and event.other and not event.other.isBeaver) then
      event.contact.isEnabled = false;
      else
      self:removeEventListener("preCollision",self)
   end
end