# datetime
### Steps followed:
- Add the following to the Gemfile:
```ruby
gem 'simple_form'
gem 'momentjs-rails', '>= 2.9.0',  :github => 'derekprior/momentjs-rails'
gem 'datetimepicker-rails', github: 'zpaulovics/datetimepicker-rails', branch: 'master', submodules: true
```
- Do bundle install and run the generator:
```rails
rails generate datetimepicker_rails:install
```
- Copy the following lines in application.js, it should look like this:
```ruby
//= require jquery
//= require jquery_ujs
//= require moment
//= require bootstrap-datetimepicker
//= require pickers
//= require turbolinks
//= require_tree .
```
- Copy the following lines in applicaiton.css, it should look like this:
```ruby
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
- Initialize the plugin, by specifying the date format:
```js
$('#datetimepicker1').datetimepicker({
    format: "DD-MM-YYYY" ,// I have only specified date, month and year as I do not want time selector in the widget
    // Use the same format to parse time in Rails before saving
    icons: {// add bootstrap icons
            time: 'glyphicon glyphicon-time',
            date: 'glyphicon glyphicon-calendar',
            up: 'glyphicon glyphicon-chevron-up',
            down: 'glyphicon glyphicon-chevron-down',
            previous: 'glyphicon glyphicon-chevron-left',
            next: 'glyphicon glyphicon-chevron-right',
            today: 'glyphicon glyphicon-screenshot',
            clear: 'glyphicon glyphicon-trash',
            close: 'glyphicon glyphicon-remove'
        }
        //or
     icons: {//or add fontawesome icons
        time: 'fa fa-clock',
        date: 'fa fa-calendar',
        up: 'fa fa-chevron-up',
        down: 'fa fa-chevron-down',
        previous: 'fa fa-chevron-left',
        next: 'fa fa-chevron-right',
        clear: 'fa fa-trash',
        close: 'fa fa-times'
    }
});
```
- Format the date in any format before saving:
```rails
<%= Date.strptime(@date,"%d-%m-%Y") %>
# Use the same date format used in javascript while initializing and then later change it to any format before saving
```