#DC Connect

##PROBLEM STATEMENT

DC doesn't have a master source of community resource directory information. Our 211 is out of date, and not interoperable with other info systems. It's hard for people in need to find health/human/social services that they are eligible for. Many attempts to build community resource directories have come and gone, as each struggles to produce and maintain the data. This data should be commonly available, and everyone would benefit from it being so -- but we first have to demonstrate the viability of standardized community resource data served in an open platform! 

###Project

1. **Prototype Completed** Create an API to serve DC's 211 data.
  + [DC API](https://github.com/codefordc/open211/tree/master/DC_API)
  + We used [Ohana's Design](http://ohanapi.org/) to build a DC prototype version
2. **Prototype Completed** Create a website that allows easy access to DC's 211 data
  + [DC-Connect](http://dcopen211website.herokuapp.com/)
  + [Website Code](https://github.com/noahpatterson/DCOpen211DCConnect)
  + We used [San Mateo County's design](http://www.smc-connect.org/)
3. **Data conversion script** We created a first-draft data conversion script from .csv to MongoDB json in ruby
  + [Ruby data conversion script](https://github.com/codefordc/open211/blob/master/DC_API/data/ckan_import.rb)
  
###More work
Recently at a Hack session in San Fransisco, a group of civic hackers used our data import script to modify and tweak versions for their data [SF Open Referral](https://github.com/sfbrigade/sf-openreferral-transform-scripts)


###Help
If your in DC, please join us and other civic hackers at [Code for DC](http://codefordc.org/)

Feel free to fork this project to improve or build your own!

Please submit an issue on either the [DC API](https://github.com/codefordc/open211/tree/master/DC_API) or [DC-Connect](http://dcopen211website.herokuapp.com/) if you find any problems

###Credit
Full credit goes to Greg Bloom for leading this version of the project, Ohana.org for their code, and many many other civic hackers!


###Ohana's Instructions

This is a Rails app built  by [Code for America's 2013 San Mateo County](http://codeforamerica.org/2013-partners/san-mateo-county/) fellowship team. We have acquired the Peninsula Library System's [Community Information Program](http://cip.plsinfo.org) — a dataset of community resources in San Mateo County — which we are making available via an [API](https://github.com/codeforamerica/ohana-api).

This app serves as an example of what can be built with that data, and is consuming our API. It is deployed at [http://smc-connect.org](http://smc-connect.org). The goal is to build an interface that makes it easy to find available services in San Mateo County, and to provide as much pertinent information as possible, such as travel directions, hours of operation, other services residents in need might be eligible for, etc.

We gladly welcome contributions. Below you will find instructions for installing the project and contributing.

## Installation
Please note that the instructions below have only been tested on OS X. If you are running another operating system and run into any issues, feel free to update this README, or open an issue if you are unable to resolve installation issues.

###Prerequisites

#### Git, Ruby 2.0.0+, Rails 3.2.13+ (+ Homebrew on OS X)
**OS X**: [Set up a dev environment on OS X with Homebrew, Git, RVM, Ruby, and Rails](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/)

**Windows**: Try [RailsInstaller](http://railsinstaller.org), along with some of these [tutorials](https://www.google.com/search?q=install+rails+on+windows) if you get stuck.

**Linux**:

* [RVM](http://rvm.io) is great, and this project uses it, but in any case, try to use the same ruby version as listed in the .ruby-version file. If you install it, it'll take care of making sure you have the right ruby, and let you focus on contributing to the app.
* You need a Javascript runtime. We recommend Node.JS (if you have a good reason not to use it, [there are other options](https://github.com/sstephenson/execjs)). On Ubuntu, it's as simple as <code>sudo apt-get install nodejs</code>. On others, [check the official instructions](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager).

#### PhantomJS
[Installation instructions](https://github.com/jonleighton/poltergeist#installing-phantomjs) for Mac, Linux, and Windows

### Clone the app on your local machine:

    git clone https://github.com/codeforamerica/human_services_finder.git
    cd human_services_finder

### Install the dependencies:

    bundle

### Run the app
Start the app locally using Unicorn:

    unicorn

Ohana SMC should now be running at [http://localhost:8080](http://localhost:8080)

### Test the app
To test locally, you can run tests with this simple command:

    rspec

To configure rspec output formatting (for example, to provide command line output in color), use the command from the command line `pico ./.rspec` while in the project root directory (or `pico ~/.rspec` to provide rspec configuration globally for all projects on your machine). Settings such as color highlighting and the output style can be set with:

    --color
    --format documentation

Options for the format configuration are `progress` (default - shows a series of dots), `documentation`, `html`, or `textmate`. [More information can be found on the rspec website](https://www.relishapp.com/rspec/rspec-core/v/2-0/docs/configuration/read-command-line-configuration-options-from-files).

For faster tests:

    gem install zeus
    zeus start #in a separate Terminal window or tab
    zeus rspec spec

To see the actual tests, browse through the [spec](https://github.com/codeforamerica/human_services_finder/tree/master/spec) directory.

## Development Details

* Ruby version 2.0.0
* Rails version 3.2.13
* Template Engines: ERB and HAML
* Testing Frameworks: RSpec, Capybara and PhantomJS (via Poltergeist gem), JasmineJS installed but not currently used (via Teaspoon gem)

## Contributing
In the spirit of open source software, **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by suggesting labels for our issues
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up
  inconsistent whitespace)
* by refactoring code
* by closing [issues](https://github.com/codeforamerica/human_services_finder/issues)
* by reviewing patches
* [financially](https://secure.codeforamerica.org/page/contribute)

## Submitting an Issue
We use the [GitHub issue tracker](https://github.com/codeforamerica/human_services_finder/issues) to track bugs and features. Before submitting a bug report or feature request, check to make sure it hasn't already been submitted. When submitting a bug report, please include a [Gist](https://gist.github.com/) that includes a stack trace and any details that may be necessary to reproduce the bug, including your gem version, Ruby version, and operating system. Ideally, a bug report should include a pull request with failing specs.

## Submitting a Pull Request
1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Add specs for your unimplemented feature or bug fix.
4. Run `rspec`. If your specs pass, return to step 3. In the spirit of Test-Driven Development, you want to write a failing test first, then implement the feature or bug fix to make the test pass.
5. Implement your feature or bug fix.
6. Run `rspec`. If your specs fail, return to step 5.
7. Run `metric_fu -r`. This will go through all the files in the app and analyze the code quality and check for things like trailing whitespaces and hard tabs. When it's done, it will open a page in your browser with the results. Click on `Cane` and `Rails Best Practices` to check for files containing trailing whitespaces and hard tabs. If you use Sublime Text 2, you can use the [TrailingSpaces](https://github.com/SublimeText/TrailingSpaces) plugin to highlight the trailing whitespaces and delete them. If the report complains about "hard tabs" in a file, change your indentation to `spaces` by clicking on `Tabs: 2` at the bottom of your Sublime Text 2 window, then selecting `Convert Indentation to Spaces`. As for the code itself, we try to follow [GitHub's Ruby styleguide](https://github.com/styleguide/ruby).
8. Add, commit, and push your changes.
9. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/

## Copyright
Copyright (c) 2013 Code for America. See [LICENSE](https://github.com/codeforamerica/human_services_finder/blob/master/LICENSE.md) for details.
