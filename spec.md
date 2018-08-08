# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [ x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)

  Teacher has many courses.  Courses have many enrollments.  Students have many enrollments.

- [ x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)

  Course belongs to a teacher.  Grade belongs to an enrollment.

- [ x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)

  Student has many courses through enrollments.


- [ x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)

  enrollment.enrollment_date

- [ x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)

User: validates name presence, email, email uniqueness, password presence.
Course: validates name presence, name uniqueness with the scope of course and student.

- [ x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)

Course.fall_semester Course.winter_semester
- [ x] Include signup (how e.g. Devise)
  built it all from scratch.  used bcrypt.  It uses 2 separate sign-up controllers
- [ x] Include login (how e.g. Devise)
    built from scratch wiht bcrypt.

- [ x] Include logout (how e.g. Devise)
built from scratch wiht bcrypt.
- [ x] Include nested resource show or index (URL e.g. users/2/recipes)
  nested the index page for courses in profiles.
- [ x] Include nested resource "new" form (URL e.g.
recipes/1/ingredients)
  nested the new course form in profiles
- [ x] Include form display of validation errors (form URL e.g. /recipes/new)
  displays erros when logging in with invalid information or signing up with invalid information.  Also displays errors when trying to create a course without a name.

Confirm:
- [ x] The application is pretty DRY
- [ x] Limited logic in controllers
- [ x] Views use helper methods if appropriate
- [ x] Views use partials if appropriate
- [ x] Conforms to Nitro Ruby linting rules

If you've added any Bonus functionality to your application, please describe it below:
My application has two different user roles: Student and Teacher.  Each have different permissions.  Students can enroll in a course, and teachers can create courses and grade students.
