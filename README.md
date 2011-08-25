ActiveCRM
=========

ActiveCRM (temporary name, probably) is a lightweight CRM based on [ActiveAdmin](https://github.com/gregbell/active_admin). Currently, it's a standalone Rails app, but I forsee refactoring it to be included as an engine into other projects. It can be extended by other engines using ActiveAdmin's configuration.

You might notice that there is some extra stuff in the Gemfile that doesn't belong (or work), for example the "gem 'activecrm_members'" that points to a local git repository. (I'll make that available soon as an example of extending ActiveCRM.) This is pretty quite in the development process, and things are still messy!

Thanks for reading, and caveat installor!