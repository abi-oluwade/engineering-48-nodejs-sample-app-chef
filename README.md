# nodejsapp

## Task
Task make a new cookbook that installs:

Nodejs Node Sample app
Definition of done
It should have the following definition of done:

be on Github
be a new cookbook
have integration and unit tests
Minimum documentation as MD file
All test passing
Should be working on port 80
we should be able to run the tests locally
we should be able to run the tests on AWS


psedocode
- construct recipe:
  - have recipe install nodejs in virtual machine
  - have recipe install nginx in virtual machine
  - have recipe transfer app folder to virtual machine
  - have recipe navigate to app folder and execute npm install and npm start
-have app running locally


## node_sample with Nginx Cookbook :banana: :taco:

This is our first cookbook.

Chef commands
- chef generate cookbook <name_cookbook>
- chef generate template <name_file.conf>

kitchen commands


Topic covered:

- file and folderstructure
- spec folder -> default_spec.rb
- test folder -> default_test.rb
- kitchen.yml
- recipe -> default.rb
- writting recipes and using resources
  - package
  - service
  - include Recipe
  - template
  - link
- Metadata file
- Using Supermarket


- Interpolation in ruby
  - ice cream cones <% %>
  - to print/generate out use ice cream cones with an = sign
    - <%= %>
