# Custom Redmine docker image

This docker image illustrates the docker build process by adding some plugins and themes to the official Redmine image. The components installed are:
- [Hide sidebar](https://gitlab.com/bdemirkir/sidebar_hide), a plugin to allow for more screen space, especially when writing issues
- [Paste clipboard](https://github.com/peclik/clipboard_image_paste), to attach screenshots pasting from the clipboard instead of selecting a file
- [A1](https://www.redmineup.com/pages/themes/a1) and [Gitmike](https://github.com/makotokw/redmine-theme-gitmike), two themes to change the UI look

You can find more details in the Dockerfile.
