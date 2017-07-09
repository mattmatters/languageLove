# Attributes are specific metadata that only the containing module can access
# Attributes serve as replacement to consts for configuration and static
# constants
defmodule AttributeExample do
  @author "Matt Lewis"
  def getAuthor do
    "This module was written by #{@author}"
  end
end
