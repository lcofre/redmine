FROM redmine

RUN apt update && apt install -y git

# The gitmike theme can be retrieved from its project page
RUN git clone https://github.com/makotokw/redmine-theme-gitmike.git public/themes/gitmike

# This plugin allows to hide the sidebar. Especially useful when editing issues
RUN git clone https://gitlab.com/bdemirkir/sidebar_hide.git plugins/sidebar_hide

# And this one allows to attach an image pasting from the clipboard instead of selecting a file
RUN git clone https://github.com/RubyClickAP/clipboard_image_paste.git plugins/clipboard_image_paste \
    && apt install -y build-essential imagemagick libmagickcore-dev libmagickwand-dev ruby-dev \
    && gem install rmagick

# The A1 theme had to be downloaded from an email link so the theme files were added to this project directly
COPY a1 public/themes/a1
