# datetime
### Steps followed:
- Add the following to the Gemfile:
```ruby
gem 'simple_form'
gem 'momentjs-rails', '>= 2.9.0',  :github => 'derekprior/momentjs-rails'
gem 'datetimepicker-rails', github: 'zpaulovics/datetimepicker-rails', branch: 'master', submodules: true
```
- Do bundle install and run the generator:
```
rails generate datetimepicker_rails:install
```
- Copy the following lines in application.js, it should look like this:
```
//= require jquery
//= require jquery_ujs
//= require moment
//= require bootstrap-datetimepicker
//= require pickers
//= require turbolinks
//= require_tree .
```
- Copy the following lines in applicaiton.css, it should look like this:
```
*= require_tree .
*= require bootstrap-datetimepicker.min
*= require_self
```		
- You can have the html as below:

```
<div class='input-group date' id='datetimepicker1'>
	<%= f.text_field :start_date ,as: :date_picker, :label => "When do you expect to finish?", class: 'form-control' %>
    <span class="input-group-addon">
        <span class="glyphicon glyphicon-calendar"></span>
    </span>
</div>
```