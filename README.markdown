# rails_form_backing_objects

[![Build Status](https://secure.travis-ci.org/mortice/rails_form_backing_objects.png)](http://travis-ci.org/mortice/rails_form_backing_objects)

## DESCRIPTION:

A dumb library with a crappy name. It lets you use non-persisted objects as the targets of Rails' form_for.
See [this article](http://pivotallabs.com/users/jdean/blog/articles/1706-form-backing-objects-for-fun-and-profit) for a description of the pattern.

I hacked this up for a project which may or may not still be using it, hence keeping it around, but [this stab at the problem](https://github.com/MSch/activemodel-form) is probably a better bet.

## SYNOPSIS:

    class YourBackingObject < RailsFormBackingObjects::Base
      attribute(:some_attribute) #will set up attr_accessor and do nothing else
      attribute(:some_attribute) do |value|
        #apply whatever conversions you need here
      end
    end

    # in your controller
    @form_backing_object = YourBackingObject.new
 
    # in your view...
    <%= form_for @your_backing_object do |f| %> #this just works

Oh also, it's for Ruby >= 1.9 only.

## INSTALL:

* gem install rails_form_backing_objects

## LICENSE:

(The MIT License)

Copyright (c) 2010-2011 Tom Stuart

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
