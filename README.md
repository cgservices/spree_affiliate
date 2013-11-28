# Spree Affiliate

Spree Affiliate adds affiliates to the Spree admin and adds it to the order


------------------------------------------------------------------------------
Installation
------------------------------------------------------------------------------

Install spree_affiliate by adding the following to your existing spree site's Gemfile:

## For spree 1-3-stable
```spree 1-3-stable
gem 'spree_affiliate', git: 'git@github.com:cgservices/spree_pages.git', branch: '1-3-stable'
```

## For spree 2-0-stable
```ruby
gem 'spree_affiliate', git: 'git@github.com:cgservices/spree_pages.git', branch: '2-0-stable'
```

Now bundle up:

```bash
bundle
```

Then run the generator which copies the migration template into your project:

```bash
rails g spree_affiliate:install
```

Migrate your database:

```bash
rake db:migrate
```

And boot up your server:

```bash
rails s
```