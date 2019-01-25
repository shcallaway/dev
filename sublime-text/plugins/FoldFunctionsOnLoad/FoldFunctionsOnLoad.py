# https://forum.sublimetext.com/t/fold-all-code-at-open-file/18421/9

import sublime, sublime_plugin

class EventListener( sublime_plugin.EventListener ):

  def on_load ( self, view ):

    view.run_command ( "fold_by_level", { "level": 2 } )
